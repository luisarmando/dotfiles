" repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" https://sts10.github.io/blog/2016/01/09/vim-line-complete-with-fzf/
" https://github.com/zenbro/dotfiles/blob/master/.nvimrc#L221-L263<Paste>
" https://www.reddit.com/r/neovim/comments/3oeko4/post_your_fzfvim_configurations/
"if exists('g:fzf_action')

  let g:fzf_nvim_statusline = 0 " disable statusline overwriting
  function! SearchWordWithAg()
    execute 'Ag' expand('<cword>')
  endfunction

"endif

let g:rainbow_active = 1
let g:ranger_map_keys = 0
let g:vim_markdown_initial_foldlevel=1

" vim-airline {
  " Use the symbols , , , , , , and .in the statusline. Otherwise comment this line.
  let g:airline_powerline_fonts = 1
  let g:airline_theme                           = 'base16'
  let g:airline#extensions#branch#enabled       = 1
  let g:airline#extensions#tagbar#enabled       = 1
  let g:airline#extensions#tabline#enabled      = 1
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline#extensions#tabline#left_sep     = ' '
  let g:airline#extensions#wordcount#enabled = 1
"}

" NerdTree {
  let NERDTreeShowBookmarks=1
  let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
  let NERDTreeChDirMode=0
  let NERDTreeQuitOnOpen=0
  let NERDTreeMouseMode=2
  let NERDTreeShowHidden=1
  let NERDTreeKeepTreeInNewTab=1

  let g:nerdtree_tabs_autofind = 1
  let g:nerdtree_tabs_open_on_console_startup = 0
" }

"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=lightgrey   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=4

let g:fzf_action = {
  \ 'ctrl-m': 'e',
  \ 'ctrl-t': 'tabedit',
  \ 'alt-j':  'botright split',
  \ 'alt-k':  'topleft split',
  \ 'alt-h':  'vertical topleft split',
  \ 'alt-l':  'vertical botright split' }

let g:neomake_python_flake8_maker = {
    \ 'args': ['--ignore=E501,E402',  '--format=default'] }

let g:neomake_python_pylama_maker = {
    \ 'args': ['--ignore=E501,E402'] }

let g:neomake_yaml_yamllint_maker = {
    \ 'args': ['-f', 'parsable', '-d', '{extends: default, rules: {line-length: {max: 120}}}'] }

let g:neoterm_position = 'horizontal'
let g:neoterm_automap_keys = ',tt'

" Useful maps
" hide/close terminal
nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
nnoremap <silent> ,tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> ,tc :call neoterm#kill()<cr>

" Git commands
command! -nargs=+ Tg :T git <args>


