conda activate
conda activate jupyterbook
jupyter nbconvert --to html --TagRemovePreprocessor.remove_cell_tags='{"hide_code"}' docs/data_story.ipynb
jupyter-book build --all .
git add .
git status
git commit -m "Commited changes to Github-Pages"
git push
ghp-import -n -p -f _build/html