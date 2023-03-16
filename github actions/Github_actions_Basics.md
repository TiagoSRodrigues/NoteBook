# Github Actions

## *Concepts*:

    Workdflow
        Collenction of jogs that run based on a specific trigger. Conceptually, is a CI pipeline. 
        wokflows are defined in yaml
    
    Runner: 
        Compute machine where workflows are axecuted. These can be GitHub-managed runners or custom runners.
    
    Job:
        Set of steps that execute in a single runner workspace
    
    Step:
        Lowest unit of funcionality for GitHub Actions. can me a command, a script, a JavaScript file, a Dockerfile, or a community action.
    
    CI: 
        Continuous integration

    Envirement:
        Dedicate set of insfrastructure
    
    Gitflow:
        Using Git brances to manage deployment



## Workflow
### Sample workflow
````
name: Build Application Code

on: [Push]

jobs:
    build:
        runs-on: ubuntu-latest
        steps:
            - name: Check out code
              uses: actions/checkout@v2
            - name: Isntall libraries
              run pip install -r requirements.txt -t .
    test:
        runs-on: ubuntu-latests
        needs: build
        steps:


````

### sample gitflow:
![alt example_gitflow]("https://github.com/TiagoSRodrigues/NoteBook/blob/d49e0901a6bb92115f7c62e5506fca12f3c910a3/github%20actions/assets/example_gitflow.png)


### Community Actions 

Actions created and shared by github or the comunity

can be found on the github marketplace (github.com/marketplace), or... in google

interesting actions: 
 - [Jira issue from TODO](https://github.com/marketplace/actions/jira-issue-from-todo)
 - [Checkout](https://github.com/marketplace/actions/checkout)
 - [Hashicorp Packer](https://github.com/marketplace/actions/setup-hashicorp-packer)

## Custom Runners

 - VM where jobs defined in a workflow are run ... in the defined environment
 - It can be linux, windows, or mac
 - It can run in a cloud, in a data center or a local workstation.
 - the responsibility of security is of the infrastructure manager.
 


