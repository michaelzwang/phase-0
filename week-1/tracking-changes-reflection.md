##How does tracking and adding changes make developers' lives easier?

Tracking and adding changes makes developers' lives easier because it reminds the reader what changes have been made in case he/she needs to go back to a certain point. 

##What is a commit?

A commit is a save point in git. It works as a safety net in case you accidentally introduce bugs into the code. Changes to a file are tracked automatically but are not saved until a commit is made. 

##What are the best practices for commit messages?

Commit messages should be written in the imperative tense. The first line should be a short description similar to a subject line (less than 50 characters) that capitalizes the first letter, and the body should explain what was changed and the motivation for the change. 

##What does the HEAD^ argument mean?

HEAD^ represents the last commit made. 

##What are the 3 stages of a git change and how do you move a file from one stage to the other?

In the working stage, changes are made to a file. In the staged stage,you add the changes and track what will go into the next commit. In the commit stage, you decide to commit the changes that have been made to the file.

##Write a handy cheatsheet of the commands you need to commit your changes?

git status
git log
git add
git commit -m "message"

##What is a pull request and how do you create and merge one?

A pull request is a way to merge code from a different branch into the master branch because adding code directly to the master branch is not recommended. To create a pull request, the branch is pushed to the repository and a pull request is made on GitHub. To merge a pull request on GitHub, you press the merge button on the "Conversation" tab of the pull request. After the merge, you can delete the branch.

##Why are pull requests preferred when working with teams?

Pull requests are useful because they allow teammates to review each other's code so that mistakes can be caught before merging into the master branch.