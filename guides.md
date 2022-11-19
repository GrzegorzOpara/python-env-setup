# Guides
## django
### project structure
https://techvidvan.com/tutorials/django-project-structure-layout/
### creating app in project
https://www.geeksforgeeks.org/how-to-create-an-app-in-django/
### connect django to azure mssql database
https://learn.microsoft.com/en-us/samples/azure-samples/azure-sql-db-django/azure-sql-db-django/
### connect djanogo to mysql
1. Install mysql
https://computingforgeeks.com/how-to-install-mysql-8-on-ubuntu/

    if you get: *Failed! Error: SET PASSWORD has no significance for user 'root'@'localhost* during mysql_secure_installation step, follow this [link](https://www.nixcraft.com/t/mysql-failed-error-set-password-has-no-significance-for-user-root-localhost-as-the-authentication-method-used-doesnt-store-authentication-data-in-the-mysql-server-please-consider-using-alter-user/4233):

2. install mysql-config 
```
sudo apt-get install libmysqlclient-dev
```
3. Install mysqlclient
```
pip install mysqlclient
```
