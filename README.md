# .vim

This ist my personal Vim setup. It is still incomplete and will be finetuned in the future.

## After/post cloning

* git submodule init
* git submodule update
* Create symlinks to:
  * ln -s src/to/vim-config/ .vim
  * ln -s .vim/config.vim .vimrc
  * ln -s .vim/jshint-config.json .jshintrc
  * ln -s .vim/config.gvim .gvimrc 
* Run vim + BundleInstall
* Install Tern.js by calling "npm install" in bundle/tern_for_vim.
* Install YouCompleteMe by calling 
* Install https://github.com/Lokaltog/powerline-fonts for vim-airline
* Install https://github.com/ggreer/the_silver_searcher

## TODO

* write post cloning installation script
