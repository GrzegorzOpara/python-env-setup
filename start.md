1. Create git repository
2. Clone git repository
3. Navigate to the root folder of reppsitory and install django
```
sudo apt install python3-django
```
4. Create django project
```
django-admin startproject <project-name> .
```
5. Create django application
```
python3 manage.py startapp black_jack_be
```
6. Create environement and activate it
```
python3 -m venv .venv
source .venv/bin/activate
```
7. Create .gitignore using python template and ensure .env is listed there
8. Create .env file and move secrets from setting.py there
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
9. Install django and add it to the requirements.txt
```bash
pip install django
```
10. Install mysql
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

