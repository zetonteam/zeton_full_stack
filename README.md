# zeton_full_stack
Hello,

This is an experimental repository combining both our django API and React.js client.  
It utilizes the Git submodules concept, which you can familiarize yourself with [here](https://git-scm.com/book/en/v2/Git-Tools-Submodules)  and [here](https://medium.com/fiverr-engineering/working-with-git-submodules-ec6210801e07).


I suggest not using it as a development repository as it needs some more testing yet.  

You need configured connection to GitHub using SSH. You can do it with [this](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh) tutorial.

## SETUP
1. To clone parent repository along with submodules use following command in the terminal:
```
git clone --recurse-submodules $repository_url
```  
(as a $repository_url use this repository url).   

2. Next, go to the zeton_react submodule, and checkout the 'develop' branch or your `branch_name`.
```
git checkout develop
```

3. Go back to the parent directory. Now you should be able to start the project with:   
```
docker-compose up --build
```  
4. You can access the React client at  
```
localhost:3000
```

5. The Dashboard view is empty now, as no data hasn't been fetched from the API yet.  
You can load the data from Django fixutres using:  
```
make load_data
```
6. Now the Dashboard view should present 2 examplary users.


7. To update submodules to latest version use command:  
```
git pull --recurse-submodules
```
