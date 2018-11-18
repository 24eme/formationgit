# Git Hands-on

## Needs

* git
* ssh

## Configuration basics: ssh

* a pair of keys: `ssh-key-gen`
* the public key known by the server: `ssh-copy-id user@host`
* ... or by the service (gitlab, github, ...): `cat ~/.ssh/id_rsa.pub`

## Configuration basics: git

* Declare who you are:
  * git config --global user.name "John Doe"
  * git config --global user.email "john@mail.org"
* Choose your text editor:
  * git config --global core.editor "vim"
* Check your push strategy (*matching*):
  * git config push.default

## Git configuration

* Two configuration files:
  * your global conf: `~/.gitconfig`
  * the repo one: `myrepo/.git/config`

## Retrieve and dialogue with a repository

* Copy an unknown repository:
  * `git clone user@host:repository.git`
* dialogue with a repository:
  * retrieve versions from the repository: `git pull`
  * send versions to the repository: `git push`

## The excquisite cadaver

## How to create a version

* create a new version:
  * `git add path/to/the/modified_file.txt`
  * `git commit` *+ a commit message*
* share the version:
  * `git pull`
  * `git push`
* observe the versions:
  * `git log`
  * `git log --state`
  * `git log -p`

## The excquisite cadaver v0.2

## Conflicts

Most conflicts are solved automaticaly

Some need human assistance:

    $ git pull
    Auto-merging file.txt
    CONFLICT (content): Merge conflict in file.txt
    Automatic merge failed; fix conflicts and then commit the result.

## Text representation of conflicts

Two conflicting files:

    | common lines                     | common lines                   |
    | ...                              | ...                            |
    | my lines                         | someone else                   |
    | as committed                     | lines                          |
    | ...                              | ....                           |
    | non conflicting lines            | non conflicting lines          |

Git representation:

    | common lines                     |
    | ...                              |
    | <<<<<<< HEAD                     |
    | my lines                         |
    | as committed                     |
    | =======                          |
    | someone else                     |
    | lines                            |
    | >>>>>>> master                   |
    | ...                              |
    | non conflicting lines            |

## Solve conflicts

1. Choose between two versions (or a mix)
2. Edit files to remove unwanted lines (`<<<<` `====` `>>>>` ...)
3. `git add file_with_conflicts.txt`
4. `git commit`

## Conflict solved

We obtain 3 commits :

* my version
* the other version
* the conflict resolution

## The excquisite cadaver v0.3

## Branches

* Create a branch : `git branch new_branch`
* Go to a branch : ` git checkout my_branch`
* Back to the default branch : `git checkout master`
* share branches : `git push origin current_branch`

## Merge

* go to the target branch : `git checkout master`
* merge with the source branche : `git merge source_branch` 
