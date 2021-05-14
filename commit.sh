printf "Enter commit message:"
read message

ssh-add ~/ovpn/github
git add .
branch=`git commit -m "$message" | grep -o "master\|main"`
git push -u origin $branch
