# Personal Vim Setup

## Setup

```sh
git clone http://github.com/geoffjay/dotvim.git ~/.vim
cd ~/.vim
git submodule update --init --recursive
```

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

## Update

```sh
git submodule foreach --recursive git fetch
git submodule foreach git merge origin master
```
