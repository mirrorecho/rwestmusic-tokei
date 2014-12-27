read -p "Enter commit message for TOKEI changes:" tokei_commit_msg
git add .
git commit -m "$tokei_commit_msg"
git pull --rebase
git push

cd ../calliope
bash _sync.sh