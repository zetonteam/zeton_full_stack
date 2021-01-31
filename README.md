# zeton_full_stack
Hello,

This is an experimental repository combining both our django API and React.js client.  
It utilizes the Git submodules concept, which you can familiarize yourself with [here](https://git-scm.com/book/en/v2/Git-Tools-Submodules)  and [here](https://medium.com/fiverr-engineering/working-with-git-submodules-ec6210801e07).


I suggest not using it as a development repository as it needs some more testing yet.  


## SETUP
1. To clone parent repository along with submodules use following command in the terminal:
```
git clone --recurse-submodules $repository_url
```  
(as a $repository_url use this repository url).   

2. Next, go to the zeton_react submodule, and checkout the 'docker-setup' branch.
```
git checkout docker-setup
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


