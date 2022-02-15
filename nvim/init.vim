call plug#begin('~/.config/nvim/plugged')

"Plug '~/.config/nvim/plugged/bundle/ctrlp.vim' 

Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'maxmellon/vim-jsx-pretty'
Plug '~/.config/nvim/pack/tpope/start/unimpaired.vim'
Plug '~/.config/nvim/pack/tpope/start/surround/plugin/surround.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'jiangmiao/auto-pairs' 
Plug 'prettier/vim-prettier', {'do' : 'yarn install', 'for': ['javascript', 'json',  'react', 'php', 'typescript']}
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'sbdchd/neoformat'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'othree/yajs.vim'
Plug 'chriskempson/base16-vim'
Plug 'djoshea/vim-autoread' 
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'ryanoasis/vim-devicons'
Plug 'leafgarland/typescript-vim'

call plug#end()

"Autoread
set autoread
au CursorHold * checktime

"Indentline config
let g:indentline_setColors = 0
let g:indentline_color_term = 239
let g:indentline_char = ''

let g:enable_bold_font = 1
"let g:hybrid_transparent_background = 1


"set background=dark
"colorscheme hybrid
"Color Scheme
"colorscheme deep-space
"colorscheme base16-ocean-dark
"colorscheme Tomorrow-Night
"colorscheme base16-tomorrow-night
"colorscheme deep-space
"colorscheme nord
"colorscheme base16-material-darker
"colorscheme base16-material-darker
"colorscheme base16-eighties
"colorscheme base16-onedark
"colorscheme base16-oceanicnext
colorscheme one

"PHP Indetation config
autocmd FileType php setlocal autoindent
autocmd BufReadPost * setlocal autoindent



"Syntax Config
set t_Co=256
set t_ut=
syntax on
syntax enable
set encoding=UTF-8
set cursorline
set ttimeoutlen=0
set background=dark
set clipboard=unnamed
set guifont=DejaVu\ Sans\ Mono\ 15 
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set relativenumber
set number
set autoread
set mouse=r
set autoindent
set textwidth=80
set softtabstop=2
set smarttab
set shiftround
set cindent
set clipboard=unnamed
set nowrap
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set smarttab
set shiftround
set cindent
set t_Co=256
set background=dark
set relativenumber
set termguicolors
set number
set ttyfast

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"Transparrent Background
hi Normal guibg=None ctermbg=None

"Tmux Pane Navigator
nnoremap <silent> <c-h> : TmuxNavigateLeft <cr>
nnoremap <silent> <c-l> : TmuxNavigateRight <cr>
nnoremap <silent> <c-k> : TmuxNavigateUp <cr>
nnoremap <silent> <c-j> : TmuxNavigateDown <cr>

"Toggle NERD TREE
nmap <C-n> :NERDTreeToggle <CR>
let g:NERDTreeIgnore = ['^node_modules$']
let NERDTreeShowHidden = 1

"Buffer Switcher
nnoremap <C-Left> :bprevious <CR>
nnoremap <C-Right> :bnext <CR>

"Window Resizing binding
nnoremap <C-]> :vertical res -2 <CR>
nnoremap <C-[> :vertical res +2 <CR>
"nnoremap <C-w> :bd <CR>


"Clipboard Copy And Paste
vnoremap <C-c> "+y
map <C-v> "+P


"EMMET Config
autocmd FileType html,css,php,js,jsx EmmetInstall
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
let g:user_emmet_settings = {
\  'javascript.js' : {
\    'extends': 'js',
\    'default_attributes': {
\       'label': [{'htmlFor': ''}],
\       'class': {'className': ''},
\    }
\  }
\}


"Nerd Commenter key rebinding
if has('win32') 
  nmap <C-/> <leader>c<Space>
  vmap <C-/> <leader>c<Space>
else 
 nmap <C-_> <leader>c<Space>
 vmap <C-_> <leader>c<Space>
endif


"VSCode Ctrl UP and DOWN
nmap <C-k> [e
nmap <C-j> ]e

vmap <C-k> [egv
vmap <C-j> ]egv

" Ignore Node Modules on ctrlp
" fzf and ripgrep settings
nmap <C-P> :Files <CR>
let g:fzf_preview_window = []
set rtp+=/usr/local/opt/fzf
let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-h': 'split',
    \ 'ctrl-v': 'vsplit'
    \ }
"set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/DS_Store/*,*/vendor,*/node_modules


"Prettier Autoformat
autocmd BufWritePre *.js,*.ts,*.jsx PrettierAsync

"command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
"let g:prettier#autoformat = 1
"command! -nargs=0 Prettier :CocCommand prettier.formatFile        
"let g:lsc_auto_map = v:true

"Image Preview
au BufRead *.png,*.jpg,*.jpeg :call DisplayImage()


"No Match Parent
let loaded_matchparen = 1


"HTML CSS PHP Autocomplete
set omnifunc=phpcomplete#CompletePHP
autocmd FileType php set omnifunc=phpcomplete#CompletePHP


"Lighline Config
let g:lightline = {
\   'colorscheme': 'Tomorrow_Night',
\   'active': {
\    'left' :[[ 'mode', 'paste' ],
\             [ 'readonly' ],
\             [ 'filename', 'modified' ]],
\    'right':[[ 'lineinfo' ],
\             [ 'percent' ],
\             [ 'filetype', 'fileencoding', 'fileformat' ]]
\   },
\   'component': {
\     'lineinfo': ' %3l:%-2v',
\     'filename': '%<%f'
\   },
\   'component_function': {
\     'fugitive': 'LightlineFugitive',
\     'readonly': 'LightlineReadonly',
\     'modified': 'LightlineModified',
\     'fileformat': 'LightlineFileformat',
\     'filetype': 'LightlineFiletype',
\   }
\}
let g:lightline.separator = {
\   'left': '', 'right': ''
\}
let g:lightline.subseparator = {
\   'left': '', 'right': ''
\}
let g:lightline.tabline = {
\   'left': [['buffers']],
\   'right': [['string1'], ['string2']]
\}
let g:lightline.component_expand = {
\   'buffers': 'lightline#bufferline#buffers'
\}
let g:lightline.component_type = {
\   'buffers': 'tabsel'
\}


autocmd VimEnter * call SetupLineColors()
function SetupLineColors() abort
  let l:palette = lightline#palette()

  let l:palette.normal.middle = [ ['NONE','NONE','NONE', 'NONE'] ] 
  let l:palette.inactive.middle = l:palette.normal.middle
  let l:palette.tabline.middle = l:palette.normal.middle

  call lightline#colorscheme()
endfunction

set showtabline=2   ""Show tabline
set guioptions-=e   ""Don't use GUI tabline

let g:lightline#bufferline#unnamed = "[NO NAME]"
let g:lightline#bufferline#filename_modifier= ":t"
let g:lightline#bufferline#more_buffers = "..."
let g:lightline#bufferline#modified = " ●"
let g:lightline#bufferline#read_only = " "
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#show_number = 0
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#unicode_symbols = 1
let g:palenight_terminal_italics = 1

