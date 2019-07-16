"  █████╗ ██████╗ ██╗█ ███████╗    ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
" ██╔══██╗██╔══██╗██║  ██╔════╝    ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
" ███████║██████╔╝██║  ███████╗    ██║   ██║██║██╔████╔██║██████╔╝██║
" ██╔══██║██╔══██╗██║  ╚════██║    ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
" ██║  ██║██║  ██║██║  ███████║     ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
" ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚══════╝      ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
" Author        : Arithran Thurairetnam (aka Ari)
" Link          : https://github.com/arithran
" Version       : 4.0
" Description   : I use the same vimrc for both nvim and vim
"
" INSTRUCTIONS ----------------------------------
" {{{
" 1. Install these interpreters and make sure they are executable from the CLI
"    - python,
"    - python3,
"    - ruby
"    - php
"
" 2. Install these providers:
"    - pip install neovim,
"    - pip2 install neovim,
"    - gem install neovim,
"    - npm install -g neovim
"
" 3. Install these linters:
"    - npm install -g eslint eslint-plugin-vue@next
"
" 4. Install these tools and make sure they are executable from the CLI
"    - git,
"    - fzf,
"    - ack
"    - ctags
"
" 5. If you are using a terminal make sure you install the solarized colorscheme and set the correct font
"    - cd ~/.vim/plugged/nerd-fonts/; ./install.sh SourceCodePro
" }}}

" PLUGIN MANAGER --------------------------------
" {{{

" Automatically download package manager on Unix if it doesn't exist.
if has('unix')
	" Vim
	if !filereadable(expand("~/.vim/autoload/plug.vim"))
		echo "Downloading package manager"
		call system(expand("curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"))
	endif
endif

" Plug-ins
call plug#begin('~/.vim/plugged')

" Syntax, Themes & Fonts
Plug 'posva/vim-vue', {'for': 'vue'}                                 " Vim syntax highlighting for Vue components.
Plug 'leafgarland/typescript-vim'                                    " Typescript Syntax for Vim
Plug 'gregsexton/MatchTag'                                           " Highlights the matching HTML tag
Plug 'altercation/vim-colors-solarized'                              " Theme for nvim
Plug 'vim-airline/vim-airline'                                       " Status line
Plug 'vim-airline/vim-airline-themes'                                " Themes for status line, g:airline_theme
Plug 'ryanoasis/vim-devicons'                                        " Adds custom icons to airline, NERDTree etc.
Plug 'cespare/vim-toml'
Plug 'sheerun/vim-polyglot'                                           " A collection of language packs for Vim.



" Workflow & Tools
Plug 'AndrewRadev/splitjoin.vim'                                     " Transition between multiline and single-line code
Plug 'w0rp/ale'                                                      " Asynchronous Lint Engine
Plug 'scrooloose/nerdtree'                                           " A tree explorer plugin for vim.
Plug 'majutsushi/tagbar'                                             " Displays tags in a window, ordered by scope
Plug 'itmammoth/doorboy.vim'                                         " Inserts matching brackets((){}[]) and quotations('`).
Plug 'godlygeek/tabular'                                             " Table creator and alignment plug-in
Plug 'ctrlpvim/ctrlp.vim'                                            " Fuzzy finder for Files, Buffers, Tags
Plug 'heavenshell/vim-jsdoc'                                         " JavaScript JS Documentor
Plug 'tobyS/vmustache'                                               " PHP documentor dependancy
Plug 'tobyS/pdv'                                                     " PHP documentor
Plug 'SirVer/ultisnips'                                              " Snippet engine (UltiSnips is also a PHP documentor dependancy)
Plug 'honza/vim-snippets'                                            " 3rd party snippets for ultisnips
Plug 'easymotion/vim-easymotion'                                     " Vim motions on speed!
Plug 'tomtom/tcomment_vim'                                           " Code commenter
Plug 'arithran/vim-delete-hidden-buffers'                            " Remove hidden buffers
Plug 'wincent/terminus'                                              " Auto-reload file, better mouse and paste support
Plug 'chrisbra/Recover.vim'                                          " Show differences for recovered files
Plug 'tpope/vim-repeat'                                              " repeats the last command even if its not native with [.]
Plug 'tpope/vim-surround'                                            " Easily delete and change surroundings
Plug 'tpope/vim-obsession'                                           " Session Management for VIM
Plug 'tpope/vim-unimpaired'                                          "  Tpope's complementary pairs of mappings
Plug 'troydm/zoomwintab.vim'                                         " Toggle between one window and multi-window

" Git
Plug 'tpope/vim-fugitive'                                            " A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-rhubarb'                                             " Integrates fugitive's :Gbrowse with GitHub
Plug 'airblade/vim-gitgutter'                                        " Shows a git diff in the 'gutter'
Plug 'junegunn/gv.vim'                                               " A git commit browser.


" Searching
Plug 'mileszs/ack.vim'                                               " Search tool from Vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'zchee/deoplete-go', {'build': {'unix': 'make'}}
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" Unix Specific Tools
if has('unix')
	Plug 'christoomey/vim-tmux-navigator'                                " Bind Tmux Keys with VIM
	Plug 'edkolev/tmuxline.vim'                                          " Generate status line colours for tmux. To save this config run :TmuxlineSnapshot .tmuxline
	Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
	let g:go_fmt_command = "goimports"
	" let g:go_auto_type_info = 1
	let g:go_gocode_unimported_packages = 1
	Plug 'buoto/gotests-vim', { 'do': 'go get -u github.com/cweill/gotests/...' }

endif

"  ARCHIVED PLUGINS  -----------------------------
"  {{{
" Plug 'hashivim/vim-terraform'                                        " Basic vim/terraform integration
" Plug 'vim-syntastic/syntastic'
" Plug 'juliosueiras/vim-terraform-completion'
" Plug 'airblade/vim-rooter'         " sets current working directory based on project files (vcs, rakefile, etc)
" Plug 'tpope/vim-markdown', { 'for': ['markdown'] }                   " Syntax highlighting
" Plug 'othree/html5.vim'                                              " HTML5 + inline SVG omnicomplete function, indent and syntax for Vim.
" Plug 'othree/yajs.vim'                                               " Yet Another JavaScript Syntax file for Vim [NEW]
" Plug 'alvan/vim-php-manual'                                          " PHP Manual Support from Shift+k
" Plug 'ervandew/supertab'                                             " insert completion needs (:help ins-completion).
" Plug 'ivalkeen/nerdtree-execute'                                     " Press 'x' to execute system default application
" Plug 'Xuyuanp/nerdtree-git-plugin'                                   " NERDTree showing git status flags
" Plug 'wincent/command-t'                                             " Fuzzy finder for Files, Buffers, Tags, Help and Running commands
" Plug 'sjl/gundo.vim'                                                 " Visualize your Vim undo tree
" Plug 'ryanoasis/nerd-fonts'                                        " Gives you patched fonts to be used
" Plug 'terryma/vim-multiple-cursors'                                  " Select multiple cursors
" Plug 'mattn/webapi-vim'
" Plug 'mattn/gist-vim'                                                " Create a Gist file
" Plug 'tmhedberg/matchit'
" Plug 'jlanzarotta/bufexplorer'
" Plug 'mustache/vim-mustache-handlebars'                              " mustache and handlebars mode for vim
"

" Fun Random plug-ins
" Plug 'johngrib/vim-game-code-break'
" Plug 'vim-scripts/dbext.vim'                                            "  Database Editor
" Plug 'uguu-org/vim-matrix-screensaver'                                "  vim-matrix-screensaver
" Plug 'jmanoel7/vim-games' "Game

" Test these plugins
" Plug 'junegunn/vim-easy-align'                                        "  align items
" Plug 'rking/ag.vim'                                                   "  instead of Ack
" Plug 'junegunn/gv.vim'                                                "  Git commit browser

" Try these later [NEW Stuff]
" Plug 'pelodelfuego/vim-swoop'
" Plug 'othree/jspc.vim'
" Plug 'othree/jsdoc-syntax.vim'
" Plug 'moll/vim-node'
" Plug 'editorconfig/editorconfig-vi'
" Plug 'lambdalisue/vim-gita' " instead of fugitive
" Plug 'tpope/vim-rhubarb' " plug-in that goes well with fugitive
" Plug 'jreybert/vimagit' " plug-in that goes well with fugitive
" Plug 'cakebaker/scss-syntax.vim'                                      "  SCSS syntax highlighting (trying hail2u/vim-css3-syntax for now)
" Plug 'AndrewRadev/switch.vim'
" Plug 'morhetz/gruvbox'
" Plug 'sukima/xmledit'
"  }}}


call plug#end()
" }}}


" GENERAL SETTINGS ------------------------------
" {{{
set nocompatible               " be iMproved, required
filetype off                   " No idea why this is good practice, somebody PM me please
filetype plugin indent on      " Turn on file-type detection (I just turned it off above)

let mapleader = ","            " Set the leader key
let maplocalleader="\\"        " Set the local leader key


set colorcolumn=110            " Keep my lines 110 chars at most
set complete=.,w,b,u,t,k       " context-sensitive completion
set cursorline                 " adds a line for the cursor
set gdefault                   " sets global flag by default
set hidden                     " allows you to hide buffers with unsaved changes without being prompted
set ignorecase
set mouse=a                    " Enable mouse imput
set nofixendofline             " Don't add End-Of-line  character at the bottom of a file
set nopaste                    " Disable past mode by default
set nospell                    " turn on spell checker
set number
set pastetoggle=<f6>           " Toggle paste mode key
set relativenumber
set scrolloff=3                " start scrolling 3 lines before edge of viewport
set shortmess+=A               " ignore annoying swapfile messages
set shortmess+=I               " no splash screen
set shortmess+=T               " truncate non-file messages in middle
set shortmess+=a               " use abbreviations in messages eg. `[RO]` instead of `[readonly]`
set shortmess+=o               " overwrite file-written messages
set showcmd                    " extra info at end of command line
set sidescrolloff=3            " same as scolloff, but for columns
set smartcase
set spellcapcheck=             " When a lower case word is added to the dictionary, use it case insensitively
set spelllang=en_us            " spelling US
set splitbelow                 " Open new split panes to right and bottom,
set splitright                 " which feels more natural
set switchbuf=usetab           " try to reuse windows/tabs when switching buffers
set virtualedit=block          " allow cursor to move where there is no text in visual block mode


" These are 'ON' by default on nvim @see :help nvim-defaults
if !has('nvim')
	set autoindent                  " Copy indent from current line, over to the new line
	set autoread                    " Automatically read file when changed outside Vim
	set backspace=indent,eol,start  " Backspace over everything in insert mode
	set encoding=utf8               " Set vim's char encoding
	set history=10000               " Keep 10000 lines of command line history
	set hlsearch                    " Highlights search results
	set incsearch                   " Searches as you type
	set laststatus=2                " always show status line
	set ttyfast                     " Fast Terminal, Send more characters to the screen for redrawing
	set wildmenu                    " shows suggestions when tabing in normal mode
endif

if filereadable(expand("~/Dropbox/vim/spell/en.utf-8.add " ))
	set spellfile=$HOME/Dropbox/vim/spell/en.utf-8.add
endif

if exists('$SUDO_USER')
	set nobackup                                         " don't create root-owned files
	set nowritebackup                                    " don't create root-owned files
else
	set backupdir=$HOME/.vim/tmp/backup//                " keep backup files out of the way
	set backupdir+=.
	set backupskip=/tmp/*,/private/tmp/*
	set backup                                           " Create a backup
	set writebackup
endif
if exists('$SUDO_USER')
	set noswapfile                                       " don't create root-owned files
else
	set directory=$HOME/.vim/tmp/swap//                  " keep swap files out of the way
	set directory+=.
	set swapfile                                         " Create swap files in case system crashes
endif
if has('persistent_undo')
	if exists('$SUDO_USER')
		set noundofile                                   " don't create root-owned files
	else
		set undodir=$HOME/.vim/tmp/undo//                " keep undo files out of the way
		set undodir+=.
		set undofile                                     " actually use undo files
	endif
endif
if has('viminfo')
	if exists('$SUDO_USER')
		set viminfo=                                     " don't create root-owned files
	else
		set viminfo+=n$HOME/.vim/tmp/viminfo             " override ~/.viminfo default, remembers all command mode history
	endif
endif


" }}}

" PLUGIN SETTINGS -------------------------------
" {{{


set shortmess+=c

" Configure zoomwintab.vim
nnoremap <leader>z :ZoomWinTabToggle<CR>

" Configure Ctrl+P
nnoremap <silent> <leader>b :CtrlPBuffer<CR>

" Swap Delete Buffer and Toggle By File name bindings
let g:ctrlp_prompt_mappings = {
  \ 'ToggleByFname()':      ['<F7>'],
  \ 'PrtDeleteEnt()':       ['<c-d>'],
  \ }


let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Configure PDV .aka PHP Doc
let g:pdv_template_dir = $HOME ."/.vim/templates_snip" " PHP Doc Template location

" Toggle javascript Doc Requires tobyS/pdv plugin
let g:jsdoc_allow_input_prompt	= 1
let g:jsdoc_input_description = 1
let g:jsdoc_allow_shorthand = 1
let g:jsdoc_enable_es6 = 1
let g:jsdoc_user_defined_tags = {
\ '@author': 'Arithran Thurairetnam <arithran.thurairetnam@email.com>',
\}


" Configure ALE
let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#show_splits = 0  " don't show open splits in tabline when more than 1 tab
let g:airline#extensions#tabline#show_buffers = 0 " don't show open buffers in tabline when 1 tab


" Configure Ack, <leader>f ignore case, <leader>F include case
nnoremap <Leader>f :Ack! -i<Space>
nnoremap <Leader>F :Ack! <Space>

" Configure vim-terraform
let g:terraform_align=1
let g:terraform_fmt_on_save=1


" NERDTree {{{
let g:NERDTreeIgnore=['\.orig']                        " Ignore turds left behind by Mercurial.
let g:NERDTreeWinSize=40                               " The default of 31 is just a little too narrow.
let g:NERDTreeMinimalUI=1                              " Disable display of '?' text and 'Bookmarks' label.
let g:NERDTreeCreatePrefix='silent keepalt keepjumps'  " Let <Leader><Leader> (^#) return from NERDTree window.

" Like vim-vinegar
nnoremap <silent> - :silent edit <C-R>=empty(expand('%')) ? '.' : expand('%:p:h')<CR><CR>
" Move up a directory using "-" like vim-vinegar (usually "u" does this).
autocmd FileType nerdtree nmap <buffer> <expr> - g:NERDTreeMapUpdir


" Toggle Nerd Tree
nnoremap <silent> <leader>t :NERDTreeToggle<CR> :NERDTreeMirror<CR>
" }}}

" }}}

" FORMATTING SETTINGS ---------------------------
" {{{
set formatoptions+=v
set formatoptions+=t
set formatoptions+=j            " remove comment leader when joining comment lines
set formatoptions+=n            " smart auto-indenting inside numbered lists
set nojoinspaces                " don't autoinsert two spaces after '.', '?', '!' for join command
set smartindent                 " Do smart indenting when starting a new line
set shiftround                  " Round indent to multiple of 'shiftwidth'
set whichwrap=b,h,l,s,<,>,[,],~ " allow <BS>/h/l/<Left>/<Right>/<Space>, ~ to cross line boundaries
set listchars=tab:▸\ ,eol:¬     " pretify :set list


if has('linebreak')
	set linebreak                       " wrap long lines at characters in 'breakat'
	let &showbreak='⤷ '                 " ARROW POINTING DOWNWARDS THEN CURVING RIGHTWARDS (U+2937, UTF-8: E2 A4 B7)
	set breakindent                     " indent wrapped lines to match start
	if exists('&breakindentopt')
		set breakindentopt=shift:2        " emphasize broken lines by indenting them
	endif
endi


set noexpandtab " Make sure that every file uses real tabs, not spaces
let s:tabwidth=4 " Set the tab width
exec 'set tabstop='    .s:tabwidth
exec 'set shiftwidth=' .s:tabwidth
exec 'set softtabstop='.s:tabwidth

" When moving around, Maximize the current window
" but show a minimum of 5 lines on all other windows
set winheight=5
set winminheight=5
set winheight=999

" }}}

" CUSTOM MAPPINGS -------------------------------
" INSERT MODE MAPPINGS {{{

" Complete file paths
inoremap <c-f> <c-x><c-f>
" }}}

" NORMAL MODE MAPPINGS {{{

" Repeat last macro if in a normal buffer.
nnoremap <expr> <CR> empty(&buftype) ? '@@' : '<CR>'<F23>

"This is a bind to navigate windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Navigate Tabs
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Repurpose cursor keys (accessible near homerow via "SpaceFN" layout) for one
" of my most oft-use key sequences.
nnoremap <silent> <Up> :cprevious<CR>
nnoremap <silent> <Down> :cnext<CR>
nnoremap <silent> <Left> :cpfile<CR>
nnoremap <silent> <Right> :cnfile<CR>

" Store relative line number jumps in the jumplist if they exceed a threshold.
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'


" Toggle easymotion
map  <Leader>w <Plug>(easymotion-w)
nmap <Leader>W <Plug>(easymotion-b)
let g:EasyMotion_skipfoldedline = 0 " Show motion keys on folds


" Toggle Tagbar
map <leader>g :Tagbar<CR>

" Very Magic Search By Default
" :help magic
nnoremap / /\v

" Auto-correct the last spelling mistake
nnoremap <leader>l :call AutoCorrectLastSpellingMistake()<CR>

" }}}

" VISUAL MODE MAPPINGS {{{

" Navigate windows while in Visual mode
xnoremap <C-h> <C-w>h
xnoremap <C-j> <C-w>j
xnoremap <C-k> <C-w>k
xnoremap <C-l> <C-w>l
" }}}

" COMMAND MODE MAPPINGS {{{

" <C-u> should  already delete the line
" HOME and END keys
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" `<Tab>`/`<S-Tab>` to move between matches without leaving incremental search.
" Note dependency on `'wildcharm'` being set to `<C-z>` in order for this to
" work.
" cnoremap <expr> <Tab> getcmdtype() == '/' \|\| getcmdtype() == '?' ? '<CR>/<C-r>/' : '<C-z>'
" cnoremap <expr> <S-Tab> getcmdtype() == '/' \|\| getcmdtype() == '?' ? '<CR>?<C-r>/' : '<S-Tab>'

" This is to sudo write a file if opened with read only permissions
cnoremap sudow w !sudo tee % >/dev/null

" }}}

" LEADER MODE MAPPINGS {{{
"
" <Leader><Leader> -- Open last buffer.
nnoremap <Leader><Leader> <C-^>

" <Leader>p -- Show the path of the current file (mnemonic: path; useful when
" you have a lot of splits and the status line gets truncated).
nnoremap <Leader>p :echo expand('%')<CR>

" <Leader>pp -- Like <Leader>p, but additionally yanks the filename and sends it
" off to Clipper.
nnoremap <Leader>pp :let @+=expand('%')<CR> :echo expand('%')<CR>

" <LocalLeader>c -- Fix (most) syntax highlighting problems in current buffer
" (mnemonic: coloring).
nnoremap <silent> <LocalLeader>c :syntax sync fromstart<CR>

" <LocalLeader>e -- Edit file, starting in same directory as current file.
nnoremap <LocalLeader>e :edit <C-R>=expand('%:p:h') . '/'<CR>

"Toggle spell checker
nmap <silent> <leader>s :setlocal spell!<CR>

" Toggle commenting Requires T-comment plugin
map <leader>c <c-_><c-_>
" }}}

" AUTOCMD MAPPINGS {{{

augroup custom_filetypedetect

	" Clear this group when re-sourcing .vimrc
	autocmd!

	" Center buffer around cursor when opening files
	" autocmd BufRead * normal zz

	" Toggle spell between INSERT and NORMAL modes
	autocmd InsertEnter * setlocal spell
	autocmd InsertLeave * setlocal nospell

	" Set Filetypes
	autocmd BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux

	" Set Compound Filetypes
	" autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

	" Wrap text for markdown files
	autocmd BufRead,BufNewFile *.md setlocal textwidth=80

	" Set custom tab behavior
	autocmd BufNewFile,BufRead *.vue setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
	autocmd BufNewFile,BufRead *.sh setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
	autocmd BufNewFile,BufRead *.proto setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
	autocmd BufNewFile,BufRead *.yaml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

	" Insert Doc Block
	autocmd Filetype php nnoremap <leader>dd :call pdv#DocumentWithSnip()<CR>
	autocmd Filetype javascript nnoremap <leader>dd :JsDoc
augroup END


augroup go
  autocmd!
  autocmd FileType go nmap <silent> <Leader>i <Plug>(go-info)
  autocmd FileType go nmap <silent> <Leader>a <Plug>(go-coverage-toggle)

  " I like these more!
  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END

" }}}

" ABBREVIATION MAPPINGS {{{
iabbrev </ </<C-X><C-O> " auto complete tags
" }}}

" FOLDS -----------------------------------------
" {{{


" Vim folding commands
" <Space> toggle a fold (custom: 'za' has been mapped)
" zr (remove) decreases the foldlevel by one.
" zR (Remove)decreases the foldlevel to zero -- all folds will be open.
" zm (more)increases the foldlevel by one.
" zM (More)closes all open folds.
" zo opens a fold at the cursor.
" zO opens all folds recursively
" zc closes a fold at the cursor.
" zC closes all folds recursively
" zj moves the cursor to the next fold.
" zk moves the cursor to the previous fold.

set foldmethod=manual
set foldlevelstart=0  " Set it to 1 tmp
" set foldlevelstart=99               " start unfolded
set foldcolumn=1
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>

" zO only recursively opens all folds if the cursor is on a closed fold
" Let's re-map it to recursively open all folds, even when the current fold is open
nnoremap zO zczA


" autocmd FileType vim setlocal fdc=1
" " Space to toggle folds.
autocmd FileType vim setlocal foldmethod=marker
autocmd FileType vim setlocal foldlevel=0
autocmd FileType javascript,html,css,less,scss,typescript setlocal foldlevel=99
autocmd FileType css,less,scss,json,php,go setlocal foldmethod=marker
autocmd FileType css,less,scss,json,php,go setlocal foldmarker={,}
autocmd FileType fugitive setlocal nofoldenable
autocmd BufReadPost fugitive:///* setlocal nofoldenable


" }}}

" THEME SETTINGS --------------------------------
" {{{

syntax enable " Enable syntax highlighting
set t_Co=256                   " Set the color of the terminal to 256 bits
set background=dark " Set the background to dark
let g:solarized_diffmode="high"
colorscheme solarized


" Configure Airline
let g:airline_theme='solarized' " Set theme
let g:airline#extensions#whitespace#enabled = 0 " Don't show whitespace or indentation errors
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#displayed_head_limit = 10
let g:airline_skip_empty_sections = 1 " Skips empty errors and warning sections if applicable
let g:airline#extensions#obsession#indicator_text = ''

let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'y'    : ['#(whoami)'],
      \'z'    : '#H'}

if has('unix')
	" Override the Look and Feel (Must be after colorscheme)
	" Italics start and end key sequences
	set t_ZH=[3m
	set t_ZR=[23m
	" Make comments italic
	highlight Comment cterm=italic
	" Make Background transparent
	highlight Normal ctermbg=none
endif


" }}}

" CUSTOM FUNCTIONS ------------------------------
" {{{

if !exists("*AutoCorrectLastSpellingMistake") " Automatically fix last typo
	function AutoCorrectLastSpellingMistake()
		if !&binary && &filetype != 'diff'
			normal ms[s1z=`s
		endif
	endfunction
endif
if !exists("*StripTrailingWhitespace") " Strip trailing white spaces
	function StripTrailingWhitespace()
		if !&binary && &filetype != 'diff'
			normal mz
			normal Hmy
			%s/\s\+$//c
			normal 'yz<CR>
			normal `z
		endif
	endfunction
endif
if !exists("*StripDosLineEndings") " Strip windows line endings
	function StripDosLineEndings()
		:%s/$//
	endfunction
endif
if !exists("*GeneratePhpCtags") " Generate ctags for php project
	function GeneratePhpCtags()
		echom system("ctags -R --languages=php .")
	endfunction
endif
if !exists("*Capitalise") " Capitalise the start of a word
	function Capitalise()
		:s/\<./\u&/g
	endfunction
endif

" }}}
