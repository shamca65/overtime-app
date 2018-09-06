# Overtime App

## Key requirement : document salaried employees' OT

## Models
    X Post -> date:date rationale:text
    X User -> Devise
    X AdminUser -> STI from User on 'type' field
    - Sorting 
    - Create post status 
        - ensure status is required
        - should have a default value 
        - implement locking
        - time stamp status change 
    - auditlog
    
## Features
    X Block non-admin & guest users (Administrate)
        - fine tune search approach
    - Approval workflow
        - implement approval stages
    - SMS Sending -> link to approval or overtime input
    - Administrate admin dashboard
    - Email summary to managers for approval
    - Needs to be documented if employee did not log the OT
    - Notify posters of change of status
    - 

## UI:
    x Bootstrap -> form formatting
    - Icons from Awesome
    X Add full_name for users
    X Warning notice for deletes
   
 
## Refactoring
    - Refactor user association integration test in post_spec
    - Refactor forms for admin user with status