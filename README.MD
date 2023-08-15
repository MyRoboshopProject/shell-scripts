GIT Practice

GITHUB
    Step 1
        Create a repository (public) (shell-script) # my-shell-scripts repository created

GITBASH
    step 2
        Install any of the GIT client (git bash, git lab, bit bucket) and clone the repository to your computer
        create the folder to store the repositories # go to the path C:\Devops\repos\
        clone the repository command 
        $ git clone <https://github.com/NagaYara/my-shell-scripts.git> 

    Step 3
        by default git is configured with main branch, that means its prod branch. but for easy understanding we can change the name to master. 
        configure the branch in git bash client command
        $ git branch -M master
        raghunaga.p.yara@HDC3-LX-125ZFJX MINGW64 /c/DevOps/repos/my-shell-scripts (master)

Visual Studio Code
        Install the VSC -> New window -> Open Folder -> Select the folder where your repositories are located
        Ex. C:\Devops\repos\shell-script
    
    Step 4
        Select the repository and create the new file/ folder # created README.MD file

GITBASH
    Step 5 ## Check the staus if any changes are done in the repository
        Go to the path, where the repositories are located # /c/DevOps/repos/my-shell-scripts
        $ git status # you can see the changes done in vSC files, i.e. a new file (README.MD) added into repository
              
    Step 6 ## Save the changes into the temporary area or staging area
        $ git add README.MD

    Step 7 ##  Committing the changes into the local repo. Provide the authentication to commit (To know who's commiting the changes)
        $ git commit -m "comment to commit"

    Step 8 ## Pushing the changes to Central repo
        $ git push origin master

    Step 9 ## Check if any more changes still need to be commit / 
        $ git status