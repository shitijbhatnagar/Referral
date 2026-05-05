'Referral Service'

The intention of this simple Spring Boot application is to demonstrate a very simple use case - use MapStruct and MyBatis framework with PostgreSQL

The service allows creation and retrieval of a Referral. A referral can be created by supplying a given name value (JSON request) to the service, as guided in the file src/env/Steps.

There 04 usable Spring profiles:
- local: uses H2 database (this is the default profile)
- dev: uses PostgreSQL database (on localhost)
- dockerize: uses PostgreSQL database (on Docker container)
- kube: to be used when service is deployed on GKE and talks to CLoud SQL PostgreSQL instance

Note:
If the application is being deployed on GKE, then for the database setups, the following SQL scipts need to be run:
- bootstrap-cloudsql-objects.sql
- bootstrap-cloudsql-perms.sql (modify the right IAM user id in the script before running)