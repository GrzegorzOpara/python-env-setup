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
* push changes to remote branch
    ```
    git push
    ```
