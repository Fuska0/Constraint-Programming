# Constraint Programming: Modeling Techniques

Laboratory created by Mateusz Ślażyński @ AGH University of Science and Technology in Kraków.

## Lab Instructions

All instructions are available via [the project wiki](https://gitlab.com/agh-courses/2022-2023/cp/wiki-03). 
All files required to solve the assignments are already included in the repository.

## Off-line Tests

Assignments contain (experimental) offline checkers. If you open project `lab-03.mzp`, you will see that every model has option to `run+check` instead of just `run`. The checker will give you feedback if the solution found according to your model is correct.

Off-line tests are there only to assist you, they don't impact the grade which is set by Bobot.
 
## Setup 

* [ ] Make sure, you have a **private** group (you don't have to create a new one, if you have a nice one already)
  * [how to create a group](https://docs.gitlab.com/ee/user/group/#create-a-group)
* [ ] Add @bobot-is-a-bot as thenew group member (role: **maintainer**)
  * [how to add an user](https://docs.gitlab.com/ee/user/group/#add-users-to-a-group)
* [ ] Fork this project into your private group
  * [how to create a fork](https://docs.gitlab.com/ee/user/project/repository/forking_workflow.html#creating-a-fork)

## How To Submit Solutions

* [ ] Clone repository: git clone:
    ```bash 
    git clone <repository url>
    ```
* [ ] Solve the exercises 
    * use MiniZincIDE, whatever
* [ ] Commit your changes
    ```bash
    git add <path to the changed files>
    git commit -m <commit message>
    ```
* [ ] Push changes to the gitlab master branch
    ```bash
    git push -u origin master
    ```

The rest will be taken care of automatically. You can check the `GRADE.md` file for your grade / test results. Be aware that it may take some time (up to one hour) till this file appears / gets updated.  
