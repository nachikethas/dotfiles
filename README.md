Config
=======
A collection of configuration files for commonly used utilities. To
clone the repo including the submodules, use 

> git clone --recursive https://github.com/nachikethas/config.git

To pull in all upstream changes, use

> git submodule update --remote

To delete a submodule

> git submodule deinit -f -- submodule
> rm -rf .git/modules/submodule
> git rm -f submodule
