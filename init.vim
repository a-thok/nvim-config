call plug#begin('~/.local/share/nvim/plugged')
" theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rakr/vim-one'
Plug 'jacoborus/tender.vim'
Plug 'kristijanhusak/vim-hybrid-material'
" general
Plug 'mhinz/vim-startify'
Plug 't9md/vim-choosewin'
Plug 'jiangmiao/auto-pairs'
Plug 'dominikduda/vim_current_word'
" html & css
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
" javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" typescript
Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim', { 'do' : 'make' } 
Plug 'leafgarland/typescript-vim'
" vue
Plug 'posva/vim-vue'
" elm
Plug 'ElmCast/elm-vim'
" markdown
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.vim'
" autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhartington/nvim-typescript'
" linter
Plug 'w0rp/ale'
" tool
Plug 'tpope/vim-fugitive'
Plug 'editorconfig/editorconfig-vim'
call plug#end()

" choosewin
nmap - <Plug>(choosewin)

"emmet
au FileType html,css,vue imap <expr><tab> emmet#expandAbbrIntelligent("\<tab>")

" deoplete
let g:acp_enableAtStartup = 0
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
imap <expr><tab> pumvisible() ? "\<C-n>" : "\<TAB>"
let g:nvim_typescript#javascript_support = 1

" ale
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_statusline_format = ['E•%d', 'W•%d', 'OK']
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
autocmd BufWritePost *.js,*.jsx,*.vue ALEFix

syntax on

if (empty($TMUX))
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set background=dark
colorscheme hybrid_reverse
let g:airline_theme='wombat'

filetype plugin indent on
set tabstop=2
set expandtab
set shiftwidth=2

set number
set relativenumber

set hlsearch

imap jj <esc>
let mapleader = " "
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
" inoremap <S-TAB> <C-X><C-O>
tnoremap <Esc> <C-\><C-n>

