     filetype off
     call pathogen#infect()
     call pathogen#runtime_append_all_bundles()
     call pathogen#helptags()
     set nocompatible " explicitly get out of vi-compatible mode
     "set noexrc " don't use local version of .(g)vimrc, .exrc
     set t_Co=256  "Enables 256 colors in vim
     set timeout
     set timeoutlen=3000
     "set cpoptions=ces$ "used to add vi-compatible behavior.
     syntax on " syntax highlighting on
     "Get pathogen up and runing
     python import vim
     set path+="/usr/lib/python2.7/**"
     "Get filetype stuff
     "Add xptemplate global personal directory value
     if has("unix")
        set runtimepath+=~/.vim/xpt-personal
     endif
     filetype on
     filetype plugin on
     filetype plugin indent on " load filetype plugins/indent settings
     set ofu=syntaxcomplete#Complete
     set guioptions=Aiemrcg
     "Don't update the display while executing macros
     "set lazyredraw
     "Show what mode you are in
     set showmode
     set modeline
     set modelines=1
     set autochdir " always switch to the current file directory 
     " When opening a new line and no filetype specific indenting is enabled, keep the same indent as the line you're currently on.
     set autoindent
     set cmdheight=1
     set backspace=indent,eol,start " make backspace a more flexible
     set backup " make backup files
     set backupdir=~/.vim/backup " where to put backup files
     set clipboard+=vimclip " share windows clipboard
     set directory=~/.vim/tmp " directory to place swap files in
     set fileformats=unix,dos,mac " support all three, in this order
     set hidden " you can change buffers without saving
     set iskeyword+=_,$,@,%,# " none of these are word dividers 
     set mouse=a " use mouse everywhere
     "set mousemodel=popup
     set noerrorbells " don't make noise
     set ballooneval
     set balloondelay=300
     set wildmenu " turn on command line completion wild style
     " ignore these list file extensions
     set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,
                     \*.jpg,*.gif,*.png
     set wildmode=list:longest " turn on wild mode huge list
     " set cpoptions+=$
     let mapleader=","
     set complete=.,w,b,t,i,d
     " When completing by tag, show the whole tag, not just the function name
     set tags=~/mytags
     set tags+=$HOME/.vim/tags/python27.ctags
     set tags=tags;/
     set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
     set showfulltag
     " Automatically read a file that has changed on the disk
     set cursorline                  " highlight current line
     set autoread
     let g:pydiction_location = '~/.vim/ftplugin/complete-dict'
     let g:pydiction_menu_height = 20
     set history=100
     " Allow the cursor to go in to "invalid" places
     set virtualedit=all
     "Enable search highlighting
     set hlsearch
     set lines=50
     colorscheme railscasts2
     set background=dark
     " Enable Txtfmt formatting inside notes.
        setlocal filetype=notes.txtfmt
     " }
 " NERD Tree Plugin Settings {
    " Show the bookmarks table on startup
    let NERDTreeShowBookmarks=0

    " Don't display these kinds of files
    let NERDTreeIgnore=[ '\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$', '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$', '\.embed\.manifest$', '\.embed\.manifest.res$','\.intermediate\.manifest$', '^mt.dep$' ]
    " }
 " Minibuffer {
    let g:miniBufExplMapWindowNavVim = 1
    let g:miniBufExplMapWindowNavArrows = 1
    let g:miniBufExplMapCTabSwitchBufs = 1
    let g:miniBufExplModSelTarget = 1
    " }
 " xptemplate http://goo.gl/zRW9g
    let g:xptemplate_key = '<C-\>'
    let g:xptemplate_always_show_pum = 1
    let g:xptemplate_vars="email=vincent.vetsch@gmail.com&author=Vincent Vetsch"
 " Pymode {
    "Python Mode Plugin configuration
    let g:pymode_lint_write=1 " Enable pylint checking every save
    let g:pymode_doc=1 " Load show documentation plugin
    let g:pymode_doc_key='K' " Key for show python documentation
    let g:pymode_run=1  " Load run code plugin
    let g:pymode_run_key='<leader>r' " Key for run python code
    let g:pymode_lint=1 " Load pylint code plugin
    let g:pymode_lint_checker="pyflakes,pep8,mccabe" " Switch pylint, pyflakes, pep8, mccabe code-checkers
    let g:pymode_lint_ignore="E501,E201" " Skip errors and warnings
    let g:pymode_lint_select="" " Select errors and warnings
    let g:pymode_lint_onfly=1 " Run linter on the fly
    let g:pymode_lint_config="$HOME/.pylintrc" " Pylint configuration file
    let g:pymode_lint_write=1 " Check code every save
    let g:pymode_lint_cwindow=1 " Auto open cwindow if errors be finded
    let g:pymode_lint_message=1 " Show error message if cursor placed at the error line
    let g:pymode_lint_jump=1 " Auto jump on first error
    let g:pymode_lint_hold=1    " Hold cursor in current window when quickfix is open
    let g:pymode_lint_signs=1 " Place error signs
    let g:pymode_lint_mccabe_complexity=12 " Maximum allowed mccabe complexity
    let g:pymode_lint_minheight=6 " Minimal height of pylint error window
    let g:pymode_lint_maxheight=10 " Maximal height of pylint error window
    let g:pymode_rope=1 " Load rope plugin
    let g:pymode_rope_auto_project=1 " Auto create and open ropeproject
    let g:pymode_rope_enable_autoimport=1 " Enable autoimport
    " Auto generate global cache
        let g:pymode_rope_autoimport_generate=1
        let g:pymode_rope_autoimport_underlineds=0
        let g:pymode_rope_codeassist_maxfixes=10
        let g:pymode_rope_sorted_completions=1
        let g:pymode_rope_extended_complete=1
        let g:pymode_rope_autoimport_modules=["os","sys","shutil","datetime"]
        let g:pymode_rope_confirm_saving=1
        let g:pymode_rope_global_prefix="<C-x>p"
        let g:pymode_rope_local_prefix="<C-c>r"
        let g:pymode_rope_vim_completion=1
        let g:pymode_rope_guess_project=0
        let g:pymode_rope_goto_def_newwin=""
        let g:pymode_rope_always_show_complete_menu=1
    let g:pymode_folding=1 " Enable python folding
    let g:pymode_motion=1 " Enable python objects and motion
    let g:pymode_virtualenv=1 " Auto fix vim python paths if virtualenv enabled
    " # TODO -- add sys.paths
    let g:pymode_paths=['', '/usr/bin', '/usr/lib/python2.7', '/usr/lib/python2.7/plat-linux2', '/usr/lib/python2.7/lib-tk', '/usr/lib/python2.7/lib-old', '/usr/lib/python2.7/lib-dynload', '/usr/local/lib/python2.7/dist-packages', '/usr/lib/python2.7/dist-packages', '/usr/lib/python2.7/dist-packages/HTMLgen', '/usr/lib/python2.7/dist-packages/PIL', '/usr/lib/InsightToolkit/WrapITK/Python', '/usr/lib/pymodules/python2.7/gtk-2.0', '/usr/lib/python2.7/dist-packages/omniORB/COS', '/usr/lib/python2.7/dist-packages/gst-0.10', '/usr/lib/python2.7/dist-packages/gtk-2.0', '/usr/lib/pymodules/python2.7', '/usr/lib/pymodules/python2.7/input-pad-1.0', '/usr/lib/pymodules/python2.7/scim-0.1', '/usr/lib/python2.7/dist-packages/stfio', '/usr/lib/python2.7/dist-packages/ubuntu-sso-client', '/usr/lib/python2.7/dist-packages/ubuntuone-client', '/usr/lib/python2.7/dist-packages/ubuntuone-control-panel', '/usr/lib/python2.7/dist-packages/ubuntuone-couch', '/usr/lib/python2.7/dist-packages/ubuntuone-dev-tools', '/usr/lib/python2.7/dist-packages/ubuntuone-installer', '/usr/lib/python2.7/dist-packages/ubuntuone-storage-protocol', '/usr/lib/python2.7/dist-packages/wx-2.6-gtk2-unicode', '/usr/lib/python2.7/dist-packages/IPython/extensions']
    let g:pymode_breakpoint=1 " Load breakpoints plugin
    let g:pymode_breakpoint_key='<leader>b' " Key for set/unset breakpoint
    let g:pymode_utils_whitespaces=1 " Autoremove unused whitespaces
    let g:pymode_options_indent=1 " Set default pymode python indent options
    let g:pymode_options_other=1 " Set default pymode python other options
    let g:pymode_syntax=1 " Enable pymode's custom syntax highlighting
    let g:pymode_syntax_all=1 " Enable all python highlightings
    let g:pymode_syntax_print_as_function=1 " Highlight "print" as function
    let g:pymode_syntax_indent_errors=g:pymode_syntax_all " Highlight indentation errors
    let g:pymode_syntax_space_errors=g:pymode_syntax_all " Highlight trailing spaces
    let g:pymode_syntax_string_formatting=g:pymode_syntax_all " Highlight string formatting
     let g:pymode_syntax_string_format=g:pymode_syntax_all " Highlight str.format syntax
    let g:pymode_syntax_string_templates=g:pymode_syntax_all    " Highlight string.Template syntax
    let g:pymode_syntax_doctests=g:pymode_syntax_all    " Highlight doc-tests
    let g:pymode_syntax_builtin_objs=g:pymode_syntax_all    " Highlight builtin objects (__doc__, self, etc)
    let g:pymode_syntax_builtin_funcs=g:pymode_syntax_all    " Highlight builtin functions
    let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all    " Highlight exceptions
    let g:pymode_syntax_slow_sync=0    " For fast machines
 " Tagbar Configuration {
     let g:tagbar_foldlevel = 3
     let g:tagbar_expand = 1
     let g:tagbar_singleclick = 1
     " }
     "
 " Notes
    let g:notes_directory = '~/Documents/Notes' " The directory the notes will be stored
    let g:notes_suffix = '.note'
 " ConqueShell {
    let g:ConqueTerm_PyVersion = 2
    let g:ConqueTerm_EscKey = '<ESC>'
    let g:ConqueTerm_ToggleKey = '<F8>'
    let g:ConqueTerm_CWInsert = 0
    let g:ConqueTerm_InsertOnEnter = 0
    let g:ConqueTerm_ExecFileKey = '<F11>'
    let g:ConqueTerm_SendFileKey = '<F10>'
    let g:ConqueTerm_SendVisKey = '<F9>'
    let g:ConqueTerm_SendFunctionKeys = 1
    let g:ConqueTerm_FastMode = 1
    let g:ConqueTerm_ReadUnfocused = 1
    let g:ConqueTerm_InsertOnEnter = 1
    let g:ConqueTerm_PromptRegex = '^-->'
    let g:ConqueTerm_TERM = 'xterm'
    "}
 " Vim UI {
     " Powerline setup
     set encoding=utf-8
     set fillchars+=stl:\ ,stlnc:\ ,vert:\ ,
     set guifont=DroidSansMono\ 8
     let Powerline_symbols = 'compatible' " 'unicode'
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
     set nostartofline " leave my cursor where it was
     set novisualbell " don't blink
     set number " turn on line numbers
     set numberwidth=5 " We are good up to 99999 lines
     set report=0 " tell us when anything is changed via :...
     set ruler " Always show current positions along the bottom
     set scrolloff=10 " Keep 10 lines (top/bottom) for scope
     set shortmess=aOstT " shortens messages to avoid 'press a key' prompt
     set showcmd " show the command being typed
     set sidescrolloff=10 " Keep 5 lines at the size
     set statusline=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]
 " Text Formatting/Layout {"{"}
     set completeopt=menuone,preview "pop up menu for completions
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
   " List Buffers in Quickfix buffev
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
    " Buffer window Jump
        function! s:BufferWindowJump()
            let buffer = matchstr(getline('.'), '^\s*\(\d\+\)')
            exe 'bd! '.s:bufferWindowBuffer
            exe s:windowRestore
            exec s:originWindow.'wincmd w'
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
   " Move Lines
    function! MoveLineUp()
        call MoveLineOrVisualUp(".", "")
    endfunction

    function! MoveLineDown()
        call MoveLineOrVisualDown(".", "")
    endfunction

    function! MoveVisualUp()
        call MoveLineOrVisualUp("'<", "'<,'>")
        normal gv
    endfunction

    function! MoveVisualDown()
        call MoveLineOrVisualDown("'>", "'<,'>")
        normal gv
    endfunction

    function! MoveLineOrVisualUp(line_getter, range)
        let l_num = line(a:line_getter)
        if l_num - v:count1 - 1 < 0
            let move_arg = "0"
        else
            let move_arg = a:line_getter." -".(v:count1 + 1)
        endif
        call MoveLineOrVisualUpOrDown(a:range."move ".move_arg)
    endfunction

    function! MoveLineOrVisualDown(line_getter, range)
        let l_num = line(a:line_getter)
        if l_num + v:count1 > line("$")
            let move_arg = "$"
        else
            let move_arg = a:line_getter." +".v:count1
        endif
        call MoveLineOrVisualUpOrDown(a:range."move ".move_arg)
    endfunction

    function! MoveLineOrVisualUpOrDown(move_arg)
        let col_num = virtcol(".")
        execute "silent! ".a:move_arg
        execute "normal! ".col_num."|"
    endfunction

    nnoremap <silent> <A-k> :<C-u>call MoveLineUp()<CR>
    nnoremap <silent> <A-j> :<C-u>call MoveLineDown()<CR>
    inoremap <silent> <A-k> <C-o>:call MoveLineUp()<CR>
    inoremap <silent> <A-j> <C-o>:call MoveLineDown()<CR>
    "vnoremap <silent> AC-Up> :<C-u>call MoveVisualUp()<CR>
    "vnoremap <silent> AC-Down> :<C-u>call MoveVisualDown()<CR>
    xnoremap <silent> <A-k> :<C-u>call MoveVisualUp()<CR>
    xnoremap <silent> <A-j> :<C-u>call MoveVisualDown()<CR> " Mappings {
    " OmniComplete
    inoremap <Nul> <C-x><C-o>
    " TODO and FIXME> list of all open buffers
        nmap <Leader>dt "=strftime("%c")<cr>p
    " Switch and list buffers
        " nmap <C-F6> :ls<cr>
        nmap <C-F6> :call BufferWindow()<cr>
        nmap <C-SPACE> :call BufferWindow()<cr>
        nmap <F6> :bn<cr>
        nmap <S-F6> :bp<cr>
    " Tagbar vim class outline viewer
        nmap <Leader>tgb :TagbarToggle<CR>
    " Gundo application toggle
        nmap <Leader>gu :GundoToggle<CR>
    " Toggle the NERD Tree 
        nmap <Leader>nt :NERDTreeToggle<CR>
    " Tasklist Mappings
        map <Leader>tt :TaskList<CR>
    " ConqueShell Mappings (Need to remap the <leader> something
        nmap <leader>ctb :ConqueTermSplit bash
        nmap <leader>cti :ConqueTermSplit ipython
        nmap <leader>ctix :execute 'ConqueTermSplit ipython '.expand('%:p')
    "pdb setting : insert pdb breakpoints
        imap <S-F1> import pdb; pdb.set_trace()
        nmap <S-F1> import pdb; pdb.set_trace()
    "ipython.debugger breakpoint1
        imap <C-S-F1> import ipdb; ipdb.set_trace()
        nmap <C-S-F1> import ipdb; ipdb.set_trace()
        au BufRead *.py nmap <C-S-F5> :!python %<cr>
        au BufRead *.py nmap <C-F5> :!ipython %<cr>
    "Add a check mark ✓✓
        nmap <leader>v R✓<ESC>
        imap <>v <C-R>✓<ESC>
    " Show un printable characters
        nmap <leader>tl :set list!<cr>
        nmap <leader>p : set paste!<cr>
    " Find Double Words
        nmap <leader>du :/\(\<\w\+\>\)\_s*\1<cr>
    " cd to the directory containing the file in the buffer
        nmap  <Leader>cd :lcd %:h
    " Set up retabbing on a source file
        nmap  <Leader>rr :1,$retab
    " Make the directory that contains the file in the current buffer.
    " This is useful when you edit a file in a directory that doesn't
    " (yet) exist
        nmap  <Leader>md :!mkdir -p %:p:h
    " Create note from selection
        vmap <Leader>ns :NoteFromSelectedText<CR> 
    " Remove extra Whitespace
        nmap <Leader>w :call ToggleExtraWhitespace()<CR>
    " Move the cursor to the window left of the current one
        noremap <silent> <C-Right> :wincmd l<cr>
    " Move the cursor to the window right of the current one
        noremap <silent> <C-Left> :wincmd h<cr>
    " Move the cursor to the window below the current one
        noremap <silent> <C-Down> :wincmd j<cr>
    " Move the cursor to the window above the current one
        noremap <silent> <C-Up> :wincmd k<cr>
    " Move the cursor to the window right of the current one
        noremap <silent> <C-l> :wincmd l<cr>
        noremap <silent> <C-h> :wincmd h<cr>
    " Move the cursor to the window below the current one
        noremap <silent> <C-j> :wincmd j<cr>
    " Move the cursor to the window above the current one
        noremap <silent> <C-k> :wincmd k<cr>
    " Move the cursor to the window right of the current one
        noremap <silent> <C-Right> :wincmd l<cr>
    " Close the window below this one
        noremap <silent> ,c<Down> :wincmd j<cr>:close<cr>
    " Close the window above this one
        noremap <silent> ,c<Up> :wincmd k<cr>:close<cr>
    " Close the window to the left of this one
        noremap <silent> ,c<Left> :wincmd h<cr>:close<cr>
    " Close the window to the right of this one
        noremap <silent> ,c<Right> :wincmd l<cr>:close<cr>
    " Close the current window
        noremap <silent> ,cc :close<cr>
    " Move the current window to the right of the main Vim window
        noremap <silent> ,m<Right> <C-W>L
    " Move the current window to the top of the main Vim window
        noremap <silent> ,m<Up> <C-W>K
    " Move the current window to the left of the main Vim window
        noremap <silent> ,m<Left> <C-W>H
    " Move the current window to the bottom of the main Vim window
        noremap <silent> ,m<Down> <C-W>J
        map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>  " Edit a file in the same directory as the current buffer.
        map <leader>. :e %:p:h<CR> " Enter directory listing for the directory of/tag the current buffer
        map <leader>wn :new %:p:h<CR> " Create a new window with directory listing of current buffer
        map <leader>cd :cd %:p:h<CR> " Change global directory to the current directory of the current buffer
    " Let's make it easy to edit this file (mnemonic for the key sequence is 'e'dit 'v'imrc)
        nmap <silent> ,ev :e $MYVIMRC<cr>
    " And to source this file as well (mnemonic for the key sequence is 's'ource 'v'imrc)
        nmap <silent> ,sv :so $MYVIMRC<cr>
    " put the vim directives for my file editing settings in
        nmap <silent> ,vi ovim:set ts=2 sts=2 sw=2:<CR>vim600:fdm=marker fdl=1 fdc=0:<ESC>
    " Show all available VIM servers
        nmap <silent> ,ss :echo serverlist()<CR>
    " The following beast is something i didn't write... it will return the 
    " syntax highlighting group that the current "thing" under the cursor
    " belongs to -- very useful for figuring out what to change as far as 
    " syntax highlighting goes.
        nmap <silent> ,qq :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
    " Make shift-insert work like in Xterm
        map <S-Insert> <MiddleMouse>
        map! <S-Insert> <MiddleMouse>
    " set text wrapping toggles
        nmap <silent> ,ww :set invwrap<CR>:set wrap?<CR>
    " Search the current file for what's currently in the search register and display matches
        nmap <silent> ,gs :vimgrep /<C-r>// %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>
    " Search the current file for the word under the cursor and display matches
        nmap <silent> ,gw :vimgrep /<C-r><C-w>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>
    " Search the current file for the WORD under the cursor and display matches
        nmap <silent> ,gW :vimgrep /<C-r><C-a>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>
    " Swap two words
        nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'
    " Enter FUF File
        nmap <silent> <leader>ff :FufFile<CR>
    " Enter FUF Directory
        nmap <silent> <leader>fd :FufDir<CR>
    " Enter FUF Buffer
        nmap <silent> <leader>fb :FufBuffer<CR>

    " Enter CTRL-P
       
     " type table,,, to get <table></table>       ### Cool ###
       imap ,,, <esc>bdwa<<esc>pa><cr></<esc>pa><esc>kA
 " Abbreviations {
    " typos
        iabbr fi if
        iab Acheive    Achieve
        iab acheive    achieve
        iab Alos       Also
        iab alos       also
        iab Aslo       Also
        iab aslo       also
        iab Becuase    Because
        iab becuase    because
        iab Bianries   Binaries
        iab bianries   binaries
        iab Bianry     Binary
        iab bianry     binary
        iab Charcter   Character
        iab charcter   character
        iab Charcters  Characters
        iab charcters  characters
        iab Exmaple    Example
        iab exmaple    example
        iab Exmaples   Examples
        iab exmaples   examples
        iab Fone       Phone
        iab fone       phone
        iab Lifecycle  Life-cycle
        iab lifecycle  life-cycle
        iab Lifecycles Life-cycles
        iab lifecycles life-cycles
        iab vv         Vincent Vetsch
        iab ifm        if __name__ == '__main__':
        iab td         # TODO --
        iab fx         # FIXME --
        iab xx         # XXX --
        iab auth       @Author:\tVincent E Vetsch
        iab authe      @Email:\tvincent.vetsch@gmail.com
        iab imp        import
        iab c'         ''''''
        iab pp         print
        iab #!         #!/usr/bin/env python
        iab utf8       # coding: utf-8
 " Autocommands {
    "Setup for Task syntax and file type
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
    augroup END
    au FileType python inoremap :: <End>:
    "Removes any extra whitespace from the ends of lines
        au BufWritePre *.py normal m`:%s/\s\+$//e
        au FileType python setlocal omnifunc=pythoncomplete#Complete
        au FileType python setlocal expandtab
        au FileType python setlocal foldmethod=indent
        au FileType python setlocal tabstop=4
        au FileType python iab imp  import
        "au FileType python let b:surround_100 = "\"\"\" \r \"\"\""
        au FileType python setlocal efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
        au FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
        au FileType perl,python abbr sefl self
        au FileType perl,python abbr sf self
        au FileType perl,python abbr sefd self
        au FileType perl,python abbr seff self
        au FileType python nmap <buffer> <Leader>l :PyLint<CR>
        au Filetype python let g:pyref_mapping = 'KK'
        au FileType python map <C-L> :python LP_python_import_search()
        au FileType doctest map <C-L> :python LP_python_import_search()
        au FileType c,h,cpp,python,vala,javascript hi ExtraWhitespace ctermbg=red
        au FileType c,h,cpp,python,vala,javascript match ExtraWhitespace /\s\+\%#\@<!$/
