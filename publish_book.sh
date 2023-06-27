conda activate
conda activate jupyterbook
jupyter-book build --all .
git add .
git status
git commit -m "Commited changes to Github-Pages"
git push
ghp-import -n -p -f _build/html