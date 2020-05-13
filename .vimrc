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
"
" 1. Install these interpreters and make sure they are in your $PATH
"    - python3,
"    - python2,
"    - ruby
"    - node
"
" 2. Install these providers:
"    - pip3 install neovim,
"    - pip2 install neovim,
"    - gem install neovim,
"    - npm install -g neovim
"
" 3. Install these tools and make sure they are executable from the CLI
"    - brew install git,
"    - brew install fzf,
"    - brew install the_silver_searcher
"    - brew install ctags
"
" 4. If you are using a terminal make sure you install the solarized colorscheme and set the correct font
"    - cd ~/.vim/plugged/nerd-fonts/; ./install.sh SourceCodePro
"

" PLUGINS ---------------------------------------
"
" If this is a Unix style OS, automatically download package manager on first boot
if has('unix')
	if !filereadable(expand("~/.vim/autoload/plug.vim"))
		echo "Downloading package manager"
		call system(expand("curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"))
		autocmd VimEnter * PlugInstall
	endif
endif

call plug#begin('~/.vim/plugged')
" Syntax
Plug 'sheerun/vim-polyglot'                                                    "  A collection of language packs for Vim.

" Themes & Fonts
Plug 'romainl/flattened'                                                       "  Theme for nvim
Plug 'vim-airline/vim-airline'                                                 "  Status line
Plug 'vim-airline/vim-airline-themes'                                          "  Themes for status line, g:airline_theme
Plug 'ryanoasis/vim-devicons'                                                  "  Adds custom icons to airline, NERDTree etc.

" Golang
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'buoto/gotests-vim', { 'do': 'go get -u github.com/cweill/gotests/...' }

" TDD/Unittests
Plug 'janko/vim-test'                                                          "  Run your tests at the speed of thought
Plug 'benmills/vimux'

" Workflow & Tools
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'                                                      "  Asynchronous Lint Engine
Plug 'scrooloose/nerdtree'                                                     "  A tree explorer plugin for vim.
Plug 'majutsushi/tagbar'                                                       "  Displays tags in a window, ordered by scope
Plug 'easymotion/vim-easymotion'                                               "  Vim motions on speed!
Plug 'tomtom/tcomment_vim'                                                     "  Code commenter
Plug 'itmammoth/doorboy.vim'                                                   "  Inserts matching brackets((){}[]) and quotations('`).
Plug 'godlygeek/tabular'                                                       "  Table creator and alignment plug-in
Plug 'SirVer/ultisnips'                                                        "  Snippet engine
Plug 'honza/vim-snippets'                                                      "  3rd party snippets for ultisnips
Plug 'tpope/vim-repeat'                                                        "  repeats the last command even if its not native with [.]
Plug 'tpope/vim-surround'                                                      "  Easily delete and change surroundings
Plug 'tpope/vim-unimpaired'                                                    "  Tpope's complementary pairs of mappings

" Tmux integration
Plug 'christoomey/vim-tmux-navigator'                                          "  Bind Tmux Keys with VIM
Plug 'edkolev/tmuxline.vim'                                                    "  Generate status line colours for tmux. To save this config run :TmuxlineSnapshot .tmuxline

" Git
Plug 'tpope/vim-fugitive'                                                      "  A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-rhubarb'                                                       "  Integrates fugitive's :Gbrowse with GitHub
Plug 'airblade/vim-gitgutter'                                                  "  Shows a git diff in the 'gutter'
Plug 'junegunn/gv.vim'                                                         "  A git commit browser.

" Searching
Plug 'mileszs/ack.vim'                                                         "  Search tool from Vim
Plug 'ctrlpvim/ctrlp.vim'                                                      "  Fuzzy finder for Files, Buffers, Tags
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()


" GENERAL SETTINGS ------------------------------
"
set nocompatible               " be iMproved, required
set hidden
let mapleader = ","            " Set the leader key
set colorcolumn=110            " Keep my lines 110 chars at most
set complete=.,w,b,u,t,k       " context-sensitive completion
set cursorline                 " adds a line for the cursor
set gdefault                   " sets global flag by default
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


" DISK SETTINGS ---------------------------------
"
" Some of the following setup is ignored for ROOT users (was causing some issues)
"
" setup dictionary storage (remembers words I've whitelisted, :help zg)
if filereadable(expand("~/Dropbox/vim/spell/en.utf-8.add " ))
	set spellfile=$HOME/Dropbox/vim/spell/en.utf-8.add
endif
" setup backup storage
if exists('$SUDO_USER')
	set nobackup
	set nowritebackup
else
	set backupdir=$HOME/.vim/tmp/backup//
	set backupdir+=.
	set backupskip=/tmp/*,/private/tmp/*
	set backup
	set writebackup
endif
" setup swap storage
if exists('$SUDO_USER')
	set noswapfile
else
	set directory=$HOME/.vim/tmp/swap//
	set directory+=.
	set swapfile
endif
" setup undo storage (remembers undo history forever)
if has('persistent_undo')
	if exists('$SUDO_USER')
		set noundofile
	else
		set undodir=$HOME/.vim/tmp/undo//
		set undodir+=.
		set undofile
	endif
endif
" setup viminfo storage (remembers command mode history forever)
if has('viminfo')
	if exists('$SUDO_USER')
		set viminfo=
	else
		set viminfo+=n$HOME/.vim/tmp/viminfo
	endif
endif


" PLUGIN SETTINGS -------------------------------
"
" fatih/vim-go
let g:go_jump_to_error = 0
let g:go_fmt_experimental = 1
let g:go_fmt_command = "goimports"
let g:go_gocode_unimported_packages = 1
let g:go_metalinter_command='golangci-lint'
let g:go_list_type = "quickfix"
let g:go_metalinter_enabled = [
	\ 'govet', 'gosimple', 'staticcheck', 'interfacer', 'unparam', 
	\ 'deadcode', 'errcheck', 'ineffassign', 'structcheck', 'typecheck', 'varcheck', 
	\ 'depguard', 'dupl', 'goconst', 'gocritic', 
	\ 'gocyclo', 'gofmt', 'goimports', 'golint', 'gosec', 'maligned', 'misspell', 
	\ 'nakedret', 'prealloc', 'scopelint', 'unconvert' 
	\ ]


" ctrlpvim/ctrlp.vim
nnoremap <silent> <C-b>s :CtrlPBuffer<CR>
nnoremap <silent> <C-b>L :b#<CR>
" Swap Delete Buffer and Toggle By File name bindings
let g:ctrlp_prompt_mappings = {
  \ 'ToggleByFname()':      ['<F7>'],
  \ 'PrtDeleteEnt()':       ['<c-d>'],
  \ }
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" dense-analysis/ale
let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#show_splits = 0  " don't show open splits in tabline when more than 1 tab
let g:airline#extensions#tabline#show_buffers = 0 " don't show open buffers in tabline when 1 tab
let g:ale_linters = {
	\		'go': ['golangci-lint']
	\	}
let g:ale_go_golangci_lint_package = 1
let g:ale_go_golangci_lint_options = "--tests=false --disable-all --enable ".join(g:go_metalinter_enabled,",").''

" airblade/vim-gitgutter
let g:gitgutter_diff_base = $REVIEW_BASE

" janko/vim-test
let test#strategy = "vimux"
let g:VimuxHeight = "15"
" Test the current function
nnoremap <silent> tn :TestNearest<CR>
" Test the current file
nnoremap <silent> tf :TestFile<CR>
" Close vim tmux runner opened by VimuxRunCommand
nnoremap <silent>tq :VimuxCloseRunner<CR>
" Zoom the runner pane (use <bind-key> z to restore runner pane)
nnoremap <silent>tz :call VimuxZoomRunner()<CR>

" mileszs/ack.vim
nnoremap <Leader>f :Ack! -i<Space>
nnoremap <Leader>F :Ack! <Space>
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" scrooloose/nerdtree
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

" easymotion/vim-easymotion
map  <Leader>w <Plug>(easymotion-w)
nmap <Leader>W <Plug>(easymotion-b)
let g:EasyMotion_skipfoldedline = 0 " Show motion keys on folds

" majutsushi/tagbar
map <leader>g :Tagbar<CR>
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }



" FORMATTING SETTINGS ---------------------------
"
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
" set winheight=5
" set winminheight=5
" set winheight=999

" CUSTOM MAPPINGS -------------------------------
"
" NORMAL MODE MAPPINGS
" --------------------
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
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Store relative line number jumps in the jumplist if they exceed a threshold.
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'

" Very Magic Search By Default
" :help magic
nnoremap / /\v

" Auto-correct the last spelling mistake
nnoremap <leader>l :call AutoCorrectLastSpellingMistake()<CR>


" VISUAL MODE MAPPINGS 
" -------------------- 
" Navigate windows while in Visual mode
xnoremap <C-h> <C-w>h
xnoremap <C-j> <C-w>j
xnoremap <C-k> <C-w>k
xnoremap <C-l> <C-w>l


" COMMAND MODE MAPPINGS
" ---------------------
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


" LEADER MODE MAPPINGS
" --------------------
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


" AUTOCMD MAPPINGS
" ----------------
augroup custom_filetypedetect
	" clear this group when re-sourcing .vimrc
	autocmd!

	" Toggle spell between INSERT and NORMAL modes
	autocmd InsertEnter * setlocal spell
	autocmd InsertLeave * setlocal nospell

	" Set Filetypes
	autocmd BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux

	" Set custom tab behavior
	autocmd BufNewFile,BufRead *.js setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
	autocmd BufNewFile,BufRead *.vue setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
	autocmd BufNewFile,BufRead *.sh setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
	autocmd BufNewFile,BufRead *.proto setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
	autocmd BufNewFile,BufRead *.yaml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

	autocmd FileType go nmap <silent> <Leader>a <Plug>(go-coverage-toggle)
	autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
augroup END

" THEME SETTINGS --------------------------------
syntax enable " Enable syntax highlighting
set t_Co=256                   " Set the color of the terminal to 256 bits
set background=dark " Set the background to dark
let g:solarized_diffmode="normal"
colorscheme flattened_dark
  set termguicolors


" Configure Airline
let g:airline_theme='solarized' " Set theme
let g:airline#extensions#whitespace#enabled = 0 " Don't show whitespace or indentation errors
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#displayed_head_limit = 10
let g:airline_skip_empty_sections = 1 " Skips empty errors and warning sections if applicable

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

" AUTO COMPLETION SETTINGS ----------------------
" neoclide/coc.nvim
let g:coc_global_extensions = [
	\'coc-marketplace',
	\'coc-go',
	\'coc-python',
	\'coc-tsserver',
	\'coc-eslint',
	\'coc-prettier',
	\'coc-json',
	\]

" Some servers have issues with backup files, see #649.
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


" CUSTOM FUNCTIONS ------------------------------
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
if !exists("*Capitalise") " Capitalise the start of a word
	function Capitalise()
		:s/\<./\u&/g
	endfunction
endif
