# Overtime App

## Key requirement : document salaried employees' OT

## Models
    - Post -> date:date rationale:text
    - User -> Devise
    - AdminUser -> STI from User on 'type' field 
    
## Features
    - Approval workflow
    - SMS Sending -> link to approval or overtime input
    - Administrate admin dashboard
    - Email summary to managers for approval
    - Needs to be documented if employee did not log the OT

## UI:
    - Bootstrap -> formatting
