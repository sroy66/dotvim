# Personal Vim Setup

## Setup

```sh
# install cmake gcc-c++ python3-dev(el) ctags/etags
```

```sh
git clone http://github.com/geoffjay/dotvim.git ~/.vim
cd ~/.vim
mkdir -p ~/.vim/bundle
```

After that open `vim` and execute `:PlugInstall`.

### YouCompleteMe

```sh
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --go-completer --rust-completer --js-completer
```

### Grip

In order for `:GripStart` to work grip needs to be installed.

```sh
python3 -m pip install --user grip
```
