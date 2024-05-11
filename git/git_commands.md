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
Git reset , Git checkout , git revert
---------------------------------------------

