# Overtime App
# Updated : 18-Sept
## Key requirement : document salaried employees' OT

## Models
    X Post -> date:date rationale:text
    X User -> Devise
    X AdminUser -> STI from User on 'type' field
    - Sorting 
    X Create post status 
        X ensure status is required
        X should have a default value 
        X implement 'locking'
        X time stamp status change 
    X auditlog
    
## Features
    X Block non-admin & guest users (Administrate)
        - fine tune search approach
    - Approval workflow
        - implement approval stages
    - SMS Sending -> link to approval or overtime input
    X Administrate admin dashboard
    - Email summary to managers for approval
    - Needs to be documented if employee did not log the OT
    - Notify posters of change of status

## UI:
    x Bootstrap -> form formatting
    X Icons from Awesome
    X Add full_name for users
    X Warning notice for deletes
   
 
## Refactoring
    - scope of admin_types is hacked in for now. Need to do it properly
