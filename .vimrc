"  █████╗ ██████╗ ██╗█ ███████╗    ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
" ██╔══██╗██╔══██╗██║  ██╔════╝    ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
" ███████║██████╔╝██║  ███████╗    ██║   ██║██║██╔████╔██║██████╔╝██║     
" ██╔══██║██╔══██╗██║  ╚════██║    ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
" ██║  ██║██║  ██║██║  ███████║     ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
" ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚══════╝      ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"                                                                                 
" Author  : Arithran Thurairetnam (aka Ari)
" Link    : https://github.com/arithran
" Version : 2.0

set nocompatible " be iMproved, required

" PLUGINS
" PLUGIN MANAGER {{{
"
" Automatically download package manager if it doesn't exist
" For Neovim
if !filereadable(expand("~/.local/share/nvim/site/autoload/plug.vim"))
	echo "Downloading package manager"
	call system(expand("curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"))
endif
" For Vim
if !filereadable(expand("~/.vim/autoload/plug.vim"))
	echo "Downloading package manager"
	call system(expand("curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"))
endif


" Plug-ins
" ========
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
" Example: https://github.com/junegunn/vim-plug#example
call plug#begin('~/.vim/plugged')

" Syntax
Plug 'othree/html5.vim' " HTML5 + inline SVG omnicomplete function, indent and syntax for Vim.
Plug 'othree/yajs.vim' " Yet Another JavaScript Syntax file for Vim [NEW]
Plug 'heavenshell/vim-jsdoc' "  JavaScript JS Documentor
Plug 'elzr/vim-json', { 'for': 'json' } " Distinct highlighting of keywords vs values, JSON-specific 
Plug 'hail2u/vim-css3-syntax', { 'for': ['less', 'css', 'scss'] }
Plug 'ap/vim-css-color' " Colour keyword highlighter for Vim
Plug 'tpope/vim-markdown', { 'for': ['markdown'] } "syntax highlighting
Plug 'godlygeek/tabular' "Table creator and alignment plug-in
Plug 'gregsexton/MatchTag' "Highlights the matching HTML tag
Plug 'neomake/neomake' " Run code linters and compilers from within Vim
Plug 'sbdchd/neoformat' " Format code
Plug 'groenewege/vim-less' " Less CSS syntax

" Workflow
Plug 'tpope/vim-fugitive' " A Git wrapper so awesome, it should be illegal
Plug 'ludovicchabant/vim-lawrencium' " Mercurial wrapper
Plug 'airblade/vim-gitgutter' " Shows a git diff in the 'gutter'
Plug 'mileszs/ack.vim' " Search tool from Vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy Finder
Plug 'junegunn/fzf.vim'
Plug 'Valloric/YouCompleteMe' " A code-completion engine for Vim
Plug 'SirVer/ultisnips' " Snippet engine (UltiSnips is also a PHP documentor dependancy)
Plug 'honza/vim-snippets' " 3rd party snippets for ultisnips
Plug 'ervandew/supertab' "  insert completion needs (:help ins-completion).
Plug 'tobyS/vmustache' "  PHP documentor dependancy
Plug 'tobyS/pdv' "  PHP documentor
Plug 'alvan/vim-php-manual' " PHP Manual Support from Shift+k
Plug 'scrooloose/nerdtree' " A tree explorer plugin for vim.
Plug 'ivalkeen/nerdtree-execute' " Press 'x' to execute system default application
Plug 'Xuyuanp/nerdtree-git-plugin' " NERDTree showing git status flags
Plug 'itmammoth/doorboy.vim' " Inserts matching brackets((){}[]) and quotations('`).
Plug 'tpope/vim-repeat' " repeats the last command even if its not native with [.] 
Plug 'sjl/gundo.vim' " Visualize your Vim undo tree
Plug 'christoomey/vim-tmux-navigator' "  Bind Tmux Keys with VIM
Plug 'majutsushi/tagbar' " Displays tags in a window, ordered by scope
Plug 'vim-airline/vim-airline' " Status line
Plug 'vim-airline/vim-airline-themes' " Themes for status line, g:airline_theme
Plug 'edkolev/tmuxline.vim' " Generate status line colours for tmux
Plug 'ryanoasis/vim-devicons' " Adds custom icons to airline, NERDTree etc.
Plug 'ryanoasis/nerd-fonts' " Gives you patched fonts to be used
Plug 'altercation/vim-colors-solarized' "  Current Theme
Plug 'tpope/vim-surround' " Easily delete and change surroundings
Plug 'tomtom/tcomment_vim' " Code commenter
Plug 'easymotion/vim-easymotion' " Vim motions on speed!
Plug 'terryma/vim-multiple-cursors' " Select multiple cursors
Plug 'arithran/vim-delete-hidden-buffers' " Remove hidden buffers
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim' " Create a Gist file
Plug 'wincent/terminus' " Auto-reload file, better mouse and paste support


Plug 'tpope/vim-pathogen'
" Plug 'StanAngeloff/php.vim' " @TODO check if you still need this
Plug 'tmhedberg/matchit'

Plug 'jlanzarotta/bufexplorer'
"  Session Management for VIM
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'tpope/vim-obsession'

Plug 'mustache/vim-mustache-handlebars' " mustache and handlebars mode for vim


" Fun Random plug-ins
Plug 'vim-scripts/dbext.vim' " Database Editor
" Plug 'ashisha/image.vim' " Let's you open (preview) images in Vim
" Plug 'malithsen/trello-vim' " A barebone vim plugin to fetch user assigned cards from Trello
" Plug 'uguu-org/vim-matrix-screensaver' " vim-matrix-screensaver
" Plug 'jmanoel7/vim-games' "Game

" Test these plugins
" Plug 'junegunn/vim-easy-align' " align items
" Plug 'rking/ag.vim' " instead of Ack
" Plug 'junegunn/gv.vim' " Git commit browser

" Try these later [NEW Stuff]
" Plug 'pelodelfuego/vim-swoop'
" Plug 'othree/jspc.vim'
" Plug 'othree/jsdoc-syntax.vim'
" Plug 'moll/vim-node'
" Plug 'vim-markdown-folding'
" Plug 'editorconfig/editorconfig-vi'
" Plug 'lambdalisue/vim-gita' "instead of fugitive
" Plug 'tpope/vim-rhubarb' "plug-in that goes well with fugitive
" Plug 'jreybert/vimagit' "plug-in that goes well with fugitive
" Plug 'cakebaker/scss-syntax.vim' " SCSS syntax highlighting (trying hail2u/vim-css3-syntax for now)
" Plug 'AndrewRadev/switch.vim'
" Plugin 'tpope/vim-unimpaired' " Tpope's complementary pairs of mappings
" Plug 'Lokaltog/vim-powerline' " Replaced with airline
" Plug 'scrooloose/syntastic' " Replaced with Neomake
" Plug 'mattn/emmet-vim' " Pretty much what zen coding does
" Plug 'itchyny/calendar.vim' " A calendar application for Vim
" Plug 'Konfekt/FastFold'
" Plug 'vim-scripts/php.vim-html-enhanced'
" Plug '2072/PHP-Indenting-for-VIm'
" Plugin 'morhetz/gruvbox'
" Plugin 'sukima/xmledit'


" Archived
" ========
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Was slowing down NERDTree
" Plug 'ZoomWin'
" " Git plugin not hosted on GitHub
Plug 'git://git.wincent.com/command-t.git'

" Initialize plugin system
call plug#end()
" }}}

" PLUGIN SETTINGS {{{

" Configure YCM  and make it compatible with UltiSnips (using supertab)
" NOTE: You can use Ctrl+Space to trigger the completion suggestions anywhere, even without a string prefix.
let g:ymc_server_python_interpreter = '/usr/bin/python'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" Configure supertab
let g:SuperTabDefaultCompletionType = '<C-n>'

" Unbind conflicting key, Ctrl+h (@see Plug 'alvan/vim-php-manual')
let g:php_manual_online_search_shortcut = ''

" Configure UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical""
" NERDTree {{{
"
" Ignore turds left behind by Mercurial.
let g:NERDTreeIgnore=['\.orig']
" The default of 31 is just a little too narrow.
let g:NERDTreeWinSize=40
" Disable display of '?' text and 'Bookmarks' label.
let g:NERDTreeMinimalUI=1
" Let <Leader><Leader> (^#) return from NERDTree window.
let g:NERDTreeCreatePrefix='silent keepalt keepjumps'
" Toggle Nerd Tree
map <silent> <leader>t :NERDTreeToggle<CR> :NERDTreeMirror<CR>

" Like vim-vinegar
nnoremap <silent> - :silent edit <C-R>=empty(expand('%')) ? '.' : expand('%:p:h')<CR><CR>
" Move up a directory using "-" like vim-vinegar (usually "u" does this).
autocmd FileType nerdtree nmap <buffer> <expr> - g:NERDTreeMapUpdir
" Highlight the current file
autocmd User NERDTreeInit call arithran#autocmds#attempt_select_last_file()
" }}}

" }}}

" SETTINGS
" GENERAL SETTINGS {{{

set encoding=utf8 " Set vim's char encoding
filetype plugin indent on " turn on file-type detection
se t_Co=256 " Set the color of the terminal to 256 bits
set colorcolumn=110 " Keep my lines 110 chars at most
let mapleader = "," " Set the leader key
let maplocalleader="\\" " Set the local leader key
set pastetoggle=<f6> " Toggle paste mode 
set nopaste " disable it by default
set mouse= " Disable mouse imput

" Vim automatically saves undo history to an undo file
set undofile
set undodir="$HOME/.VIM_UNDO_FILES"

" Flags
" =====
set spell " turn on spell checker
set showcmd " see partial commands as you type them
set spelllang=en_gb " spelling GB
set gdefault " sets global flag by default
set noswapfile " doesn't create a swap file
set cursorline "adds a line for the cursor
set winheight=5
set winminheight=5
set winheight=999
set number
set relativenumber
set ignorecase
set incsearch
set smartcase
set wildmenu " shows suggestions when tabing in normal mode
set scrolloff=5 " adds 5 lines to the top and bottom of the window
set laststatus=2 "adding the status line to the editor

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright
" set clipboard=unnamedplus " sets the system clipboard as default
set complete=.,w,b,u,t,k " context-sensitive completion

" }}}

" FORMATTING SETTINGS {{{
set fo=vt                      " Set the format options ('formatoptions')
set nojoinspaces               " :h joinspaces
set backspace=indent,eol,start " Backspace over everything in insert mode
set autoindent                 " Copy indent from current line, over to the new line
set smartindent                " Do smart indenting when starting a new line
set shiftround                 " Round indent to multiple of 'shiftwidth'

if has('linebreak')
	set linebreak                       " wrap long lines at characters in 'breakat'
	let &showbreak='⤷ '                 " ARROW POINTING DOWNWARDS THEN CURVING RIGHTWARDS (U+2937, UTF-8: E2 A4 B7)
	set breakindent                     " indent wrapped lines to match start
	if exists('&breakindentopt')
		set breakindentopt=shift:2        " emphasize broken lines by indenting them
	endif
endi

set listchars=tab:▸\ ,eol:¬ " pretify :set list

set noexpandtab " Make sure that every file uses real tabs, not spaces
let s:tabwidth=4 " Set the tab width
exec 'set tabstop='    .s:tabwidth
exec 'set shiftwidth=' .s:tabwidth
exec 'set softtabstop='.s:tabwidth
" }}}

" Remember cursor position between vim sessions
" autocmd BufReadPost *
" 			\ if line("'\"") > 0 && line ("'\"") <= line("$") |
" 			\   exe "normal! g'\"" |
" 			\ endif
" center buffer around cursor when opening files
autocmd BufRead * normal zz




" terminal 'normal mode'
" tmap <esc> <c-\><c-n><esc><cr> 
" tnoremap <Esc> <C-\><C-n>

" Automatically change to INSERT mode when entering a terminal
" autocmd BufEnter term://* startinsert

" Don't do spell checks on terminal
" augroup terminal
  " autocmd TermOpen * setlocal nospell
" augroup END


" Multi-line cursor config
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'




" #MAPPINGS
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


" Configure FZF Preview
" *********************
" Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], preview window, [toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
"   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%'),
  \                 <bang>0)

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
" }}}

" LEADER MODE MAPPINGS {{{
"
" <Leader><Leader> -- Open last buffer.
nnoremap <Leader><Leader> <C-^>

" Full Screen
nnoremap <Leader>o :only<CR>

" <Leader>p -- Show the path of the current file (mnemonic: path; useful when
" you have a lot of splits and the status line gets truncated).
nnoremap <Leader>p :echo expand('%')<CR>

" <Leader>pp -- Like <Leader>p, but additionally yanks the filename and sends it
" off to Clipper.
nnoremap <Leader>pp :let @+=expand('%')<CR> :echo expand('%')<CR>

" <Leader>r -- Cycle through relativenumber + number, number (only), and no
" " numbering (mnemonic: relative).
nnoremap <silent> <Leader>r :call arithran#mappings#cycle_numbering()<CR>

" <Leader>zz -- Zap trailing whitespace in the current buffer.
"
"        As this one is somewhat destructive and relatively close to the
"        oft-used <leader>a mapping, make this one a double key-stroke.
nnoremap <silent> <Leader>zz :call arithran#mappings#zap()<CR>

" <LocalLeader>c -- Fix (most) syntax highlighting problems in current buffer
" (mnemonic: coloring).
nnoremap <silent> <LocalLeader>c :syntax sync fromstart<CR>

" <LocalLeader>e -- Edit file, starting in same directory as current file.
nnoremap <LocalLeader>e :edit <C-R>=expand('%:p:h') . '/'<CR>

"Toggle spell checker
nmap <silent> <leader>s :set spell!<CR>

" Toggle commenting Requires T-comment plugin
map <leader>c <c-_><c-_>
" }}}



" Configure PDV .aka PHP Doc
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip" " PHP Doc Template location
" Key Binding for PHP Doc (Requires UltiSnips)
autocmd Filetype php nnoremap <leader>dd :call pdv#DocumentWithSnip()<CR>

" Toggle javascript Doc Requires tobyS/pdv plugin
let g:jsdoc_allow_input_prompt	= 1
let g:jsdoc_input_description = 1
autocmd Filetype javascript nnoremap <leader>dd :JsDoc


" Wrap text for markdown files
autocmd BufRead,BufNewFile *.md setlocal textwidth=80







" Toggle Neoformat to format code, @TODO requires formatters: read the docs use:PHP_Beautifier
noremap <leader>f :Neoformat<CR>

" Toggle easymotion
map  <Leader>w <Plug>(easymotion-w)
nmap <Leader>W <Plug>(easymotion-b)

" Toggle Tagbar
map <leader>g :Tagbar<CR>


" Very Magic Search By Default
" :help magic
nnoremap / /\v

" Auto-correct the last spelling mistake
nnoremap <leader>l :call AutoCorrectLastSpellingMistake()<CR>

" Fold, gets it's own section  ----------------------------------------------{{{


" Manual Fold shotcuts, Press Space to toggle a fold in Normal mode and Create
" in Visual Mode
" Vim folding commands
" zf#j creates a fold from the cursor down # lines.
" zf/string creates a fold from the cursor to string .
" zj moves the cursor to the next fold.
" zk moves the cursor to the previous fold.
" zo opens a fold at the cursor.
" zO opens all folds at the cursor.
" zm (more)increases the foldlevel by one.
" zM (More)closes all open folds.
" zr (remove) decreases the foldlevel by one.
" zR (Remove)decreases the foldlevel to zero -- all folds will be open.
" zd deletes the fold at the cursor.
" zE deletes all folds.
" [z move to start of open fold.
" ]z move to end of open fold.

set foldmethod=manual
set foldlevelstart=1
set foldcolumn=1
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf


" function! MyFoldText() " {{{
" 	let line = getline(v:foldstart)
" 	let nucolwidth = &fdc + &number * &numberwidth
" 	let windowwidth = winwidth(0) - nucolwidth - 3
" 	let foldedlinecount = v:foldend - v:foldstart
"
" 	" expand tabs into spaces
" 	let onetab = strpart('          ', 0, &tabstop)
" 	let line = substitute(line, '\t', onetab, 'g')
"
" 	let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
" 	let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines')
" 	return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . ' Lines '
" endfunction " }}}
"
" set foldtext=MyFoldText()
"
" autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
" autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif
"
" autocmd FileType vim setlocal fdc=1
" set foldlevel=99
" " Space to toggle folds.
" nnoremap <Space> za
" vnoremap <Space> za
autocmd FileType vim setlocal foldmethod=marker
autocmd FileType vim setlocal foldlevel=0
autocmd FileType javascript,html,css,less,scss,typescript setlocal foldlevel=99
autocmd FileType css,less,scss,json,php setlocal foldmethod=marker
autocmd FileType css,less,scss,json,php setlocal foldmarker={,}

" autocmd FileType coffee setl foldmethod=indent
" autocmd FileType html setl foldmethod=expr
" let g:xml_syntax_folding = 1
" autocmd FileType xml setl foldmethod=syntax
" autocmd FileType html setl foldexpr=HTMLFolds()
"
" autocmd FileType javascript,typescript,json setl foldmethod=syntax
" }}}


" Configure Theme
syntax enable " Enable syntax highlighting
set background=dark " Set the background to dark
colorscheme solarized " Set theme

" Configure Airline
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#vcs_priority = ["mercurial", "git"]
let g:airline#extensions#branch#displayed_head_limit = 10

" let g:airline#extensions#branch#use_vcscommand = 1
" Install Font and set the terminal to the same font cd ~/.vim/plugged/nerd-fonts/; ./install.sh SourceCodePro
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline_skip_empty_sections = 1 " Skips empty errors and warning sections if applicable
let g:airline#extensions#obsession#indicator_text = ''

let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'y'    : ['#(whoami)'],
      \'z'    : '#H'}



" Configure Neomake
let g:airline#extensions#neomake#error_symbol=' '
let g:airline#extensions#neomake#warning_symbol=' '
let g:neomake_warning_sign = {'text': '', 'texthl': 'NeomakeWarningSign'}
let g:neomake_error_sign = {'text': '', 'texthl': 'NeomakeErrorSign'}
let g:neomake_ft_maker_remove_invalid_entries = 0
autocmd! BufEnter,BufRead,BufWritePost * Neomake

" Automatically run these
" autocmd VimEnter * NERDTree "Automatically Open Nerd Tree
" autocmd VimEnter * Tagbar "Automatically Open Tagbar


" Configure Gist Vim
let g:gist_post_private = 1
let g:gist_get_multiplefile = 1

" Configure Ack
nnoremap <Leader>a :Ack!<Space>

" Make current window more obvious by turning off/adjusting some features in non-current
" windows.
if exists('+colorcolumn')
	autocmd BufEnter,FocusGained,VimEnter,WinEnter * if arithran#autocmds#should_colorcolumn() | let &l:colorcolumn=0 | endif
	autocmd FocusLost,WinLeave * if arithran#autocmds#should_colorcolumn() | let &l:colorcolumn=join(range(1, 255), ',') | endif
endif

" Override the Look and Feel (Must by after colorscheme)
" Italics start and end key sequences
set t_ZH=[3m
set t_ZR=[23m
" Make comments italic
highlight Comment cterm=italic 
" Make Background transparent
highlight Normal ctermbg=none 

" Abbreviations
iabbrev </ </<C-X><C-O> " auto complete tags

" CUSTOM FUNCTIONS {{{
if !exists("*AutoCorrectLastSpellingMistake") " Automatically fix last typo
	function AutoCorrectLastSpellingMistake()
		if !&binary && &filetype != 'diff'
			normal ms[s1z=`s
			" echo col(".") // Current col
			" echo col("$") // Total col
			" after correction move to total - current from the right
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
		:%s/$//
	endfunction
endif
if !exists("*ClearCache") " Clear cahe shell
	function ClearCache()
		echom system("../clear_cache.sh")
	endfunction
endif
if !exists("*GeneratePhpCtags") " Clear cahe shell
	function GeneratePhpCtags()
		echom system("ctags -R --languages=php .")
	endfunction
endif
if !exists("*Capitalise") " Capitalise the start of a word
	function Capitalise()
		" In a substitute command, place \U or \L before backreferences for the desired output. Everything 
		" after \U, stopping at \E or  \e, is converted to uppercase. Similarly, everything after \L, 
		" stopping at \E or \e, is converted to lowercase.
		" Alternatively, use \u to uppercase only the first character of what follows, or \l to lowercase 
		" only the first character.
		"
		" \< matches the start of a word
		" . matches the first character of a word
		" \u tells Vim to uppercase the following character in the substitution string (&)
		" & means substitute whatever was matched on the LHS
		:s/\<./\u&/g
	endfunction
endif

" Debugging
" =========
" To Debug Neomake
" let g:neomake_open_list = 2
" let g:neomake_verbose=3
" let g:neomake_logfile='/tmp/error.log'


" Archive
" =======
" if !exists("*TidyFunctionBrackets")
" 	function TidyFunctionBrackets()
" 		if !&binary && &filetype != 'diff'
" 			let colnumber1 = col('.')
" 			echo colnumber1
" 			normal ^
" 			let colnumber2 = col('.')
" 			echo colnumber2
"
" 			if colnumber1 == colnumber2
" 				echo "Moving Up"
" 				normal kJ
" 			else
" 				echo "This one is ok"
" 			endif
" 		endif
" 	endfunction
" endif
" }}}

