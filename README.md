# Overtime App

## Key requirement : document salaried employees' OT

## Models
    X Post -> date:date rationale:text
    X User -> Devise
    X AdminUser -> STI from User on 'type' field
    - Sorting 
    
## Features
    - Approval workflow
    - SMS Sending -> link to approval or overtime input
    - Administrate admin dashboard
    - Email summary to managers for approval
    - Needs to be documented if employee did not log the OT

## UI:
    - Bootstrap -> formatting
    - Add full_name for users
    - Warning notice for deletes