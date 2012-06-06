 " Basics {
     set nocompatible " explicitly get out of vi-compatible mode
     set noexrc " don't use local version of .(g)vimrc, .exrc
     "set background=dark " we plan to use a dark background
     "Enables 256 colors in vim
     set t_Co=256
     set timeoutlen=1000
     set cpoptions=aABceFsmq
     "             |||||||||
     "             ||||||||+-- When joining lines, leave the cursor 
     "             |||||||      between joined lines
     "             |||||||+-- When a new match is created (showmatch) 
     "             ||||||      pause for .5
     "             ||||||+-- Set buffer options when entering the 
     "             |||||      buffer
     "             |||||+-- :write command updates current file name
     "             ||||+-- Automatically add <CR> to the last line 
     "             |||      when using :@r
     "             |||+-- Searching continues at the end of the match 
     "             ||      at the cursor position
     "             ||+-- A backslash has no special meaning in mappings
     "             |+-- :write updates alternative file name
     "             +-- :read updates alternative file name
     syntax on " syntax highlighting on
     "Get pathogen up and runing
     filetype off
     call pathogen#infect()
     call pathogen#runtime_append_all_bundles()
     call pathogen#helptags()
     "Get filetype stuff
     filetype on
     filetype plugin on
     filetype plugin indent on " load filetype plugins/indent settings
     set ofu=syntaxcomplete#Complete
     "Don't update the display while executing macros
     set lazyredraw
     "Show what mode you are in
     set showmode
     set modeline
     set modelines=3
     set autochdir " always switch to the current file directory 
     " When opening a new line and no filetype specific indenting is enabled, keep the same indent as the line you're currently on.
     set autoindent
     set cmdheight=2
     set backspace=indent,eol,start " make backspace a more flexible
     set backup " make backup files
     set backupdir=~/.vim/backup " where to put backup files
     set clipboard+=vimclip " share windows clipboard
     set directory=~/.vim/tmp " directory to place swap files in
     set fileformats=unix,dos,mac " support all three, in this order
     set hidden " you can change buffers without saving
     set iskeyword+=_,$,@,%,# " none of these are word dividers 
     set mouse=a " use mouse everywhere
     set noerrorbells " don't make noise
     set wildmenu " turn on command line completion wild style
     " ignore these list file extensions
     set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,
                     \*.jpg,*.gif,*.png
     set wildmode=list:longest " turn on wild mode huge list
     set cpoptions+=$
     let mapleader=","
     set complete=.,w,b,t,i,d
     " When completing by tag, show the whole tag, not just the function name
     set tags=~/mytags
     set showfulltag
     " Automatically read a file that has changed on the disk
     set cursorline                  " highlight current line
     set autoread
     "set spell
     set guioptions-=T
     set history=100
     " Allow the cursor to go in to "invalid" places
     "set virtualedit=all
     "Enable search highlighting
     set hlsearch
     set lines=50
     colorscheme railscasts
     set background=dark
     " }
 " NERD Tree Plugin Settings {
    " Toggle the NERD Tree on an off with F7
    nmap <F7> :NERDTreeToggle<CR>

    " Close the NERD Tree with Shift-F7
    nmap <S-F7> :NERDTreeClose<CR>

    " Show the bookmarks table on startup
    let NERDTreeShowBookmarks=1

    " Don't display these kinds of files
    let NERDTreeIgnore=[ '\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$', '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$', '\.embed\.manifest$', '\.embed\.manifest.res$','\.intermediate\.manifest$', '^mt.dep$' ]
    " }
 " Minibuffer {
    let g:miniBufExplMapWindowNavVim = 1
    let g:miniBufExplMapWindowNavArrows = 1
    let g:miniBufExplMapCTabSwitchBufs = 1
    let g:miniBufExplModSelTarget = 1
    " }
 " Pymode {
    "Python Mode Plugin configuration

    " Enable pylint checking every save
    let g:pymode_lint_write = 1

    " Load show documentation plugin
    let g:pymode_doc = 1

    " Key for show python documentation
    let g:pymode_doc_key = 'K'

    " Load run code plugin
    let g:pymode_run = 1

    " Key for run python code
    let g:pymode_run_key='<leader>r'

    " Load pylint code plugin
    let g:pymode_lint=1

    " Switch pylint, pyflakes, pep8, mccabe code-checkers
    " Can have multiply values "pep8,pyflakes,mcccabe"
    let g:pymode_lint_checker="pyflakes,pep8,mccabe"

    " Skip errors and warnings
    " E.g. E501,W002, E2,W (Skip all Warnings and Errors startswith E2) and etc
    let g:pymode_lint_ignore="E501"

    " Select errors and warnings
    " E.g. "E4,W"
    let g:pymode_lint_select=""

    " Run linter on the fly
    let g:pymode_lint_onfly=0

    " Pylint configuration file
    " If file not found use 'pylintrc' from python-mode plugin directory
    let g:pymode_lint_config="$HOME/.pylintrc"

    " Check code every save
    let g:pymode_lint_write=1

    " Auto open cwindow if errors be finded
    let g:pymode_lint_cwindow=1

    " Show error message if cursor placed at the error line
    let g:pymode_lint_message=1

    " Auto jump on first error
    let g:pymode_lint_jump=0

    " Hold cursor in current window
    " when quickfix is open
    let g:pymode_lint_hold=0

    " Place error signs
    let g:pymode_lint_signs=1

    " Maximum allowed mccabe complexity
    let g:pymode_lint_mccabe_complexity=12

    " Minimal height of pylint error window
    let g:pymode_lint_minheight=6

    " Maximal height of pylint error window
    let g:pymode_lint_maxheight=10

    " Load rope plugin
    let g:pymode_rope=1

    " Auto create and open ropeproject
    let g:pymode_rope_auto_project=1

    " Enable autoimport
    let g:pymode_rope_enable_autoimport=1

    " Auto generate global cache
    let g:pymode_rope_autoimport_generate=1

    let g:pymode_rope_autoimport_underlineds=0

    let g:pymode_rope_codeassist_maxfixes=10

    let g:pymode_rope_sorted_completions=1

    let g:pymode_rope_extended_complete=1

    let g:pymode_rope_autoimport_modules=["os","shutil","datetime"]

    let g:pymode_rope_confirm_saving=1

    let g:pymode_rope_global_prefix="<C-x>p"

    let g:pymode_rope_local_prefix="<C-c>r"

    let g:pymode_rope_vim_completion=1

    let g:pymode_rope_guess_project=0

    let g:pymode_rope_goto_def_newwin=""

    let g:pymode_rope_always_show_complete_menu=1

    " Enable python folding
    let g:pymode_folding = 1

    " Enable python objects and motion
    let g:pymode_motion = 1

    " Auto fix vim python paths if virtualenv enabled
    let g:pymode_virtualenv = 1

    " Additional python paths
    let g:pymode_paths = []

    " Load breakpoints plugin
    let g:pymode_breakpoint = 1

    " Key for set/unset breakpoint
    let g:pymode_breakpoint_key = '<leader>b'

    " Autoremove unused whitespaces
    let g:pymode_utils_whitespaces = 1

    " Set default pymode python indent options
    let g:pymode_options_indent = 1

    " Set default pymode python other options
    let g:pymode_options_other = 1

    " Enable pymode's custom syntax highlighting
    let g:pymode_syntax = 1

    " Enable all python highlightings
    let g:pymode_syntax_all = 1

    " Highlight "print" as function
    let g:pymode_syntax_print_as_function = 0

    " Highlight indentation errors
    let g:pymode_syntax_indent_errors = g:pymode_syntax_all

    " Highlight trailing spaces
    let g:pymode_syntax_space_errors = g:pymode_syntax_all

    " Highlight string formatting
    let g:pymode_syntax_string_formatting = g:pymode_syntax_all

    " Highlight str.format syntax
    let g:pymode_syntax_string_format = g:pymode_syntax_all

    " Highlight string.Template syntax
    let g:pymode_syntax_string_templates = g:pymode_syntax_all

    " Highlight doc-tests
    let g:pymode_syntax_doctests = g:pymode_syntax_all

    " Highlight builtin objects (__doc__, self, etc)
    let g:pymode_syntax_builtin_objs = g:pymode_syntax_all

    " Highlight builtin functions
    let g:pymode_syntax_builtin_funcs = g:pymode_syntax_all

    " Highlight exceptions
    let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all

    " For fast machines
    let g:pymode_syntax_slow_sync = 0
 " Tagbar Configuration {
     let g:tagbar_foldlevel = 3
     let g:tagbar_expand = 1
     let g:tagbar_singleclick = 1
     " }
 " Vim UI {
     " Powerline setup
     set encoding=utf-8
     set fillchars+=stl:\ ,stlnc:\ 
     set guifont=DroidSansMono\ 8
     let Powerline_symbols = 'unicode'
     "let g:Powerline_symbols = 'fancy'
     set incsearch " BUT do highlight as you type you 
                    " search phrase
     set laststatus=2 " always show the status line
     set linespace=0 " don't insert any extra pixel lines 
                      " betweens rows
     set list " we do what to show tabs, to ensure we get them 
               " out of my files
     set listchars=tab:>-,trail:- " show tabs and trailing 
     set matchtime=5 " how many tenths of a second to blink 
                      " matching brackets for
     set nohlsearch " do not highlight searched for phrases
     set nostartofline " leave my cursor where it was
     set novisualbell " don't blink
     set number " turn on line numbers
     set numberwidth=5 " We are good up to 99999 lines
     set report=0 " tell us when anything is changed via :...
     set ruler " Always show current positions along the bottom
     set scrolloff=10 " Keep 10 lines (top/bottom) for scope
     set shortmess=aOstT " shortens messages to avoid 
                          " 'press a key' prompt
     set showcmd " show the command being typed
     set showmatch " show matching brackets
     set sidescrolloff=10 " Keep 5 lines at the size
     set statusline=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]
 " Text Formatting/Layout {"{"}
     set completeopt=longest,menuone "pop up menu for completions
     set expandtab " no real tabs please!
     set formatoptions=rq " Automatically insert comment leader on return, 
                           " and let gq format comments
     set ignorecase " case insensitive by default
     set infercase " case inferred by default
     " set nowrap " do not wrap line
     set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
     set smartcase " if there are caps, go case-sensitive
     set shiftwidth=4 " auto-indent amount when using cindent, 
                       " >>, << and stuff like that
     set softtabstop=4 " when hitting tab or backspace, how many spaces 
                        "should a tab be (see expandtab)
     set tabstop=8 " real tabs should be 8, and they will show with 
                    " set list on
 " Functions {
    "Snipple {
    com! Snippets call Snipple()
    function! Snipple()
        for myfiletype in split(&ft, "\\.")
            exec "split ~/.vim/snippets/" .myfiletype. ".snippets"
        endfor
    endfunc
    "}
    "Update Tags
    function! UPDATE_TAGS()
        let _f_ = expand("%:p")
        let _cmd_ = '"ctags -a " '
        let _resp = system(_cmd_)
        unlet _cmd_
        unlet _f_
        unlet _resp
    endfunction
    au BufWrite *.cpp, *.h, *.c, *.py call UPDATE_TAGS()
    
    "List Buffers in Quickfix buffev
    function s:ListBuffers() 
                let save_more = &more
                set nomore
                redir @"
                buffers
                redir END
                let &more = save_more 
                new
                0putnmap <F2> :ls<CR>:b
        endfunction
        command -bar -nargs=0 LBuf call s:ListBuffers()
        map <S-F11> :LBuf<CR>
   function! s:BufferWindowJump()
      let buffer = matchstr(getline('.'), '^\s*\(\d\+\)')
      exe 'bd! '.s:bufferWindowBuffer
      exe s:windowRestore
      exec s:originWindow.'wincmd w"
      exec 'buffer '.buffer
   endfunction
   
   " BufferWindow - Creates a buffer window with a list of current buffers
   function! BufferWindow()
      let s:windowRestore = winrestcmd()
      let s:originWindow = winnr()
      let originBuffer = bufnr('%')

      redir => buffersOutput
      silent! buffers
      redir END

      let lines = split(buffersOutput, '\n')
      exe 'bot ' . min([20, len(lines)]) . ' new'
      call setline(1, lines)
      call search('^\s*'.originBuffer, 'w')
      let s:bufferWindowBuffer = bufnr('%')

      nmap <buffer><silent> q    :bd!<cr>
      nmap <buffer><silent> <cr> :call <SID>BufferWindowJump()<CR>
    endfunction

       
    "ToggleExtraWhitespace {
    function! ToggleExtraWhitespace()
        if !exists("s:hi_whitespace")
            let s:hi_whitespace = 1
        endif
        if s:hi_whitespace == 0
            hi ExtraWhitespace ctermbg=red
            let s:hi_whitespace = 1
        else
            hi ExtraWhitespace ctermbg=none
            hi ExtraWhitespace ctermfg=none
            let s:hi_whitespace = 0
        endif
    endfunction

   nnoremap <Leader>w :call ToggleExtraWhitespace()<CR>
    au FileType c,h,cpp,python,vala,javascript hi ExtraWhitespace ctermbg=red
    au FileType c,h,cpp,python,vala,javascript match ExtraWhitespace /\s\+\%#\@<!$/
    " }
 " Mappings {
    " TODO and FIXME list of all open buffers
    nmap <F2> :GrepBuffer -w #TODO:<cr>
    nmap <F5> "=strftime("Completed: %c")<cr>p
    imap <F5> <C-R>=strftime("Completed:  %c")<cr>
    nmap <S-F5> i#TODO:  
    imap <S-F5> <C-R>"#TODO:  
    nmap <F3> :GrepBuffer -w #FIXME:<cr>
    nmap <S-F2> :GrepBuffer -w #TODO-C:<cr>
    nmap <S-F3> :GrepBuffer -w #FIXME-C:<cr>
    "Switch and list buffers
    nmap <C-F6> :ls<cr>
    nmap <C-F6> :call BufferWindow()<cr>
    nmap <F6> :bn<cr>
    nmap <S-F6> :bp<cr>
    "Tagbar vim class outline viewer
    nmap <F8> :TagbarToggle<cr>
    nnoremap <F9> :GundoToggle<cr>
    " Tasklist
    " inoremap <silent> <buffer> <C-D-CR> <ESC>:call Toggle_task_status()<CR>i
    " noremap <silent> <buffer> <C-D-CR> :call Toggle_task_status()<CR>
    "Add a check mark ✓✓
    nmap <leader>v R✓<ESC>
    imap <leader>v <C-R>✓<ESC>
    " ???
    nmap <LocalLeader>tl :set list!<cr>
    " Set paste to ",p"
    nmap <leader>p : set paste!<cr>
    " cd to the directory containing the file in the buffer
    nmap  ,cd :lcd %:h
    " Set up retabbing on a source file
    nmap  ,rr :1,$retab
    " Make the directory that contains the file in the current buffer.
    " This is useful when you edit a file in a directory that doesn't
    " (yet) exist
    nmap  ,md :!mkdir -p %:p:h

    " space / shift-space scroll in normal mode
    noremap <S-space> <C-b>
    noremap <space> <C-f>
    nnoremap <space> za
    vnoremap <space> zf
    " Move the cursor to the window left of the current one
    noremap <silent> <C-Left> :wincmd h<cr>
    " Move the cursor to the window below the current one
    noremap <silent> <C-Down> :wincmd j<cr>
    " Move the cursor to the window above the current one
    noremap <silent> <C-Up> :wincmd k<cr>
    " Move the cursor to the window right of the current one
    noremap <silent> <C-Right> :wincmd l<cr>
    " Close the window below this one
    "noremap <silent> ,cj :wincmd j<cr>:close<cr>
    " Close the window above this one
    "noremap <silent> ,ck :wincmd k<cr>:close<cr>
    " Close the window to the left of this one
    "noremap <silent> ,ch :wincmd h<cr>:close<cr>
    " Close the window to the right of this one
    "noremap <silent> ,cl :wincmd l<cr>:close<cr>
    " Close the current window
    noremap <silent> ,cc :close<cr>
    " Move the current window to the right of the main Vim window
    "noremap <silent> ,ml <C-W>L
    " Move the current window to the top of the main Vim window
    "noremap <silent> ,mk <C-W>K
    " Move the current window to the left of the main Vim window
    "noremap <silent> ,mh <C-W>H
    " Move the current window to the bottom of the main Vim window
    "noremap <silent> ,mj <C-W>J
    " Let's make it easy to edit this file (mnemonic for the key sequence is 'e'dit 'v'imrc)
    nmap <silent> ,ev :e $MYVIMRC<cr>
    " And to source this file as well (mnemonic for the key sequence is 's'ource 'v'imrc)
    nmap <silent> ,sv :so $MYVIMRC<cr>
 " Abbreviations {
    " typos
    iabbr slef self
    iabbr sefl self
    iabbr form from
    iabbr fi if
" Autocommands {
     au BufNewFile,BufRead todo.txt,*.task,*.tasks  setfiletype task
     au BufNewFile,BufRead todo.txt,*.task,*.tasks set syntax=task.vim
    augroup task
        au BufReadPre * setlocal textwidth=70
        au BufReadPre * setlocal foldenable
        au BufReadPre * setlocal wrap
        au BufReadPre * setlocal linebreak
        au BufReadPre,BufRead * setlocal textwidth=0
        au BufReadPre,BufRead * setlocal wrapmargin=0
        au BufReadPre * setlocal foldmethod=indent
        au BufReadPre * setlocal expandtab
        "augroup END
     au FileType python inoremap :: <End>:
     "Removes any extra whitespace from the ends of lines
     au BufWritePre *.py normal m`:%s/\s\+$//e
     au FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
     au FileType python setlocal omnifunc=pythoncomplete#Complete
     au FileType python setlocal expandtab
     au FileType python setlocal foldmethod=indent
     au FileType python setlocal tabstop=4
     au FileType python setlocal makeprg=python\ %
     " Error Formatting
     au FileType python setlocal efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
     au FileType python let python_highlight_all = 1
     au FileType python let b:surround_100 = "\"\"\" \r \"\"\""
     au FileType perl,python abbr sefl self
     au FileType perl,python abbr sf self
     au FileType python nmap <buffer> <leader>l :PyLint<CR>

