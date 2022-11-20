# Starting project in django and basic configuration
Basic configuraton: secrets handling + mysql database on backend side

### Create and clone git repository
### Create environement and activate it
```
python3 -m venv .venv
source .venv/bin/activate
```
### Navigate to the root folder of repsitory and install django
```
sudo apt install python3-django
```
### Create django project
```
django-admin startproject <project-name> .
```
### Create django application
```bash
cd <project-name>
python3 manage.py startapp <application_name>
```
### Register new app in settings.py file
Add new line with <application_name> to INSTALLED_APPS container.

### Create .gitignore using python template and ensure .env is listed there
### Create .env file and move secrets from setting.py there
 - install dot-env and add it to the requirements.txt file
    ```bash
    pip install python-dotenv
    ```
 - settings.py file add:
    ```python
    import os
    from dotenv import load_dotenv
    load_dotenv()
    ```
 - change secret to a reference to environment variable, for instance:
    ```python
    SECRET_KEY = os.getenv('SECRET_KEY')
    ```
### Install django and add it to the requirements.txt
```bash
pip install django
```
### Install mysql
    - create database for project purposes
    - create dedictaed user with DML / DDL permissions
    - update .env file with follwoing:
    ```python
    DB_SERVER=localhost
    DB_NAME=<db_name>
    DB_USER=<db_user>
    DB_PASSWORD='<db_user_password>'
    ```
    - in settings file adjust DATABASES configuration:
    ```python
    DATABASES = {
        'default': {  
            'ENGINE': 'django.db.backends.mysql',  
            'NAME': os.getenv("DB_NAME"),
            'USER': os.getenv("DB_USER"),
            'PASSWORD': os.getenv("DB_PASSWORD"),
            'HOST': os.getenv("DB_SERVER"),
            'PORT': '3306',  
            'OPTIONS': {  
                'init_command': "SET sql_mode='STRICT_TRANS_TABLES'"  
            }  
        }
    }
    ```
    - install mysql client add it to the requirements.txt
    ```bash
    pip install mysqlclient
    ```
### Make database migrations
```bash
python3 manage.py makemigrations
python3 manage.py migrate

```
### Validate id the server is running fine, start the server:
```bash
python3 manage.py runserver
```
and navigate to: http://127.0.0.1:8000/

### Commit changes to repo

