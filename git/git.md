# Git
* `Git` [[git-scm.com]](https://git-scm.com/downloads/win)
* `终端预览`
    ```
    git config --global user.name "antidote02"
    ```
    ```
    git config --global user.email "a1729304580@gmail.com"
    ```
    ```
    git config --global http.proxy http://localhost:7897
    ```
    ```
    git config --global https.proxy https://localhost:7897
    ```
* `Clear History`
    ```
    git checkout --orphan temp_branch

    git add -A

    git commit -m "2025-11-13 12:05:29"

    git branch -D main

    git branch -m main
    
    git push -f origin main