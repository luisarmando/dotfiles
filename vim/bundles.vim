" vim: ft=vim syntax=vim
let g:neobundle#types#git#clone_depth = 5
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/syntastic'

NeoBundle 'bling/vim-airline'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-rsi'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'tpope/vim-fugitive', { 'external_commands': 'git' }
NeoBundle 'gregsexton/gitv', { 'external_commands': 'git' }
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'ervandew/supertab'

" Motion/visual
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'bkad/CamelCaseMotion'
NeoBundle 'tommcdo/vim-exchange'
NeoBundle 'terryma/vim-expand-region'

NeoBundle 'godlygeek/tabular'
NeoBundle 'jpalardy/vim-slime'

NeoBundleLazy 'scrooloose/nerdtree',
            \ {'autoload':{'commands':['NERDTreeToggle', 'NERDTreeFind', 'NERDTree', 'NERDTreeMirrorOpen', 'NERDTreeTabsOpen']}}
NeoBundleLazy 'majutsushi/tagbar',
            \ {'autoload':{'commands':['TagbarToggle']}}
NeoBundleLazy 'jlanzarotta/bufexplorer',
            \ {'autoload':{'commands':['BufExplorer']}}
NeoBundleLazy 'junegunn/goyo.vim',
            \ {'autoload':{'commands':['Goyo']}}
NeoBundleLazy 'junegunn/vim-easy-align',
            \ {'autoload':{'commands':['EasyAlign']}}
NeoBundleLazy 'garbas/vim-snipmate',
            \ {'autoload': {'insert': 1}}
NeoBundleLazy 'honza/vim-snippets',
            \ {'autoload': {'insert': 1}}
NeoBundleLazy 'chrisbra/csv.vim',
            \ {'autoload' : { 'filetypes' : ['csv', 'tsv'] }}
NeoBundleLazy 'elzr/vim-json',
            \ {'autoload' : { 'filetypes' : ['json'] }}
NeoBundleLazy 'autowitch/hive.vim',
            \ {'autoload' : { 'filetypes' : ['hive', 'q', 'sql', 'hql'] }}
NeoBundleLazy 'plasticboy/vim-markdown',
            \ {'autoload' : { 'filetypes' : ['markdown', 'md', 'mkd', 'text'] }}
NeoBundleLazy 'ap/vim-css-color',
            \ {'autoload' : { 'filetypes' : ['css', 'html', 'haml', 'erb'] }}
NeoBundleLazy 'yuratomo/w3m.vim',
            \ {'autoload' : { 'commands' : [{'name' : 'W3m'}, 'W3m', 'W3mTab'], }}

" Graveyard
"NeoBundle 'altercation/vim-colors-solarized'
"NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'wincent/Command-T' "Not using this since ctrlp looks to be better and faster
"NeoBundle 'edkolev/tmuxline.vim'
"NeoBundle 'vim-pandoc/vim-pandoc'
"NeoBundle 'amix/vim-zenroom2'
"NeoBundle 'xolox/vim-session'
"NeoBundle 'benmills/vimux'
"NeoBundle 'myusuf3/numbers.vim'
"NeoBundle 'Shougo/vimshell.vim'
"NeoBundleLazy 'Shougo/neosnippet.vim', {'autoload': {'insert': 1}}
"NeoBundleLazy 'Shougo/neosnippet-snippets', {'autoload': {'insert': 1}}
"NeoBundleLazy 'Shougo/unite.vim', {
            "\ 'autoload' : {
            "\   'commands' : [{'name' : 'Unite'},
            "\       'UniteWithBufferDir']
            "\   }
            "\ }


call neobundle#end()