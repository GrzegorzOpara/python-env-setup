# GIT
## basic git commands

* stage changes
    ```
    git add .
    ```
* commit changes with date and comment
    ```
    GIT_AUTHOR_DATE=$(date -d'2023-02-03 18:21:15') 
    GIT_COMMITTER_DATE="$GIT_AUTHOR_DATE"
    git commit --date "$GIT_AUTHOR_DATE" -m "commit message"
    ```
    
    The bash script can be found [here](https://github.com/GrzegorzOpara/python-env-setup/blob/main/scripts/git_commit_past.sh).

* push changes to remote branch
    ```
    git push
    ```
