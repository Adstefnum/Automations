printf "Enter commit message:"
read message

ssh-add ~/ovpn/github
git add -A
branch=`git status | grep -o "master\|main" | head -1`
git pull origin $branch
git commit -m "$message" 
git push -u origin $branch
