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
![example_gitflow](https://raw.githubusercontent.com/TiagoSRodrigues/NoteBook/main/github%20actions/assets/example_gitflow.png)
