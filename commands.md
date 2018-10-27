### github git config

```
git config --global user.name "isoppp"
git config --global user.email "prog@d2deck.com"
```

```
git config user.name "isoppp"
git config user.email "prog@d2deck.com"
```

### replace already commited name and email

```
git filter-branch -f --env-filter "GIT_AUTHOR_NAME='isoppp'; GIT_AUTHOR_EMAIL='prog@d2deck.com'; GIT_COMMITTER_NAME='isoppp'; GIT_COMMITTER_EMAIL='prog@d2deck.com';" HEAD 
git config --local user.name isoppp
git config --local user.email prog@d2deck.com
```