1. Create a repository (public) (shell-script)
$ git branch -M master
raghunaga.p.yara@HDC3-LX-125ZFJX MINGW64 /c/DevOps/repos/my-shell-scripts (master)
2. clone into your laptop
    $ cd /c/DevOps/repos/
    $ git clone https://github.com/NagaYara/my-shell-scripts.git
3. Select the main branch. Generally, main branch is the master branch.
4. Open the file in VSC and make the changes
	Ex. C:\Devops\repos\shell-script --> create README.MD
5. Open the GitBash (git bash is a client) and select the path - /c/DevOps/repos/
6. git status
$ git status
On branch master
No commits yet
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        README.MD
nothing added to commit but untracked files present (use "git add" to track)
7. $ git add README.MD --> Saving the changes into the temporary area or staging area
from here we need to commit the changes. 
8. $ git commit -m "First time commit" --> Committing the changes into the local repo and provide the user name and email to know who is committing the changes
9. $ git push origin master --> Pushing the changes to central repo