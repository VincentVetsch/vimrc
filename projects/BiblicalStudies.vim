let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>XPTrawKey 
imap <silent> <Plug>XPTfallback <Plug>XPTrawKey
imap <C-S-F1> import ipdb; ipdb.set_trace()
imap <S-F1> import pdb; pdb.set_trace()
inoremap <Nul> 
map! <S-Insert> <MiddleMouse>
noremap ru :call RopeUseFunction()
noremap rad :call RopeShowDoc()
noremap rac :call RopeShowCalltip()
noremap rx :call RopeRestructure()
noremap r1r :call RopeRenameCurrentModule()
noremap rr :call RopeRename()
noremap ro :call RopeOrganizeImports()
noremap r1v :call RopeMoveCurrentModule()
noremap rv :call RopeMove()
noremap r1p :call RopeModuleToPackage()
noremap ra? :call RopeLuckyAssist()
noremap raj :call RopeJumpToGlobal()
noremap rf :call RopeIntroduceFactory()
noremap ri :call RopeInline()
noremap rag :call RopeGotoDefinition()
noremap rnv :call RopeGenerateVariable()
noremap rnp :call RopeGeneratePackage()
noremap rnm :call RopeGenerateModule()
noremap rnf :call RopeGenerateFunction()
noremap rnc :call RopeGenerateClass()
noremap raf :call RopeFindOccurrences()
noremap rai :call RopeFindImplementations()
noremap rl :call RopeExtractVariable()
noremap rm :call RopeExtractMethod()
noremap ra/ :call RopeCodeAssist()
noremap rs :call RopeChangeSignature()
noremap ra :call RopeAutoImport()
xnoremap <silent> <NL> :call MoveVisualDown() " Mappings {
nnoremap <silent> <NL> :call MoveLineDown()
xnoremap <silent>  :call MoveVisualUp()
nnoremap <silent>  :call MoveLineUp()
nnoremap <silent>  :CtrlP
noremap pu :call RopeUndo()
noremap pr :call RopeRedo()
noremap pc :call RopeProjectConfig()
noremap po :call RopeOpenProject()
noremap pg :call RopeGenerateAutoimportCache()
noremap p4f :call RopeFindFileOtherWindow()
noremap pf :call RopeFindFile()
noremap pnp :call RopeCreatePackage()
noremap pnm :call RopeCreateModule()
noremap pnf :call RopeCreateFile()
noremap pnd :call RopeCreateDirectory()
noremap pk :call RopeCloseProject()
snoremap <silent>  `>a=XPTemplateStart(0,{'k':'<C-\++'})
xnoremap <silent>  "0s=XPTemplatePreWrap(@0)
nmap <silent> ,cv <Plug>VCSVimDiff
nmap <silent> ,cu <Plug>VCSUpdate
nmap <silent> ,cU <Plug>VCSUnlock
nmap <silent> ,cs <Plug>VCSStatus
nmap <silent> ,cr <Plug>VCSReview
nmap <silent> ,cq <Plug>VCSRevert
nmap <silent> ,cn <Plug>VCSAnnotate
nmap <silent> ,cN <Plug>VCSSplitAnnotate
nmap <silent> ,cl <Plug>VCSLog
nmap <silent> ,cL <Plug>VCSLock
nmap <silent> ,ci <Plug>VCSInfo
nmap <silent> ,cg <Plug>VCSGotoOriginal
nmap <silent> ,cG <Plug>VCSClearAndGotoOriginal
nmap <silent> ,cD <Plug>VCSDelete
nmap <silent> ,ca <Plug>VCSAdd
map ,t <Plug>TaskList
nnoremap ,s :call TextToSpeech()
nnoremap ,r :call SpeechToText()
map ,rwp <Plug>RestoreWinPosn
map ,swp <Plug>SaveWinPosn
nmap <silent> ,ba <Plug>BufKillAlt
nmap <silent> ,bundo <Plug>BufKillUndo
nmap <silent> ,!bw <Plug>BufKillBangBw
nmap <silent> ,bw <Plug>BufKillBw
nmap <silent> ,!bd <Plug>BufKillBangBd
nmap <silent> ,bd <Plug>BufKillBd
nmap <silent> ,!bun <Plug>BufKillBangBun
nmap <silent> ,bun <Plug>BufKillBun
nmap <silent> ,bf <Plug>BufKillForward
nmap <silent> ,bc :call BexecCloseOut()
vmap <silent> ,bx :call BexecVisual()
nmap <silent> ,bx :call Bexec()
nmap ,a <Plug>ToggleAutoCloseMappings
vnoremap <silent> ,,w :call EasyMotion#WB(1, 0)
onoremap <silent> ,,w :call EasyMotion#WB(0, 0)
nnoremap <silent> ,,w :call EasyMotion#WB(0, 0)
vnoremap <silent> ,,t :call EasyMotion#T(1, 0)
onoremap <silent> ,,t :call EasyMotion#T(0, 0)
nnoremap <silent> ,,t :call EasyMotion#T(0, 0)
vnoremap <silent> ,,n :call EasyMotion#Search(1, 0)
onoremap <silent> ,,n :call EasyMotion#Search(0, 0)
nnoremap <silent> ,,n :call EasyMotion#Search(0, 0)
vnoremap <silent> ,,k :call EasyMotion#JK(1, 1)
onoremap <silent> ,,k :call EasyMotion#JK(0, 1)
nnoremap <silent> ,,k :call EasyMotion#JK(0, 1)
vnoremap <silent> ,,j :call EasyMotion#JK(1, 0)
onoremap <silent> ,,j :call EasyMotion#JK(0, 0)
nnoremap <silent> ,,j :call EasyMotion#JK(0, 0)
vnoremap <silent> ,,gE :call EasyMotion#EW(1, 1)
onoremap <silent> ,,gE :call EasyMotion#EW(0, 1)
nnoremap <silent> ,,gE :call EasyMotion#EW(0, 1)
vnoremap <silent> ,,f :call EasyMotion#F(1, 0)
onoremap <silent> ,,f :call EasyMotion#F(0, 0)
nnoremap <silent> ,,f :call EasyMotion#F(0, 0)
vnoremap <silent> ,,e :call EasyMotion#E(1, 0)
onoremap <silent> ,,e :call EasyMotion#E(0, 0)
nnoremap <silent> ,,e :call EasyMotion#E(0, 0)
vnoremap <silent> ,,b :call EasyMotion#WB(1, 1)
onoremap <silent> ,,b :call EasyMotion#WB(0, 1)
nnoremap <silent> ,,b :call EasyMotion#WB(0, 1)
vnoremap <silent> ,,W :call EasyMotion#WBW(1, 0)
onoremap <silent> ,,W :call EasyMotion#WBW(0, 0)
nnoremap <silent> ,,W :call EasyMotion#WBW(0, 0)
vnoremap <silent> ,,T :call EasyMotion#T(1, 1)
onoremap <silent> ,,T :call EasyMotion#T(0, 1)
nnoremap <silent> ,,T :call EasyMotion#T(0, 1)
vnoremap <silent> ,,N :call EasyMotion#Search(1, 1)
onoremap <silent> ,,N :call EasyMotion#Search(0, 1)
nnoremap <silent> ,,N :call EasyMotion#Search(0, 1)
vnoremap <silent> ,,ge :call EasyMotion#E(1, 1)
onoremap <silent> ,,ge :call EasyMotion#E(0, 1)
nnoremap <silent> ,,ge :call EasyMotion#E(0, 1)
vnoremap <silent> ,,F :call EasyMotion#F(1, 1)
onoremap <silent> ,,F :call EasyMotion#F(0, 1)
nnoremap <silent> ,,F :call EasyMotion#F(0, 1)
vnoremap <silent> ,,E :call EasyMotion#EW(1, 0)
onoremap <silent> ,,E :call EasyMotion#EW(0, 0)
nnoremap <silent> ,,E :call EasyMotion#EW(0, 0)
vnoremap <silent> ,,B :call EasyMotion#WBW(1, 1)
onoremap <silent> ,,B :call EasyMotion#WBW(0, 1)
nnoremap <silent> ,,B :call EasyMotion#WBW(0, 1)
nmap <silent> ,fb :FufBuffer
nmap <silent> ,fd :FufDir
nmap <silent> ,ff :FufFile
nmap <silent> ,gW :vimgrep // %:ccl:cwinJ:nohls
nmap <silent> ,gw :vimgrep // %:ccl:cwinJ:nohls
nmap <silent> ,gs :vimgrep /// %:ccl:cwinJ:nohls
nmap <silent> ,ww :set invwrap:set wrap?
nmap <silent> ,qq :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"
nmap <silent> ,vi ovim:set ts=2 sts=2 sw=2:vim600:fdm=marker fdl=1 fdc=0:
nmap <silent> ,sv :so $MYVIMRC
nmap <silent> ,ev :e $MYVIMRC
map ,wn :new %:p:h " Create a new window with directory listing of current buffer
map ,. :e %:p:h " Enter directory listing for the directory of/tag the current buffer
map ,e :e =expand("%:p:h") . "/"   " Edit a file in the same directory as the current buffer.
noremap <silent> ,m<Down> J
noremap <silent> ,m<Left> H
noremap <silent> ,m<Up> K
noremap <silent> ,m<Right> L
noremap <silent> ,cc :close
noremap <silent> ,c<Right> :wincmd l:close
noremap <silent> ,c<Left> :wincmd h:close
noremap <silent> ,c<Up> :wincmd k:close
noremap <silent> ,c<Down> :wincmd j:close
nmap ,w :call ToggleExtraWhitespace()
vmap ,ns :NoteFromSelectedText 
nmap ,md :!mkdir -p %:p:h
nmap ,rr :1,$retab
map ,cd :cd %:p:h " Change global directory to the current directory of the current buffer
nmap ,du :/\(\<\w\+\>\)\_s*\1
nmap ,p : set paste!
nmap ,tl :set list!
nmap ,v R✓
nmap ,ctix :execute 'ConqueTermSplit ipython '.expand('%:p')
nmap ,cti :ConqueTermSplit ipython
nmap ,ctb :ConqueTermSplit bash
map ,tt :TaskList
nmap ,nt :NERDTreeToggle
nmap ,gu :GundoToggle
nmap ,tgb :TagbarToggle
nmap ,dt "=strftime("%c")p
vnoremap ,s :sort
nnoremap ,ss :set spell!
nnoremap ,nu :call NumberToggle()
nnoremap ,bb :e ~/Documents/Notes/Bookmarks.note
nnoremap ,ls :r ! ls -d -1 $PWD/**
nnoremap ,gor :!go run %
nnoremap ,goc :!go build %
nnoremap ,va 0GVgg
nnoremap ,ve v$
nnoremap ,vb v0
nnoremap ,ex :e ~/Documents/Notes/Experiment.note
noremap / :call SearchCompleteStart()/
vnoremap < <gv
vnoremap > >gv
nmap K <Plug>ManPageView
nmap Q gqap
vmap Q gq
vmap [% [%m'gv``
vmap ]% ]%m'gv``
vmap a% [%v]%
nmap gx <Plug>NetrwBrowseX
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/`'
nnoremap <silent> gn :e <cfile>
nnoremap <silent> gB :bp
nnoremap <silent> gb :bn
nnoremap <silent> gO :update|silent !xdg-open %:p &
nnoremap <silent> go :silent !xdg-open <cfile> &
nnoremap <silent> <Plug>CVSWatchRemove :CVSWatch remove
nnoremap <silent> <Plug>CVSWatchOn :CVSWatch on
nnoremap <silent> <Plug>CVSWatchOff :CVSWatch off
nnoremap <silent> <Plug>CVSWatchAdd :CVSWatch add
nnoremap <silent> <Plug>CVSWatchers :CVSWatchers
nnoremap <silent> <Plug>CVSUnedit :CVSUnedit
nnoremap <silent> <Plug>CVSEditors :CVSEditors
nnoremap <silent> <Plug>CVSEdit :CVSEdit
nnoremap <silent> <Plug>VCSVimDiff :VCSVimDiff
nnoremap <silent> <Plug>VCSUpdate :VCSUpdate
nnoremap <silent> <Plug>VCSUnlock :VCSUnlock
nnoremap <silent> <Plug>VCSStatus :VCSStatus
nnoremap <silent> <Plug>VCSSplitAnnotate :VCSAnnotate!
nnoremap <silent> <Plug>VCSReview :VCSReview
nnoremap <silent> <Plug>VCSRevert :VCSRevert
nnoremap <silent> <Plug>VCSLog :VCSLog
nnoremap <silent> <Plug>VCSLock :VCSLock
nnoremap <silent> <Plug>VCSInfo :VCSInfo
nnoremap <silent> <Plug>VCSClearAndGotoOriginal :VCSGotoOriginal!
nnoremap <silent> <Plug>VCSGotoOriginal :VCSGotoOriginal
nnoremap <silent> <Plug>VCSDiff :VCSDiff
nnoremap <silent> <Plug>VCSDelete :VCSDelete
nnoremap <silent> <Plug>VCSCommit :VCSCommit
nnoremap <silent> <Plug>VCSAnnotate :VCSAnnotate
nnoremap <silent> <Plug>VCSAdd :VCSAdd
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <F11> :call conque_term#exec_file()
snoremap <Plug>selectToInsert d<BS>
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
noremap <silent> <C-Up> :wincmd k
noremap <silent> <C-Down> :wincmd j
noremap <silent> <C-Left> :wincmd h
noremap <silent> <C-Right> :wincmd l
nmap <C-S-F1> import ipdb; ipdb.set_trace()
nmap <S-F1> import pdb; pdb.set_trace()
nmap <F6> :call BufferWindow()
map <S-Insert> <MiddleMouse>
inoremap <silent> <NL> :call MoveLineDown()
inoremap <silent>  :call MoveLineUp()
inoremap <silent>  =XPTemplateStart(0,{'k':'<C-r++<C-\++','forcePum':1})
inoremap <silent>  =XPTemplateStart(0,{'k':'<C-r++<C-r++<C-\++','popupOnly':1})
inoremap <silent>  =XPTemplateStart(0,{'k':'<C-\++'})
noremap! """ """""”<Left><Left><Left>
noremap! "" ""<Left>
noremap! ''' ''''’'<Left><Left><Left>
noremap! '' ''<Left>
imap ,,, bdwa<pa></pa>kA
imap <>v ✓
cmap w!! %!sudo tee > /dev/null %
iabbr utf8 # coding: utf-8
iabbr #! #!/usr/bin/env python
iabbr pp print
iabbr c' ''''''
iabbr imp import
iabbr authe @Email:\tvincent.vetsch@gmail.com
iabbr auth @Author:\tVincent E Vetsch
iabbr xx # XXX --
iabbr fx # FIXME --
iabbr td # TODO --
iabbr ifm if __name__ == '__main__':
iabbr vv Vincent Vetsch
iabbr lifecycles life-cycles
iabbr Lifecycles Life-cycles
iabbr lifecycle life-cycle
iabbr Lifecycle Life-cycle
iabbr fone phone
iabbr Fone Phone
iabbr exmaples examples
iabbr Exmaples Examples
iabbr exmaple example
iabbr Exmaple Example
iabbr charcters characters
iabbr Charcters Characters
iabbr charcter character
iabbr Charcter Character
iabbr bianry binary
iabbr Bianry Binary
iabbr bianries binaries
iabbr Bianries Binaries
iabbr becuase because
iabbr Becuase Because
iabbr aslo also
iabbr Aslo Also
iabbr alos also
iabbr Alos Also
iabbr acheive achieve
iabbr Acheive Achieve
iabbr fi if
let &cpo=s:cpo_save
unlet s:cpo_save
set autochdir
set autoindent
set autoread
set autowriteall
set background=dark
set backspace=indent,eol,start
set backup
set backupdir=~/.vim/backup
set balloonexpr=GetTagSignature()
set clipboard=unnamed
set complete=.,w,b,t,i,d
set completeopt=longest,menuone,preview
set directory=~/.vim/tmp
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fileformats=unix,dos,mac
set fillchars=
set formatoptions=rq
set guifont=DroidSansMono\ 10
set guioptions=Aiemrcg
set helplang=en
set hidden
set history=100
set hlsearch
set ignorecase
set incsearch
set infercase
set isfname=@,48-57,/,-,_,+,,,#,$,%,~,=,.,?,&
set iskeyword=@,48-57,_,192-255,_,$,@,%,#
set laststatus=2
set listchars=tab:>-,trail:-
set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
set modelines=1
set mouse=a
set omnifunc=syntaxcomplete#Complete
set printoptions=paper:letter
set report=0
set ruler
set rulerformat=%-14.(%l,%c%V%)%=%P%{XPMautoUpdate(\"ruler\")}
set runtimepath=~/.vim,~/.vim/bundle/vim-javascript,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/xpt-personal,$GOROOT/misc/vim,~/.vim/personal
set scrolloff=10
set shiftround
set shiftwidth=4
set shortmess=aOstT
set showcmd
set showfulltag
set sidescrolloff=10
set smartcase
set softtabstop=4
set nostartofline
set statusline=%-f%r\ %2*%m%*\ \ \ \ %1*%{TagInStatusLine()}%*%=[%l:%c]\ \ \ \ [buf\ %n]
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tags=tags;/
set termencoding=utf-8
set timeoutlen=3000
set updatetime=1000
set virtualedit=all
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
set wildmenu
set wildmode=list:longest
set window=55
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/Notes
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +340 ~/Documents/Notes/Bookmarks.note
badd +1116 ~/Documents/Notes/Experiment.note
badd +0 ~/Documents/Notes/Revelations.note
badd +0 ~/Documents/HolyBible/KingJamesVersion.txt
silent! argdel *
edit ~/Documents/HolyBible/KingJamesVersion.txt
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 110 + 108) / 216)
exe 'vert 2resize ' . ((&columns * 105 + 108) / 216)
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,t,i,d
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'text'
setlocal filetype=text
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=MyFoldText()
setlocal foldtext=MyFoldText()
setlocal formatexpr=
setlocal formatoptions=rq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal infercase
setlocal iskeyword=@,48-57,_,192-255,_,$,@,%,#
setlocal keywordprg=
setlocal linebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
set numberwidth=5
setlocal numberwidth=5
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!Pl#Statusline(0,1).XPMautoUpdate(\"statusline\")
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'text'
setlocal syntax=text
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 91038 - ((14 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
91038
normal! 019l
lcd ~/Documents/Notes
wincmd w
argglobal
edit ~/Documents/Notes/Revelations.note
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <M-Left> :call xolox#notes#indent_list(-1, line('.'), line('.'))
imap <buffer> <silent> <M-Right> :call xolox#notes#indent_list(1, line('.'), line('.'))
imap <buffer> <silent> <S-Tab> :call xolox#notes#indent_list(-1, line('.'), line('.'))
smap <buffer> <silent> 	 :call xolox#notes#indent_list(1, line("'<"), line("'>"))gv
vmap <buffer> <silent> ,tn :TabNoteFromSelectedText
vmap <buffer> <silent> ,sn :SplitNoteFromSelectedText
vmap <buffer> <silent> ,en :NoteFromSelectedText
smap <buffer> <silent> <M-Left> :call xolox#notes#indent_list(-1, line("'<"), line("'>"))gv
smap <buffer> <silent> <M-Right> :call xolox#notes#indent_list(1, line("'<"), line("'>"))gv
smap <buffer> <silent> <S-Tab> :call xolox#notes#indent_list(-1, line("'<"), line("'>"))gv
imap <buffer> <silent> 	 :call xolox#notes#indent_list(1, line('.'), line('.'))
inoremap <buffer> <silent> <expr>  xolox#notes#cleanup_list()
imap <buffer> <expr> " xolox#notes#insert_quote(2)
imap <buffer> <expr> ' xolox#notes#insert_quote(1)
inoremap <buffer> *** :call xolox#notes#insert_ruler()
imap <buffer> <expr> * xolox#notes#insert_bullet('*')
imap <buffer> <expr> + xolox#notes#insert_bullet('+')
imap <buffer> <expr> - xolox#notes#insert_bullet('-')
imap <buffer> -> →
imap <buffer> -- —
imap <buffer> <- ←
inoremap <buffer> <silent> @ @
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=:\ ���\ ,:\ ◦\ ,:\ ▸\ ,:\ ▹\ ,:\ ▪\ ,:\ ▫\ ,:>\ 
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,t,i,d
setlocal concealcursor=
setlocal conceallevel=3
setlocal completefunc=xolox#notes#user_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'notes'
setlocal filetype=notes
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=xolox#notes#foldexpr()
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=MyFoldText()
setlocal foldtext=xolox#notes#foldtext()
setlocal formatexpr=
setlocal formatoptions=tcron
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=xolox#notes#include_expr(v:fname)
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal infercase
setlocal iskeyword=@,48-57,_,192-255,_,$,@,%,#
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
set numberwidth=5
setlocal numberwidth=5
setlocal omnifunc=xolox#notes#omni_complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!Pl#Statusline(0,0)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'notes'
setlocal syntax=notes
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 17 - ((16 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 110 + 108) / 216)
exe 'vert 2resize ' . ((&columns * 105 + 108) / 216)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=aOstT
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
