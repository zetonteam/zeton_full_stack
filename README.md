## About Zeton

Żeton is a token-based reward system app for neurodivergent children and their families.

Żeton builds accountability and promotes good habits in home and school environments. It provides positive reinforcement
and helps behaviour modification.

As parents, teachers and therapists, we know the daily struggles of children on the autistic spectrum, with learning
disabilities or neurodevelopmental disorders. We believe that token economy and behavioural therapy elements should be
accessible to everyone, so your kid can thrive at home as well as at school. Our goal is to help children become more
and more independent over time, to the point of not needing the app 😊

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/zetonteam/zeton_full_stack)

# zeton_full_stack

Hello,

This is an experimental repository combining both our django API and React.js client.  
It utilizes the Git submodules concept, which you can familiarize yourself
with [here](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
and [here](https://medium.com/fiverr-engineering/working-with-git-submodules-ec6210801e07).

I suggest not using it as a development repository as it needs some more testing yet.

You need configured connection to GitHub using SSH. You can do it
with [this](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh) tutorial.

## SETUP

1. To clone parent repository along with submodules use following command in the terminal:

```
git clone --recurse-submodules git@github.com:zetonteam/zeton_full_stack.git
```  


2. The rest of this guide requires you to run commands in the project directory. Run the following command before moving
   on.

```
cd zeton_full_stack
```

3. Next, You need to set branch `develop` in submodules `zeton_react` and  `zeton_django`.

```
cd zeton_django
git checkout develop
cd ../zeton_react
git checkout develop
cd ..
```

4. To start the project make sure you are in the `zeton_full_stack` directory and run command:

```
docker compose up --build
```  

or use the command from Makefile

```commandline
make build
```

There are many other useful commands you can use. Take a look at the `Makefile`.

5. You can access the React client at

```
localhost:3000
```

6. The Dashboard view is empty now, as no data hasn't been fetched from the API yet.  
   You can load the data from Django fixutres using:

```
make load_data
```

* Please note that loading the data is only possible while the application is running.

7. Now the Dashboard view should present 2 examplary users.
You can log in to platform with the following credentials:
- login: `opiekun1`
- password: `opiekun1`

For more details about loaded data, take a look at the files in `zeton_django/fixtures` directory.

8. To update submodules to latest version use command:

```
git pull --recurse-submodules
```
