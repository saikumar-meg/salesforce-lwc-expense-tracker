# 💰 Salesforce Expense Tracker (LWC + Apex)

Simple LWC + Apex app to add and list expenses (`Expense__c`) in Salesforce.

## Structure
apex/ExpenseController.cls  
lwc/expenseTracker/*

## Deploy
- Authenticate: `sfdx auth:web:login`
- Deploy: `sfdx force:source:deploy -p force-app/main/default` (or your src path)
- Add `expenseTracker` to an App or Record page via App Builder
