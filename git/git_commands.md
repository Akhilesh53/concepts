Git Merge vs Rebase vs Squash Commits
-----------------------------------------

To sync up feature branch with the master is a crucial task. we can do it vis both git merge and rebase.

Git Merge: pulls changes from the master and merge the same to the feature branch. like tieng a knot.
Git Rebase: It changes the base of the feature branch to the latest changes on the main.


After completig the feature branch, we need to merge it back to the main.

Git Merge: same as above
Git Rebase and Fast Forward: It makes the feature branch to merge at the tip of the main and then perform a fast forward merge 
Squash Commit: All feature branch commits are squeezed into the main branch. It consolidates all the commits to one commit and merge the same to main.

Git Rebase:
Pros: Provides line commit timeline
      Allows cleaner commit history 

Cons: Reduced Tracability

Git Merge: 
Pros: Preserves commit history
Cons: Make history tidy.

Squash Commits:
Pros: Clear and concise commit history
Cons: Loss of commit details
      Loss Tracebility

---------------------------------------------
git reset , git checkout , git revert
---------------------------------------------
git checkout: 
    it is basially used to migrate to another branch.
    it is also used to do reverse actions in current working directory

    git checkout <file name>   // discards all changes in the file
    git checkout .             // discards all changes in the working directory
    git checkout <branch name> // migrate to another branch or create it if not there


git reset/ git restore:
    - it is basically used to revert the changes from staged area back to unstaged area or discard all changes in the working directory.

    
    git reset HEAD <file name>
    git reset HEAD .
    git restore --staged <file name>
    git restore --staged .


    - it is also used to revert back changes from commit area only if changes are not commited to remote

     there are 3 mdoes in which git reset works
     - soft             // it keeps all the changes in the staging area
     - mixed (default)  // it resets the index (staging area) but not working directory
     - hard             // it removes changes from staging as well as working directory


     git reset HEAD~n             // discard previous n commits in sequence
     git reset
     git reset --<mode> HEAD~n
     git reset --<mode> 

git revert:
     - it is used to revert the commits pushed to remote branch

     git revert <commit id>


---------------------------------------------------------

git diff
git diff --staged


