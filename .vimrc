" vim: foldmethod=marker
"General Configuration {{{1
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
    "set ofu=syntaxcomplete#Complete
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
    "set colorcolumn=80
    set backspace=indent,eol,start " make backspace a more flexible
    "highlight ColorColumn ctermbg=55
    set backup " make backup files
    set backupdir=~/.vim/backup " where to put backup files
    set clipboard=unnamedplus " share windows clipboard
    set directory=~/.vim/tmp " directory to place swap files in
    set fileformats=unix,dos,mac " support all three, in this order
    set hidden " you can change buffers without saving
    set iskeyword+=_,$,@,%,# " none of these are word dividers
    set mouse=a " use mouse everywhere
    set mousemodel=popup
    set noerrorbells " don't make noise
    "set ballooneval
    "set balloondelay=300
    set wildmenu " turn on command line completion wild style
    " ignore these list file extensions
    set wildmode=list:longest

    set wildignore+=.hg,.git,.svn                    " Version control
    set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
    set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
    set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
    set wildignore+=*.spl                            " compiled spelling word lists
    set wildignore+=*.sw?                            " Vim swap files
    set wildignore+=*.DS_Store                       " OSX bullshit

    set wildignore+=*.luac                           " Lua byte code

    set wildignore+=migrations                       " Django migrations
    set wildignore+=*.pyc                            " Python byte code    
    " set cpoptions+=$
    let mapleader=","
    set complete=.,w,b,t,i,d
    " When completing by tag, show the whole tag, not just the function name
    set tags=~/tags
    set tags+=$HOME/.vim/tags/python27.ctags
    set tags=tags;/
    set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
    " Make those folders automatically if they don't already exist.
    if !isdirectory(expand(&undodir))
        call mkdir(expand(&undodir), "p")
    endif
    if !isdirectory(expand(&backupdir))
        call mkdir(expand(&backupdir), "p")
    endif
    if !isdirectory(expand(&directory))
        call mkdir(expand(&directory), "p")
    endif
    set showfulltag
    " Automatically read a file that has changed on the disk
    set cursorline                  " highlight current line
    set autoread
    set history=100
    " Allow the cursor to go in to "invalid" places
    set virtualedit=insert
    "Enable search highlighting
    set hlsearch
    set t_Co=256
    "Colorize TODO and DONE and FIXME
    if has('gui_running')
        au Colorscheme * highlight Todo ctermbg=blue guibg=blue gui=None
        au Colorscheme * highlight Done ctermbg=green guibg=green ctermfg=black guifg=black gui=None
        au BufReadPre,BufEnter * :match Done /DONE/
        au Colorscheme * highlight Fixme ctermbg=red guibg=red ctermfg=black guifg=black gui=None
        au BufReadPre,BufEnter * :2match Fixme /FIXME/
    endif
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
    "set completeopt=longest,preview "pop up menu for completions
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
"Plugin Configuration {{{1
    "Py Mode Configuration {{{2
       " let g:pymode = 1
       " let g:pymode_lint_checker = "pyflakes"
       " Load show documentation plugin
       " let g:pymode_doc = 1
       " " Key for show python documentation
       " let g:pymode_doc_key = 'K'
       " " Set key 'R' for run python code
       " let g:pymode_run_key = 'R'
       " " Load the whole plugin
       " " Switch pylint, pyflakes, pep8, mccabe code-checkers
       " " Can have multiply values "pep8,pyflakes,mcccabe"
       " let g:pymode_lint_checker = "pyflakes,pep8,mccabe"



    "Jedi Python Configuration {{{2
        let g:jedi#auto_initialization = 1
        let g:jedi#auto_vim_configuration = 1
        let g:jedi#goto_command = "<leader>g"
        let g:jedi#get_definition_command = "<leader>d"
        let g:jedi#pydoc = "K"
        let g:jedi#use_tabs_not_buffers = 0
        let g:jedi#popup_on_dot = 1
        let g:jedi#popup_select_first = 0
        let g:jedi#rename_command = "<leader>r"
        let g:jedi#related_names_command = "<leader>n"
        let g:jedi#autocompletion_command = "<C-Space>"
        let g:jedi#show_function_definition = 1
    "NERD Tree Plugin Configuration {{{2
        "Show the bookmarks table on startup {{{3
            let NERDTreeShowBookmarks=0
        "Don't display these kinds of files  {{{3
            let NERDTreeIgnore=[ '\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$', '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$', '\.embed\.manifest$', '\.embed\.manifest.res$','\.intermediate\.manifest$', '^mt.dep$' ]
        "Toggle the NERD Tree {{{3
            nmap <Leader>xp :NERDTree ~/.vim/personal/ftplugin/<CR>
            nmap <Leader>nt :NERDTreeToggle<CR> :set nofen<CR>
    "Minibuffer Configuration {{{2
        let g:miniBufExplMapWindowNavVim = 1
        let g:miniBufExplMapWindowNavArrows = 1
        let g:miniBufExplMapCTabSwitchBufs= 1
        let g:miniBufExplModSelTarget = 1
    "FuzzyFinder Configuration {{{2
        "Enter FUF File {{{3
            nmap <silent> <leader>ff :FufFile<CR>
        "Enter FUF Directory {{{3
            nmap <silent> <leader>fd :FufDir<CR>
        "Enter FUF Buffer {{{3
            nmap <silent> <leader>fb :FufBuffer<CR>
        "Enter FUF Quickfix mode {{{3
            nmap <silent> <leader>fq :FufQuickfix<CR>
        "Enter FUF Line mode {{{3
            nmap <silent> <leader>fl :FufLine<CR>
        "Enter FUF Help Mode {{{3
            nmap <silent> <leader>fh :FufHelp<CR>
        "Enter FUF Tag mode {{{3
            nnoremap <silent> <leader>ft :FufTagWithCursorWord!<CR>
            vnoremap <silent> <leader>ft :FufTagWithSelectedText!<CR>
    "XPTemplate Configuration {{{2
        let g:xptemplate_key = '<C-\>'
        let g:xptemplate_always_show_pum = 1
        let g:xptemplate_vars="email=vincent.vetsch@gmail.com&author=Vincent Vetsch"
        let g:xptemplate_snippet_folders = [ '~/.vim/personal/ftplugin/' ]
    "Tagbar Configuration {{{2
        let g:tagbar_foldlevel = 3
        let g:tagbar_expand = 1
        let g:tagbar_singleclick = 1
        "Tagbar vim class outline viewer {{{3
            nmap <Leader>tgb :TagbarToggle<CR>
    "Gundo Configuration {{{2
        nmap <Leader>gu :GundoToggle<CR>
    "Notes Configuration {{{2
        " The directory the notes will be stored     
        let g:notes_directory = '~/Documents/Notes' 
        let g:notes_suffix = '.note'
    "Gist Configuration {{{2
        let g:gist_browser_command = 'w3m %URL%'
        let g:gist_open_browser_after_post = 1
        let g:gist_show_privates = 1
        let g:gist_clip_command = 'xclip -selection clipboard'
        let g:gist_use_password_in_gitconfig = 1
        "Gist commands {{{3 List my gist's
            :command! GistList :Gist -l
            "List List everyone's gists
            :command! GistPublicList :Gist -la
            "Post Selected text
            :command! GistPostSelection :'<,'>Gist
            "Post buffer"
            :command! GistPostBuffer :Gist
            "Post all buffers"
            :command! GistPostAllBuffers :Gist -m
    "Markdown Configuration {{{2
        "Markdown command
        nmap <leader>md :%!/usr/bin/markdown --html4tags<CR>
    "HTML Plugins Configuration {{{2
        let g:html_indent_inctags = "html,body,head,p,tbody,td,tr,div,ul,ol,li"
        let g:html_indent_script1 = "inc"
        let g:html_indent_style1  = "inc"
    "Powerline Configuration {{{2
        set encoding=utf-8
        set fillchars+=stl:\ ,stlnc:\ ,vert:\ ,
        set guifont=DroidSansMono\ 10
        let Powerline_symbols = 'compatible'
        "'unicode'  'compatible' "  'fancy'
        " set statusline=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\
        " [%b][0x%B]
"Functions {{{1
    "Show syntax highlighting groups for word under cursor {{{2
        nmap <C-S-P> :call <SID>SynStack()<CR>
        function! <SID>SynStack()
            if !exists("*synstack")
                return
            endif
            echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
        endfunc
    "Folding {{{2
            function! MyFoldText()
                let nl = v:foldend - v:foldstart + 1
                let comment = substitute(getline(v:foldstart),"^ *","",1)
                let linetext = substitute(getline(v:foldstart+1),"^ *","",1)
                let txt = '+ ' . linetext . ' : "' . comment . '" : length ' . nl
                return txt
            endfunction
            set fillchars="fold: "
            set foldtext=MyFoldText()
    "Update Tags {{{2
            function! UPDATE_TAGS()
                let _f_ = expand("%:p")
                let _cmd_ = '"ctags -aR " '
                let _resp = system(_cmd_)
                unlet _cmd_
                unlet _f_
                unlet _resp
            endfunction
            au BufWrite *.cpp, *.h, *.c, *.py, *.html, *.js call UPDATE_TAGS()
    "List Buffers in Quickfix buffev {{{2
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
    "Buffer window Jump {{{2
            function! s:BufferWindowJump()
                let buffer = matchstr(getline('.'), '^\s*\(\d\+\)')
                exe 'bd! '.s:bufferWindowBuffer
                exe s:windowRestore
                exec s:originWindow.'wincmd w'
                exec 'buffer '.buffer
            endfunction
    "BufferWindow - Creates a buffer window with a list of current buffers  {{{2
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
    "Toggle Line Numbering  {{{2
            function! NumberToggle()
                if(&relativenumber == 1)
                    set number
                else
                    set relativenumber
                endif
            endfunction
    "Get Visual rand and perform substitution  {{{2
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
    "Move Lines {{{2
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
"Mappings {{{1
    "Yanking and Pasting {{{2
        nnoremap pn o<ESC>P
        nnoremap pN O<ESC>P
        nnoremap yl 0y$
    "Custom commands {{{2
        nmap ; :
        vmap ; :
        imap <C-o> <ESC>
        command -nargs=? W :w <args>
        command -nargs=? Qa :qa
        nmap <Leader>W :w<CR>
        nmap <Leader>w :w<CR>
        nmap <Leader>wq :wq<CR>
    "Movement Mappings {{{2
        "Unmap the Arrow key {{{3
            nnoremap <right> <Nop>
            nnoremap <left> <Nop>
            nnoremap <up> <Nop>
            nnoremap <down> <Nop>
            inoremap <left> <Nop>
            inoremap <down> <Nop>
            inoremap <right> <Nop>
            inoremap <up> <Nop>
            vnoremap <up> <Nop>
            vnoremap <down> <Nop>
            vnoremap <left> <Nop>
            vnoremap <right> <Nop>
        "Easier to type, and I never use the default behavior. {{{3
            noremap H ^
            noremap L $
            vnoremap L g_ 
        "Move selected lines up or down {{{3
            nnoremap <silent> <C-k> :<C-u>call MoveLineUp()<CR>
            nnoremap <silent> <C-j> :<C-u>call MoveLineDown()<CR>
            inoremap <silent> <C-k> <C-o>:call MoveLineUp()<CR>
            inoremap <silent> <C-j> <C-o>:call MoveLineDown()<CR>
            xnoremap <silent> <C-k> :<C-u>call MoveVisualUp()<CR>
            xnoremap <silent> <C-j> :<C-u>call MoveVisualDown()<CR>
            "vnoremap <silent> AC-Down> :<C-u>call MoveVisualDown()<CR>
            "vnoremap <silent> AC-Up> :<C-u>call MoveVisualUp()<CR>
        "Move the cursor to the window left of the current one  {{{3
            noremap <silent> <A-l> :wincmd l<cr>
        "Move the cursor to the window right of the current one {{{3
            noremap <silent> <A-h> :wincmd h<cr>
        "Move the cursor to the window below the current one {{{3
            noremap <silent> <A-j> :wincmd j<cr>
        "Move the cursor to the window above the current one {{{3
            noremap <silent> <A-k> :wincmd k<cr>
        "Close the window below this one {{{3
            noremap <silent> ,cj :wincmd j<cr>:close<cr>
        "Close the window above this one {{{3
            noremap <silent> ,ck :wincmd k<cr>:close<cr>
        "Close the window to the left of this one {{{3
            noremap <silent> ,ch :wincmd h<cr>:close<cr>
        "Close the window to the right of this one  {{{3
            noremap <silent> ,cl :wincmd l<cr>:close<cr>
        "Close the current window {{{3
            noremap <silent> ,cc :close<cr>
        "Move the current window to the right of the main Vim window {{{3
            noremap <silent> ,ml <C-W>L
        "Move the current window to the top of the main Vim window {{{3
            noremap <silent> ,mk <C-W>K
        "Move the current window to the left of the main Vim window {{{3
            noremap <silent> ,mh <C-W>H
        "Move the current window to the bottom of the main Vim window {{{3
            noremap <silent> ,mj <C-W>J
    "Git Mappings {{{2
        noremap <Leader>bgw :bufdo Gwrite<CR>
        noremap <Leader>ga :Gwrite<CR>
        noremap <Leader>grr :Gread<CR>
        noremap <Leader>gss :Gstatus<CR>
        noremap <Leader>gcc :Gcommit<CR>
        noremap <Leader>gl :Glog<CR>
        noremap <Leader>gk :!gitk<CR>
        noremap <Leader>gp :Git push origin master<CR>
    "Search Mappings {{{2
        "Search for selected text, forwards or backwards. {{{3
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
        "Grep buffers for a string {{{3
            nnoremap gp :GrepBuffer <CR>
        "Search Chapters and Psalms {{{3
            nnoremap <Leader>ps :/\cPSALM 
            nnoremap <LEADER>ch :/\cCHAPTER 
        "Find Double Words {{{3
            nmap <leader>du :/\(\<\w\+\>\)\_s*\1<cr>
        "Search the current file for what's currently in the search register {{{3
        "and display matches
           nmap <silent> ,gs :vimgrep /<C-r>// %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>
        "Search the current file for the word under the cursor and display matches {{{3
           nmap <silent> ,gw :vimgrep /<C-r><C-w>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>
        "Search the current file for the WORD under the cursor and display matches {{{3
           nmap <silent> ,gW :vimgrep /<C-r><C-a>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>
        "Swap two words {{{3
           nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'
    "Opening Files {{{2
        "Open .vimrc {{{3
            nmap <Leader>ev :e $MYVIMRC<cr>
        "Open .zshrc files {{{3
            nmap <Leader>zs :args ~/.zsh*<CR>
        "Open Bookmarks {{{3
           nnoremap <Leader>bb :e ~/Documents/Notes/Bookmarks.note<CR>
        "Opne OpeningNote {{{3
            nnoremap <Leader>on :e ~/Documents/Notes/OpeningNote.note<CR>
        "Open Notes Directory in Nerdtree
            nnoremap <Leader>not :e ~/Documents/Notes/<CR>
        "Open Experiment.notes {{{3
           nnoremap <Leader>ex :e ~/Documents/Notes/Experiment.note<CR>
    "Delete Characters {{{2
        "Delete to end of line
            nnoremap D d$
        "Delete to beginning of line
            nnoremap DB d0
    "Selection in Visual Mode {{{2
        "Select to begining {{{3 
            nnoremap <Leader>vb v0
        "Select to end {{{3
            nnoremap <Leader>ve v$
        "Select All {{{3
            nnoremap <Leader>va 0GVgg
        "Select to bottom {{{3
            nnoremap <Leader>vB VG
        "Select to top {{{3
            nnoremap <Leader>vt Vgg
        "Reselect visual block after indent and outdent {{{3
            vnoremap < <gv
            vnoremap > >gv
        "Clear Matches {{{3
            noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>
    "Buffer Commands {{{2
        "Goto Next buffer {{{3
           nnoremap <silent> gb :bn<CR>
        "Goto Previous buffers {{{3
           nnoremap <silent> gB :bp<CR>
        "Delete buffers {{{3
           nnoremap <silent> bd :bd<CR>
        "Switch and list buffers {{{3
            nmap <Leader>ll :call BufferWindow()<cr>
        "Tasklist Mappings
            nmap <Leader>tt :TaskList<CR>
    "File Commands {{{2
    "Other Commands {{{2
    "Formatting Commands {{{2
       nmap <Leader>mm :TCommentBlock<CR>
    "Show color for hex color
       nmap <leader>h :call HexHighlight()<Return>
    "Remove unused lines
       nnoremap <Leader>dl :g/^$/d<CR>
    "Select text object in visual mode and perform a replace
       vmap <Leader>srr :%s/<c-r>=GetVisual()<cr>/
       vnoremap <Leader>sr "hy:%s/<C-r>h//gc<left><left><left>
    "Close all other folds
       nnoremap <Leader>z zMzvzz
    "Keep search matches in the middle of the window.
       nnoremap n nzzzv
       nnoremap N Nzzzv
    "Same when jumping around
        nnoremap g; g;zz
        nnoremap g, g,zz
        nnoremap <c-o> <c-o>zz
    "Source lines or selected lines
       vnoremap <leader>S y:execute @@<cr>:echo 'Sourced selection.'<cr>
       nnoremap <leader>S ^vg_y:execute @@<cr>:echo 'Sourced line.'<cr>
" TODO - Move to autocommands
    "Go Compile and run commands
       nnoremap <Leader>goc :!go build %<CR>
       nnoremap <Leader>gor :!go run %<CR>
    "Get list of files
       nnoremap <Leader>ls :r ! ls -d -1 $PWD/**
    "On Linux, open URL under cursor in chromium.
       nnoremap <silent> go :silent !xdg-open <cfile> &<CR>
       nnoremap <silent> gO :update<Bar>silent !xdg-open %:p &<CR>
    "Create a new file from a word under cursor
       nnoremap <silent> gn :e <cfile><CR>
    "Toggle Relative or absolute line numbering
       nnoremap <Leader>nu :call NumberToggle()<CR>
    "Toggle Spelling
       nnoremap <Leader>ss :set spell!<CR>
    "Force Saving Files the Require Root Permission
       cmap w!! %!sudo tee > /dev/null %
    "Easier formatting of paragraphs
       vmap Q gq
       nmap Q gqap
    "OmniComplete
       inoremap <Nul> <C-x><C-o>
    "Add a check mark ✓✓
        nmap <leader>v R✓<ESC>
        imap <>v <C-R>✓<ESC>
    "Show un printable characters
        nmap <leader>tl :set list!<cr>
        nmap <leader>p : set paste!<cr>
    "cd to the directory containing the file in the buffer
        nmap  <Leader>cd :lcd %:h
    "Set up retabbing on a source file
        nmap  <Leader>rr :1,$retab<CR>
    "Make the directory that contains the file in the current buffer.
    "This is useful when you edit a file in a directory that doesn't
    "(yet) exist
       nmap  <Leader>md :!mkdir -p %:p:h
    "Create note from selection
       vmap <Leader>ns :NoteFromSelectedText<CR>
    "Edit a file in the same directory as the current buffer.
       map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>  
       map <leader>. :e %:p:h<CR> " Enter directory listing for the directory of/tag the current buffer
    "Create a new window with directory listing of current buffer
       map <leader>wn :new %:p:h<CR>
    "Change global directory to the current directory of the current buffer
       map <leader>cd :cd %:p:h<CR>
    "And to source this file as well (mnemonic for the key sequence is 's'ource 'v'imrc)
       nmap <silent> ,sv :so $MYVIMRC<cr>
    "The following beast is something i didn't write.. it will return the 
    "syntax highlighting group that the current "thing" under the cursor
    "belongs to -- very useful for figuring out what to change as far as 
    "syntax highlighting goes.
        nmap <silent> ,qq :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
    "set text wrapping toggles
        nmap <silent> ,ww :set invwrap<CR>:set wrap?<CR>
"Abbreviations {{{1
    iab vv         Vincent Vetsch
    iab ifm        if __name__ == '__main__':
    iab auth       @Author:\tVincent E Vetsch
    iab authe      @Email:\tvincent.vetsch@gmail.com
    iab imp        import
    iab pp         print
    iab #!         #!/usr/bin/env python
    iab utf8       # coding: utf-8 }}}
"Autocommands {{{1
    "Make sure Vim returns to the same line when you reopen a file. {{{2
    "Thanks, Amit
        augroup line_return
            au!
            au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \     execute 'normal! g`"zvzz' |
                \ endif
        augroup END
    "Save when losing focus {{{2
        au FocusLost * :silent! wall
    "Resize splits when the window is resized {{{2
        au VimResized * :wincmd =
    "Setup for Task syntax and file type {{{2
        au BufNewFile,BufRead todo.txt,*.task,*.tasks  setfiletype task
        au BufNewFile,BufRead todo.txt,*.task,*.tasks set syntax=task.vim
    "Task Auto Group {{{2
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
    "Go Auto Commands {{{2
        au BufRead,BufNewFile *.go setlocal syntax=go.vim
        au BufRead,BufNewFile *.go setlocal filetype=go
    "HTML, XML, and CSS Auto Commands {{{2
        au BufNewFile,BufRead *.xml, *.html source ~/.vim/ftplugin/xml.vim
        au BufNewFile,BufRead *.xml,*.htm,*.html so ~/.vim/plugin/XMLFolding.vim
        au BufNewFile,BufRead *.html set filetype=html
        au BufNewFile,BufRead *.html source ~/.vim/ftplugin/xml.vim
        "Treat .rss files as XML {{{3
            au BufNewFile,BufRead *.rss setfiletype xml
        "Customisations based on house-style (arbitrary) {{{3
            au FileType html setlocal ts=2 sts=2 sw=2 expandtab
            au FileType css setlocal ts=2 sts=2 sw=2 expandtab
            au FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
    "HTML Auto Groups {{{2
        augroup html
        au FileType * setlocal foldenable
        au FileType * setlocal foldmethod=indent
        au FileType * setlocal expandtab
        augroup END
    "Python Auto Group {{{2
    augroup python
        autocmd FileType python compiler pylint
        au FileType python nmap <Leader>R :!python %<CR>
      "pdb setting : insert pdb breakpoints {{{3
            au FileType python imap <S-F1> Iimport vimpdb; vimpdb.set_trace()
            au FileType python nmap <S-F1> Iimport vimpdb; vimpdb.set_trace()
        "ipython.debugger breakpoint1 {{{3
            au FileType python imap <C-S-F1> Iimport ipdb; ipdb.set_trace()
            au FileType python nmap <C-S-F1> Iimport ipdb; ipdb.set_trace()
        "Add double quotes {{{3
        au FileType python inoremap :: <End>:
        "Removes any extra whitespace from the ends of lines {{{3
            au BufWritePre *.py normal m`:%s/\s\+$//e
        "au FileType python setlocal omnifunc=pythoncomplete#Complete
        au FileType python setlocal foldmethod=indent
        au FileType python let b:surround_100 = "\"\"\" \r \"\"\""
        au FileType python setlocal efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
        au FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
        au FileType python iab sefl self
        au FileType python iab sf self
        au FileType python iab sefd self
        au FileType python iab seff self
        au FileType python iab imp  import
        au FileType python nmap <buffer> <Leader>l :PyLint<CR>
        "au FileType python set omnifunc=jedi#Complete
    augroup END
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    "perl style # commenting {{{2
        autocmd FileType php,yaml,python,sh  vmap <Leader><F5> :s/\v^(\s*)/\1#/ <CR>
        autocmd FileType php,yaml,python,sh  vmap <Leader><F6> :s/\v^(\s*)#/\1/ <CR>
        autocmd FileType php,yaml,python,sh  nmap <Leader><F5> :s/\v^(\s*)/\1#/ <CR>
        autocmd FileType php,yaml,python,sh  nmap <Leader><F6> :s/\v^(\s*)#/\1/ <CR>
    "C style // commenting {{{2
        autocmd FileType c,cpp,php,javascript nmap <Leader><F5> :s+\v^(\s*)+\1//+ <CR>
        autocmd FileType c,cpp,php,javascript nmap <Leader><F6> :s+\v^(\s*)//+\1+ <CR>
    "vim commenting {{{2
        autocmd FileType vim nmap <Leader><F5> :s/\v^(\s*)/\1"/ <CR>
        autocmd FileType vim nmap <Leader><F6> :s/\v^(\s*)"/\1/ <CR>
    " Django {{{2
    augroup ft_django
        au!

        au BufNewFile,BufRead urls.py           setlocal nowrap
        au BufNewFile,BufRead urls.py           normal! zR
        au BufNewFile,BufRead dashboard.py      normal! zR
        au BufNewFile,BufRead local_settings.py normal! zR

        au BufNewFile,BufRead admin.py     setlocal filetype=python.django
        au BufNewFile,BufRead urls.py      setlocal filetype=python.django
        au BufNewFile,BufRead models.py    setlocal filetype=python.django
        au BufNewFile,BufRead views.py     setlocal filetype=python.django
        au BufNewFile,BufRead settings.py  setlocal filetype=python.django
        au BufNewFile,BufRead settings.py  setlocal foldmethod=marker
        au BufNewFile,BufRead forms.py     setlocal filetype=python.django
        au BufNewFile,BufRead common_settings.py  setlocal filetype=python.django
        au BufNewFile,BufRead common_settings.py  setlocal foldmethod=marker
    augroup END>
