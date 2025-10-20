public with sharing class ExpenseController {
    @AuraEnabled(cacheable=true)
    public static List<Expense__c> getExpenses() {
        return [SELECT Id, Name, Amount__c, Category__c, Date__c FROM Expense__c ORDER BY Date__c DESC];
    }

    @AuraEnabled
    public static Expense__c addExpense(String name, Decimal amount, String category) {
        Expense__c exp = new Expense__c(
            Name = name,
            Amount__c = amount,
            Category__c = category,
            Date__c = System.today()
        );
        insert exp;
        return exp;
    }
}
