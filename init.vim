call plug#begin('~/.local/share/nvim/plugged')
" theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kristijanhusak/vim-hybrid-material'
" general
Plug 'mhinz/vim-startify'
Plug 't9md/vim-choosewin'
Plug 'jiangmiao/auto-pairs'
Plug 'dominikduda/vim_current_word'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
" html & css
Plug 'mattn/emmet-vim', { 'for': [ 'html', 'css', 'vue', 'javascript' ] }
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
" javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx'
" typescript
Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
Plug 'Shougo/vimproc.vim', { 'for': 'typescript', 'do' : 'make' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
" vue
Plug 'posva/vim-vue', { 'for': 'vue' }
" elm
Plug 'ElmCast/elm-vim', { 'for': 'elm' }
" markdown
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'iamcco/markdown-preview.vim', { 'on': 'MarkdownPreview' }
" autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhartington/nvim-typescript', { 'for': [ 'javascript', 'vue', 'typescript' ] }
" linter
Plug 'w0rp/ale'
" git
Plug 'tpope/vim-fugitive'
" tool
Plug 'editorconfig/editorconfig-vim'
call plug#end()

" choosewin
nmap - <Plug>(choosewin)

"emmet
au FileType html,css,vue,javascript imap <expr><tab> emmet#expandAbbrIntelligent("\<tab>")

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
autocmd BufEnter * :syntax sync maxlines=200

if (empty($TMUX))
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set background=dark
colorscheme hybrid_reverse
let g:airline_theme='powerlineish'

filetype plugin indent on
set tabstop=2
set expandtab
set shiftwidth=2

" show trailing white space
hi ExtraWhitespace guifg=#FF2626 gui=underline ctermfg=124 cterm=underline
match ExtraWhitespace /\s\+$/

set number
set relativenumber

set hlsearch

" map
imap jj <esc>
let mapleader = " "
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
tnoremap <Esc> <C-\><C-n>

