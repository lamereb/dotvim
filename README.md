### Installation:
```
git clone git://github.com/lamereb/dotvim.git ~/.vim
```

### Create symlink:
```
ln -s ~/.vim/vimrc ~/.vimrc
```

### Fetch submodules:
```
cd ~/.vim && git submodule update --init
```

### Adding a new plugin:
```
cd ~/.vim && git submodule add path/to/plugname.git bundle/plugname
git add .
git commit -m "Added plugname bundle as submodule."
```
Also, add the following line:
```
ignore = dirty
```
to the corresponding bundles `.gitmodules` entry
See [here](http://www.nils-haldenwang.de/frameworks-and-tools/git/how-to-ignore-changes-in-git-submodules) for more info.
