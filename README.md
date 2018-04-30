Config
=======
A collection of configuration files for commonly used utilities. To
clone the repo including the submodules, use 

```bash
git clone --recursive https://github.com/nachikethas/config.git
```

To pull in all upstream changes, use

```bash
git submodule update --remote --merge
```

To delete a submodule

```bash
git submodule deinit -f -- submodule
rm -rf .git/modules/submodule
git rm -f submodule
```
