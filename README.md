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

### After clone/update
* tern_for_vim: Install Tern.js by calling "npm install" in bundle/tern_for_vim.
  * Generate jsdoc definition for your specific framework via https://github.com/angelozerr/tern.jsduck
* Command-T: For Installation see Commend-T/README
* Install YouCompleteMe by calling ~/.vim/bundle/YouCompleteMe/install.sh
* Install https://github.com/Lokaltog/powerline-fonts for vim-airline
* Install https://github.com/ggreer/the_silver_searcher

## Update
$ cd .vim; git submodule update
vim :PluginUpdate

## TODO

* write post cloning installation script

## MISC

### Example .tern-project

{
    "libs": [
        "browser"
    ],
    "loadEagerly": [
        "*,js",
        "app/pcc/*.js",
        "app/pcc/*/*.js",
        "app/pcc/*/*/*.js",
        "app/pcc/*/*/*/*.js"
    ],
    "dontLoad": [
    ],
    "plugins": {
        "extjs_4.2.1": {}
    }
}
