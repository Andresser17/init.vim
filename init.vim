" if all letters are lowercase ignore case
set ignorecase smartcase
set backspace=indent,eol,start
set autoindent
set writebackup
set history=50
set ruler
set showcmd
set incsearch
set termguicolors
syntax on
filetype plugin indent on
packadd vimball
set clipboard=unnamedplus
set number                     " Show current line number
set relativenumber             " Show relative line numbers
set hidden
set nocompatible
set encoding=utf-8

" vim-plug manager
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'sheerun/vim-polyglot'

Plug 'prettier/vim-prettier', {
   \ 'do': 'npm install -g',
   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'projekt0n/github-nvim-theme'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'jiangmiao/auto-pairs'

Plug 'alvan/vim-closetag'

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-surround'

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

call plug#end()

" custom shortcuts

" Toggle between paste mode and no paste mode
set pastetoggle=<F3>

" Use Meta key
" set <M-e>=^[e

" Open terminal in split buffer
map <Leader>t :term ++close<cr>
tmap <Leader>t <c-w>:term ++close<cr>

" Move in tabs
nnoremap <C-j> :tabprevious<CR>                                                                            
nnoremap <C-k> :tabnext<CR>

" Move in buffers
nnoremap <SPACE>bp :bprev<CR>
nnoremap <SPACE>bn :bnext<CR>

" Fzf
nnoremap <C-p> :Files <ENTER>
nnoremap <C-b> :Buffers <ENTER>

" :terminal
tnoremap <C-n> <C-\><C-n>

" Call :Prettier
map <F6> :Prettier <ENTER>

" vim-airline configuration
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

" emmet
let g:emmet_html5 = 0
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

" UltiSnips Key Mappings
let g:UltiSnipsExpandTrigger="<TAB>"
" list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"

" CtrlSpace
let g:CtrlSpaceDefaultMappingKey = "<C-x>"

" CloseTag
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js'

colorscheme github_dark
