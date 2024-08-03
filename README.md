# Diffi

## Terraform Plan Datasource:
1. S3

## Diffi Application Database:
Options: 
1. S3 - Using object versions 
    a. No need of another database. 
    b. Fetch all versions of plan file and compute diff.
    c. How to add branch/commit related data to object metadata directly using terraform cli? Write wrapper cli?
2. Postgres
    a. Store terraform plan as json along with metadata like git branch/commit id.
    b. Overhead of maintaining a database but works with any datasource (AWS, Azure, etc).
