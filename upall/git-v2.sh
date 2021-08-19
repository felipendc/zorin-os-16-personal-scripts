#!/bin/bash

# github.com/felipendc

# Go back to the root (main) folder
cd ../

# Setting git config pull.rebase  to true 
#git config pull.rebase true

# checking if I have the latest files from github
echo "Checking for newer files online first"
git pull

# Below command will backup everything inside the project folder
git add --all .

# It will print the output of the command "date"
output=$(date)

# This will print the date and the hour that this project was uploaded to github
git commit -m "Vicyos Rolling Update: ($output)"

# Push the local files to github

git push -u origin master


echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
