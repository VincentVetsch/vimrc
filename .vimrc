" General Settings
    set noexrc " don't use local version of .(g)vimrc, .exrc
    "set cpoptions=ces$ "used to add vi-compatible behavior.
    filetype off
    execute pathogen#infect()
    call pathogen#runtime_append_all_bundles()
    call pathogen#helptags()
    set nocompatible " explicitly get out of vi-compatible mode
    set timeout
    set timeoutlen=5000
    syntax on " syntax highlighting on
    "Get pathogen up and runing
    python import vim
    set path+="/usr/lib/python2.7/**"
    set path+="/home/vince/bin"
    set path+="/home/vince/Projects/**"
    set path+="/home/vince/Projects/OffSite/go/bin/"
    "Get filetype stuff
    "Add xptemplate global personal directory value
    if has("unix")
        set runtimepath+=~/.vim/xpt-personal
    endif
    set rtp+=$GOROOT/misc/vim
    filetype on
    filetype plugin on
    filetype plugin indent on " load filetype plugins/indent settings
    set ofu=syntaxcomplete#Complete
    set guioptions=Aiecg
    "Don't update the display while executing macros
    "set lazyredraw
    "Show what mode you are in
    set showmode
    "set modeline
    set modelines=1
    " always switch to the current file directory
    set autochdir
    set autowriteall
    " When opening a new line and no filetype specific indenting is enabled,
    " keep the same indent as the line you're currently on.
    set autoindent
    set thesaurus+=~/.vim/mthesaur.txt
    set cmdheight=1
    ""set colorcolumn=80
    set backspace=indent,eol,start " make backspace a more flexible
    ""highlight ColorColumn ctermbg=55
    set backup " make backup files
    set backupdir=~/.vim/backup " where to put backup files
    set clipboard=unnamed " share windows clipboard
    set directory=~/.vim/tmp " directory to place swap files in
    set fileformats=unix,dos,mac " support all three, in this order
    set hidden " you can change buffers without saving
    set iskeyword+=_,$,@,%,# " none of these are word dividers 
    set mouse=a " use mouse everywhere
    "set mousemodel=popup
    set noerrorbells " don't make noise
    "set ballooneval
    "set balloondelay=300
    set wildmenu " turn on command line completion wild style
    " ignore these list file extensions
    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,
                     \*.jpg,*.gif,*.png
    set wildmode=list:longest " turn on wild mode huge list
    " set cpoptions+=$
    let mapleader=","
    set complete=.,w,b,t,i,d
    " When completing by tag, show the whole tag, not just the function name
    set tags=~/tags
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
    set t_Co=256
    if (&t_Co == 256 || &t_Co == 88) && !has('gui_running') &&
        \ filereadable(expand("$HOME/.vim/plugin/guicolorscheme.vim"))
        runtime! plugin/guicolorscheme.vim
        GuiColorScheme railscasts2
    else
        set lines=50
        colorscheme railscasts2
    endif
    " Enable Txtfmt formatting inside notes.
    setlocal filetype=notes.txtfmt
    " Setup browsers
        set isfname-=. isfname+=.
        set isfname-=? isfname+=?
        set isfname-=& isfname+=&
        let g:Browser_console = 'w3m'
        let g:Browser_x = 'chromium-browser'
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
    let g:xptemplate_snippet_folders = [ '~/.vim/personal/ftplugin/' ]
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
" Setup gist
    let g:gist_browser_command = 'w3m %URL%'
    let g:gist_open_browser_after_post = 1
    let g:gist_show_privates = 1
    let g:gist_clip_command = 'xclip -selection clipboard'
    let g:gist_use_password_in_gitconfig = 1
" Gist commands
    "List my gist's
    :command! GistList :Gist -l
    "List List everyone's gists
    :command! GistPublicList :Gist -la
    "Post Selected text
    :command! GistPostSelection :'<,'>Gist
    "Post buffer"
    :command! GistPostBuffer :Gist
    "Post all buffers"
    :command! GistPostAllBuffers :Gist -m
" Setup HTML Plugins
    let g:html_indent_inctags = "html,body,head,p,tbody,div"
    let g:html_indent_script1 = "inc"
    let g:html_indent_style1  = "inc"
" Powerline setup
    set encoding=utf-8
    set fillchars+=stl:\ ,stlnc:\ ,vert:\ ,
    "set fillchars=diff:⣿,vert:│
    set guifont=DroidSansMono\ 10
    let Powerline_symbols = 'compatible' " 'unicode' 'fancy'
    set statusline=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]
" Vim UI {
     set incsearch " BUT do highlight as you type you search phrase
     set laststatus=2 " always show the status line
     set linespace=0 " don't insert any extra pixel lines betweens rows
     set list " we do what to show tabs, to ensure we get them  out of my files
     set listchars=tab:>-,trail:- " show tabs and trailing
     set matchtime=5 " how many tenths of a second to blink matching brackets for
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
     set completeopt=longest,menuone,preview "pop up menu for completions
     set expandtab " no real tabs please!
     set formatoptions=rq " Automatically insert comment leader on return, and let gq format comments
     set ignorecase " case insensitive by default
     set infercase " case inferred by default
     set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
     set smartcase " if there are caps, go case-sensitive
     set shiftwidth=4 " auto-indent amount when using cindent, >>, << and stuff like that
     set softtabstop=4 " when hitting tab or backspace, how many spaces should a tab be
     set tabstop=8 " real tabs should be 8, and they will show with 
" Functions
    " Folding
            function! MyFoldText()
                let nl = v:foldend - v:foldstart + 1
                let comment = substitute(getline(v:foldstart),"^ *","",1)
                let linetext = substitute(getline(v:foldstart+1),"^ *","",1)
                let txt = '+ ' . linetext . ' : "' . comment . '" : length ' . nl
                return txt
            endfunction
            set fillchars="fold: "
            set foldtext=MyFoldText()
    " Update Tags
            function! UPDATE_TAGS()
                let _f_ = expand("%:p")
                let _cmd_ = '"ctags -aR " '
                let _resp = system(_cmd_)
                unlet _cmd_
                unlet _f_
                unlet _resp
            endfunction
            au BufWrite *.cpp, *.h, *.c, *.py, *.html, *.js call UPDATE_TAGS()
    " List Buffers in Quickfix buffev
            function s:ListBuffers()
                let save_more = &more
                set nomore
                redir @"
                buffers
                redir END
                let &more = save_more
                new
                putnmap <F2> :ls<CR>:b
                " 0putnmap <F2> :ls<CR>:b
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
    " Toggle Line Numbering
            function! NumberToggle()
                if(&relativenumber == 1)
                    set number
                else
                    set relativenumber
                endif
            endfunction
    "  Get Get Visual rand and perform substitution
        function! GetVisual() range
            let reg_save = getreg('"')
            let regtype_save = getregtype('"')
            let cb_save = &clipboard
            set clipboard&
            normal! ""gvy
            let selection = getreg('"')
            call setreg('"', reg_save, regtype_save)
            let &clipboard = cb_save
            return selection
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
" Mappings
    " Select text object in visual mode and perform a replace
        vmap <Leader>srr :%s/<c-r>=GetVisual()<cr>/
        vnoremap <Leader>sr "hy:%s/<C-r>h//gc<left><left><left>
    " Close all other folds
        nnoremap <Leader>z zMzvzz
    " Use c-\ to do c-] but open it in a new split.
        nnoremap <c-\> <c-w>v<c-]>zvzz
    " Keep search matches in the middle of the window.
        nnoremap n nzzzv
        nnoremap N Nzzzv
    " Same when jumping around
        nnoremap g; g;zz
        nnoremap g, g,zz
        nnoremap <c-o> <c-o>zz
    " Easier to type, and I never use the default behavior.
        noremap H ^
        noremap L $
        vnoremap L g_ 
    "Delete to end of line
        nnoremap D d$
    "Delete to beginning of line
        nnoremap DB d0
    "Clear Matches
        noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>
    "Git Mappings
        noremap <Leader>bgw :bufdo Gwrite<CR>
        noremap <Leader>gww :Gwrite<CR>
        noremap <Leader>grr :Gread<CR>
        noremap <Leader>gss :Gstatus<CR>
        noremap <Leader>gcc :Gcommit<CR>
        noremap <Leader>gl :Glog<CR>
        noremap <Leader>gk :!gitk<CR>
        noremap <Leader>gp :Git push origin master<CR>
    " Source
        vnoremap <leader>S y:execute @@<cr>:echo 'Sourced selection.'<cr>
        nnoremap <leader>S ^vg_y:execute @@<cr>:echo 'Sourced line.'<cr>
    " Search for selected text, forwards or backwards.
        vnoremap <silent> * :<C-U>
            \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
            \gvy/<C-R><C-R>=substitute(
            \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
            \gV:call setreg('"', old_reg, old_regtype)<CR>
        vnoremap <silent> # :<C-U>
            \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
            \gvy?<C-R><C-R>=substitute(
            \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
            \gV:call setreg('"', old_reg, old_regtype)<CR>
    " Grep buffers for a string
        nnoremap gp :GrepBuffer <CR>
    " Search Chapters and Psalms
        nnoremap <Leader>ps :/\cPSALM 
        nnoremap <LEADER>ch :/\cCHAPTER 
    " Open Experiment.notes
        nnoremap <Leader>ex :e ~/Documents/Notes/Experiment.note<CR>
    " Select to begining
        nnoremap <Leader>vb v0
    " Select to end
        nnoremap <Leader>ve v$
    " Select All
        nnoremap <Leader>va 0GVgg
    " Go Compile and run commands
        nnoremap <Leader>goc :!go build %<CR>
        nnoremap <Leader>gor :!go run %<CR>
    " Get list of files
        nnoremap <Leader>ls :r ! ls -d -1 $PWD/**
    " Open Bookmarks
        nnoremap <Leader>bb :e ~/Documents/Notes/Bookmarks.note<CR>
    " On Linux, open URL under cursor in chromium.
        nnoremap <silent> go :silent !xdg-open <cfile> &<CR>
        nnoremap <silent> gO :update<Bar>silent !xdg-open %:p &<CR>
    " Goto Next buffer
        nnoremap <silent> gb :bn<CR>
    " Goto Previous buffers
        nnoremap <silent> gB :bp<CR>
    " Delete buffers
        nnoremap <silent> bd :bd<CR>
    " Create a new file from a word under cursor
        nnoremap <silent> gn :e <cfile><CR>
    " Toggle Relative or absolute line numbering
        nnoremap <Leader>nu :call NumberToggle()<CR>
    " Toggle Spelling
        nnoremap <Leader>ss :set spell!<CR>
    " Force Saving Files the Require Root Permission
        cmap w!! %!sudo tee > /dev/null %
    " Reselect visual block after indent and outdent
        vnoremap < <gv
        vnoremap > >gv
    " Map sotr function to a key
       vnoremap <Leader>s :sort<CR>
    " Easier formatting of paragraphs
        vmap Q gq
        nmap Q gqap
    " Move selected lines up or down
        nnoremap <silent> <C-k> :<C-u>call MoveLineUp()<CR>
        nnoremap <silent> <C-j> :<C-u>call MoveLineDown()<CR>
        inoremap <silent> <C-k> <C-o>:call MoveLineUp()<CR>
        inoremap <silent> <C-j> <C-o>:call MoveLineDown()<CR>
        xnoremap <silent> <C-k> :<C-u>call MoveVisualUp()<CR>
        xnoremap <silent> <C-j> :<C-u>call MoveVisualDown()<CR>
        "vnoremap <silent> AC-Up> :<C-u>call MoveVisualUp()<CR>
        "vnoremap <silent> AC-Down> :<C-u>call MoveVisualDown()<CR>
    " OmniComplete
        inoremap <Nul> <C-x><C-o>
    " TODO and FIXME> list of all open buffers
        nmap <Leader>dt "=strftime("%c")<cr>p
    " Switch and list buffers
        " nmap <C-F6> :ls<cr>
        nmap <F6> :call BufferWindow()<cr>
        "nmap <C-SPACE> :call BufferWindow()<cr>
        "nmap <F6> :bn<cr>
        "nmap <S-F6> :bp<cr>
    " Tagbar vim class outline viewer
        nmap <Leader>tgb :TagbarToggle<CR>
    " Gundo application toggle
        nmap <Leader>gu :GundoToggle<CR>
    " Toggle the NERD Tree
        nmap <Leader>nt :NERDTreeToggle<CR>
    " Add double quotes
        noremap! """ """""”<left><left><left>
        noremap! ''' ''''''<left><left><left>
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
        nmap  <Leader>rr :1,$retab<CR>
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
        " Edit a file in the same directory as the current buffer.
        map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>  
        map <leader>. :e %:p:h<CR> " Enter directory listing for the directory of/tag the current buffer
        " Create a new window with directory listing of current buffer
        map <leader>wn :new %:p:h<CR>
        " Change global directory to the current directory of the current buffer
        map <leader>cd :cd %:p:h<CR>
    " Let's make it easy to edit this file (mnemonic for the key sequence is 'e'dit 'v'imrc)
        nmap <Leader>ev :e $MYVIMRC<cr>
        nmap <Leader>zs :args ~/.zsh*<CR>
    " And to source this file as well (mnemonic for the key sequence is 's'ource 'v'imrc)
        nmap <silent> ,sv :so $MYVIMRC<cr>
    " put the vim directives for my file editing settings in
        nmap <silent> ,vi ovim:set ts=2 sts=2 sw=2:<CR>vim600:fdm=marker fdl=1 fdc=0:<ESC>
    " Show all available VIM servers
        "nmap <silent> ,ss :echo serverlist()<CR>
    " The following beast is something i didn't write.. it will return the 
    " syntax highlighting group that the current "thing" under the cursor
    " belongs to -- very useful for figuring out what to change as far as 
    " syntax highlighting goes.
        nmap <silent> ,qq :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
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
     " type table,,, to get <table></table>       ### Cool ###
       imap ,,, <esc>bdwa<<esc>pa><cr></<esc>pa><esc>kA
" Abbreviations {
"   iab <!         <!--  --><left><left><left><left>
"   iab <!T        <!--TODO - --><left><left><left><left>
    iab vv         Vincent Vetsch
    iab ifm        if __name__ == '__main__':
"   iab todo       # TODO --
"   iab fx         # FIXME --
"   iab xx         # XXX --
    iab auth       @Author:\tVincent E Vetsch
    iab authe      @Email:\tvincent.vetsch@gmail.com
    iab imp        import
    iab pp         print
    iab #!         #!/usr/bin/env python
    iab utf8       # coding: utf-8
" Autocommands {
    " Make sure Vim returns to the same line when you reopen a file.
    " Thanks, Amit
        augroup line_return
            au!
            au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \     execute 'normal! g`"zvzz' |
                \ endif
        augroup END
    " Save when losing focus    
        au FocusLost * :silent! wall
    " Resize splits when the window is resized
        au VimResized * :wincmd =
    " au BufWritePost .vimrc so ~/.vimrc
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
    au BufNewFile,BufRead *.xml, *.html source ~/.vim/ftplugin/xml.vim
    au BufNewFile,BufRead *.xml,*.htm,*.html so ~/.vim/plugin/XMLFolding.vim
    au BufRead,BufNewFile *.go setlocal filetype=go
    au BufRead,BufNewFile *.go setlocal syntax=go.vim
    "au BufRead,BufNewFile *.go local nmap <silent> cmp !go build %
    "au BufRead,BufNewFile *.go local nmap <silent> run !go run %
    au BufNewFile,BufRead *.html set filetype=html
    au BufNewFile,BufRead  *.html source ~/.vim/ftplugin/xml.vim
    augroup html
       au FileType * setlocal foldenable
       au FileType * setlocal foldmethod=indent
       au FileType * setlocal expandtab
    augroup END
    au FileType python inoremap :: <End>:
    "Removes any extra whitespace from the ends of lines
        au BufWritePre *.py normal m`:%s/\s\+$//e
        au FileType python setlocal omnifunc=pythoncomplete#Complete
        "au FileType python setlocal expandtab
        au FileType python setlocal foldmethod=indent
        "au FileType python setlocal tabstop=4
        "au FileType python let b:surround_100 = "\"\"\" \r \"\"\""
        au FileType python setlocal efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
        au FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
        au FileType python iab sefl self
        au FileType python iab sf self
        au FileType python iab sefd self
        au FileType python iab seff self
        au FileType python iab imp  import
        au FileType python nmap <buffer> <Leader>l :PyLint<CR>
        au Filetype python let g:pyref_mapping = 'KK'
        au FileType python map <C-L> :python LP_python_import_search()
        au FileType doctest map <C-L> :python LP_python_import_search()
        au FileType c,h,cpp,python,vala,javascript hi ExtraWhitespace ctermbg=red
        au FileType c,h,cpp,python,vala,javascript match ExtraWhitespace /\s\+\%#\@<!$/
        autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
        autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
        autocmd FileType css set omnifunc=csscomplete#CompleteCSS
