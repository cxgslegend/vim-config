"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              ______           _          __                    ____           "
"             / ____/________ _(_)___ _   / /   ____ _   _____  / / /           "
"            / /   / ___/ __ `/ / __ `/  / /   / __ \ | / / _ \/ / /            "
"           / /___/ /  / /_/ / / /_/ /  / /___/ /_/ / |/ /  __/ / /             "
"           \____/_/   \__,_/_/\__, /  /_____/\____/|___/\___/_/_/              "
"                             /____/                                            "
"                                                                               "
" Sections:                           --------------------------------------    "
"    -> * [0]  General Settings  *    | These following keys are safe to   |    "
"    -> * [1]  Plugin Management *    | modify becuase they are pointless. |    "
"    -> * [2]  Autocommands      *    |                                    |    "
"    -> * [3]  Mappings          *    | <space>, <cr>, <bs>, and -         |    "
"    -> * [4]  Plugin Settings   *    --------------------------------------    "
"    -> * [5]  Custom Functions  *                                              "
"                                                                               "
"                                                                               "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = "\<Space>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                              General Settings                                 "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable                           " enable folding
set foldcolumn=3                         " Gutter wider by 3 columns
set foldmethod=marker                    " Make markers the defualt folding pattern
set foldlevelstart=3                     " open most folds by default
set belloff=all                          " Turn all annoying bell sounds off
set showcmd                              " Show key strokes as they are typed.
set relativenumber                       " Make line numbers relative to the current line
set number                               " Turn hybrid relative numbers on (makes current line show real line number)
set cursorline                           " highlight current line
set history=1000                         " Remember last 1000 commands
set scrolloff=5                          " Keep at least 4 lines below cursor
set hidden                               " Allow buffer change w/o saving
set backspace=indent,eol,start           " Sane backspace behavior
set wildmenu                             " Adds tab completion for exe commands
set tabstop=4                            " Make an tab 4 spaces long
set shiftwidth=4                         " Make an indent 4 spaces long
set softtabstop=4                        " Make an indent 4 spaces long in insert mode
set list                                 " Allow us to see special characters
set listchars=tab:▸␣                     " Set tab character.
set ignorecase                           " Case insensitive searches (must be on for smartcase to work)
set smartcase                            " By adding a uppercase letter it will be case sensitive
set tags+=tags                           " Tell vim to look for a tags file
set background=dark                      " Make the theme dark
set autoindent                           " Make new line the same indentation level as the last line
set nospell                              " Turn off spelling correction
set laststatus=2                         " Turn on the status line
set hlsearch                             " Highlight search items that match
set omnifunc=syntaxcomplete#Complete     " Turn on Omnicompletion (it is off by defualt)
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " Ignore certain files
set shortmess+=A
set mouse=a
set t_Co=256

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                             Plugin Management                                 "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-system-copy'
Plug 'dhruvasagar/vim-table-mode'
Plug 'godlygeek/tabular'
" Plug 'Kazark/vim-SimpleSmoothScroll'
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'matze/vim-move'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'mustache/vim-mustache-handlebars'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'scwood/vim-hybrid'
Plug 'ryanoasis/vim-devicons'
" Plug 'ryanoasis/nerd-fonts'
Plug 'fmoralesc/vim-pad'
Plug 'fmoralesc/vim-tutor-mode'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc-after'
Plug 'rking/ag.vim'
Plug 'dahu/VimRegexTutor'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'StanAngeloff/php.vim'
Plug 'othree/html5.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Custom text objects
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-function'

call plug#end()
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                                Autocommands                                   "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
	augroup cleargroup
		autocmd!
		autocmd BufWritePost vimrc source $MYVIMRC
		autocmd BufNewFile,BufRead *.json set ft=javascript
		autocmd BufWritePre *.* :%s/\s\+$//e
		autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
		autocmd BufRead init.vim set foldlevel=0
	augroup END
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                                  Mappings                                     "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <Left>  <nop>
inoremap <Right> <nop>
inoremap <Up>    <nop>
inoremap <Down>  <nop>

noremap <Left>   <esc>:echo "Don't be an idiot"<cr>
noremap <Right>  <esc>:echo "Don't be an idiot"<cr>
noremap <Up>     <esc>:echo "Don't be an idiot"<cr>
noremap <Down>   <esc>:echo "Don't be an idiot"<cr>

nnoremap <Leader>wj <C-W><C-J>
nnoremap <Leader>wh <C-W><C-H>
nnoremap <Leader>wk <C-W><C-K>
nnoremap <Leader>wl <C-W><C-L>

nnoremap <leader>ws <esc>:sp<cr>
nnoremap <leader>wS <esc>:sp<cr><c-w><c-j>
nnoremap <leader>wv <esc>:vsp<cr>
nnoremap <leader>wV <esc>:vsp<cr><c-w><c-l>

nnoremap <Leader>fs :w<cr>
nnoremap <Leader>bd :bd<cr>

nnoremap <Leader>a= :Tabularize /=<cr>
vnoremap <Leader>a= :Tabularize /=<cr>
nnoremap <Leader>a: :Tabularize /:<cr>
vnoremap <Leader>a: :Tabularize /:<cr>

nnoremap <Leader>q :q!<cr>
nnoremap q :q<cr>

noremap Q !!$SHELL<cr>

map somethingthatwillneverbetyped <Plug>(easymotion-prefix)
map <leader><leader> <Plug>(easymotion-s)

" Pre-populate a split command with the current directory
nmap <leader>v :vnew <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr><Paste>
map <C-n> :NERDTreeToggle<cr>

" This unsets the "last search pattern" register by hitting return
nnoremap <cr> :noh<cr>

" Move up and down by visible lines if current line is wrapped
noremap <buffer> k gk
noremap <buffer> j gj

nnoremap <leader>sp :call FixLastSpellingError()<cr>
nnoremap <leader>mh :call CreateMarkdownHeader()<cr>
nnoremap <leader>ch :call CenterHeader()<cr>

nnoremap / /\v

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                              Plugin Settings                                  "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:move_key_modifier = 'C'
let g:sort_motion_flags = "ui"

syntax on
colorscheme hybrid
hi MatchParen cterm=none ctermbg=red ctermfg=red

let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="

let g:airline_powerline_fonts = 1
let g:airline_theme           = 'bubblegum'

let g:ctrlp_custom_ignore     = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_cache_dir         = $HOME . '/.cache/ctrlp'
if executable('ag')
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
	let g:ackprg = 'ag --vimgrep'
endif
onoremap ih :<c-u>execute "normal! ?^==\\+\s*$\r:nohlsearch\rkvg_"<cr>

let g:pad#dir                    = "~/Documents/Notes"
let g:pad#local_dir              = "Notes"
let g:pad#search_backend         = "ag"
let g:pad#default_file_extension = ".md"
let g:pad#default_format         = "pandoc"
let g:pad#window_height          = 14

let g:pandoc#formatting#mode = "sA"
let g:pandoc#formatting#smart_autoformat_on_cursormoved = 1
let g:pandoc#folding#level                              = 3
let g:pandoc#folding#mode                               = "relative"

let g:UltiSnipsSnippetsDir         = "~/.config/nvim/plugged/vim-snippets/UltiSnips/"
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsEditSplit           = "vertical"
let g:snips_author                 = "Craig Lovell"

let g:EasyMotion_smartcase = 1

let g:jsx_ext_required = 0

let g:Powerline_symbols = 'fancy'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                              Custom Functions                                 "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! FixLastSpellingError()
	normal! mm[s1z=`m
endfunction

function! CreateMarkdownHeader()
	normal! mmyyp0vg_r=`m
endfunction

function! CenterHeader()
	execute "normal! 0r 45i \<esc>g_45i \<esc>"
	normal! g_r l
	execute "set expandtab"
	execute "center"
	normal! 81|r"ld$
	normal! 0r"
	execute "set noexpandtab"
endfunction





