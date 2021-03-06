let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <S-Tab> =BackwardsSnippet()
inoremap <C-Tab> 	
imap <C-S-F1> from IPython.core.debugger import Tracer; breakpoint1 = Tracer()
imap <S-F1> import pdb; pdb.set_trace()
imap <S-F5> "#TODO:  
imap <F5> =strftime("Completed:  %c")
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
snoremap <silent> 	 i<Right>=TriggerSnippet()
snoremap  b<BS>
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
snoremap % b<BS>%
snoremap ' b<BS>'
nmap ,cd :lcd %:h
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
nmap <silent> ,sm <Plug>smgr_MapSnippetsManager
map <silent> ,mm :ShowMarksPlaceMark
map <silent> ,ma :ShowMarksClearAll
map <silent> ,mh :ShowMarksClearMark
map <silent> ,mo :ShowMarksOn
map <silent> ,mt :ShowMarksToggle
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
nmap <silent> ,bb <Plug>BufKillBack
nmap <silent> ,bc :call BexecCloseOut()
vmap <silent> ,bx :call BexecVisual()
nmap <silent> ,bx :call Bexec()
nmap <silent> ,gW :vimgrep // %:ccl:cwinJ:nohls
nmap <silent> ,gw :vimgrep // %:ccl:cwinJ:nohls
nmap <silent> ,gs :vimgrep /// %:ccl:cwinJ:nohls
nmap <silent> ,ww :set invwrap:set wrap?
nmap <silent> ,qq :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"
nmap <silent> ,ss :echo serverlist()
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
nmap ,md :!mkdir -p %:p:h
nmap ,rr :1,$retab
vmap ,cd :cd %:p:h " Change global directory to the current directory of the current buffer
omap ,cd :cd %:p:h " Change global directory to the current directory of the current buffer
nmap ,dd :/\(\<\w\+\>\)\_s*\1
nmap ,p : set paste!
nmap ,tl :set list!
nmap ,v R✓
nmap ,ctvix :execute 'ConqueTermVSplit ipython '.expand('%:p')
nmap ,ctsix :execute 'ConqueTermSplit ipython '.expand('%:p')
nmap ,ctvi :ConqueTermVSplit ipython
nmap ,ctsi :ConqueTermSplit ipython
nmap ,ctvb :ConqueTermVSplit bash
nmap ,ctsb :ConqueTermSplit bash
noremap / :call SearchCompleteStart()/
nmap K <Plug>ManPageView
snoremap U b<BS>U
vmap [% [%m'gv``
snoremap \ b<BS>\
map \VTT :syn off:set ul=-1:set lzomz'af	r:.+1,'zs/^.\{-}\t//e:'a+1,'z-1s/\s\+//eg'amyjma:'a,'z-1g/^$/d'yjma'zk\srt'yjma'zk\MNT:'y+1,'zs/\s\+/	/g:'y+1,'zs/\s\+$//'yA	 "ay`yddmy:.,'z-1norm "aPjdd:set nolz:set ul=1000
map \VT0 :syn off:set ul=-1:set lzomz'af	r:.+1,'zs/^.\{-}\t//e:'a+1,'z-1s/\s\+//eg'amyjma:'a,'z-1g/^$/d'yjma'zk\srt'yjma'zk\MN0:'y+1,'zs/\s\+/	/g:'y+1,'zs/\s\+$//'yA	 "ay`yddmy:.,'z-1norm "aPjdd:set nolz:set ul=1000
map \vt0 :set lzomz'af	r:.+1,'zs/^.\{-}\t//e:'a+1,'z-1s/\s\+//eg'amyjma:'a,'z-1g/^$/d'yjma'zk\srt'yjma'zk\mn0:'y+1,'zs/\s\+/	/g:'y+1,'zs/\s\+$//'yA	 "ay`yddmy:.,'z-1norm "aPjdd:set nolz
map \vt9 :set lzomz'af	r:.+1,'zs/^.\{-}\t//e:'a+1,'z-1s/\s\+//eg'amyjma:'a,'z-1g/^$/d'yjma'zk\srt'yjma'zk\mn9:'y+1,'zs/\s\+/	/g:'y+1,'zs/\s\+$//'yA	 "ay`yddmy:.,'z-1norm "aPjdd:set nolz
map \vt8 :set lzomz'af	r:.+1,'zs/^.\{-}\t//e:'a+1,'z-1s/\s\+//eg'amyjma:'a,'z-1g/^$/d'yjma'zk\srt'yjma'zk\mn8:'y+1,'zs/\s\+/	/g:'y+1,'zs/\s\+$//'yA	 "ay`yddmy:.,'z-1norm "aPjdd:set nolz
map \vt7 :set lzomz'af	r:.+1,'zs/^.\{-}\t//e:'a+1,'z-1s/\s\+//eg'amyjma:'a,'z-1g/^$/d'yjma'zk\srt'yjma'zk\mn7:'y+1,'zs/\s\+/	/g:'y+1,'zs/\s\+$//'yA	 "ay`yddmy:.,'z-1norm "aPjdd:set nolz
map \vt6 :set lzomz'af	r:.+1,'zs/^.\{-}\t//e:'a+1,'z-1s/\s\+//eg'amyjma:'a,'z-1g/^$/d'yjma'zk\srt'yjma'zk\mn6:'y+1,'zs/\s\+/	/g:'y+1,'zs/\s\+$//'yA	 "ay`yddmy:.,'z-1norm "aPjdd:set nolz
map \vt5 :set lzomz'af	r:.+1,'zs/^.\{-}\t//e:'a+1,'z-1s/\s\+//eg'amyjma:'a,'z-1g/^$/d'yjma'zk\srt'yjma'zk\mn5:'y+1,'zs/\s\+/	/g:'y+1,'zs/\s\+$//'yA	 "ay`yddmy:.,'z-1norm "aPjdd:set nolz
map \vt4 :set lzomz'af	r:.+1,'zs/^.\{-}\t//e:'a+1,'z-1s/\s\+//eg'amyjma:'a,'z-1g/^$/d'yjma'zk\srt'yjma'zk\mn4:'y+1,'zs/\s\+/	/g:'y+1,'zs/\s\+$//'yA	 "ay`yddmy:.,'z-1norm "aPjdd:set nolz
map \vt3 :set lzomz'af	r:.+1,'zs/^.\{-}\t//e:'a+1,'z-1s/\s\+//eg'amyjma:'a,'z-1g/^$/d'yjma'zk\srt'yjma'zk\mn3:'y+1,'zs/\s\+/	/g:'y+1,'zs/\s\+$//'yA	 "ay`yddmy:.,'z-1norm "aPjdd:set nolz
map \vt2 :set lzomz'af	r:.+1,'zs/^.\{-}\t//e:'a+1,'z-1s/\s\+//eg'amyjma:'a,'z-1g/^$/d'yjma'zk\srt'yjma'zk\mn2:'y+1,'zs/\s\+/	/g:'y+1,'zs/\s\+$//'yA	 "ay`yddmy:.,'z-1norm "aPjdd:set nolz
map \mt3 omz'aOmy:'y+1,'z-1s/\s\+/\r/g:'y+1,'z-1g/^\s*$/d:'y+1,'z-1sort'yjma'zk\mw3'zdd'ydd
map \mt2 omz'aOmy:'y+1,'z-1s/\s\+/\r/g:'y+1,'z-1g/^\s*$/d:'y+1,'z-1sort'yjma'zk\mw2'zdd'ydd
map \mt1 omz'aOmy:'y+1,'z-1s/\s\+/\r/g:'y+1,'z-1g/^\s*$/d:'y+1,'z-1sort'yjma'zk\mw1'zdd'ydd
map \mt0 omz'aOmy:'y+1,'z-1s/\s\+/\r/g:'y+1,'z-1g/^\s*$/d:'y+1,'z-1sort'yjma'zk\mw0'zdd'ydd
map \mt9 omz'aOmy:'y+1,'z-1s/\s\+/\r/g:'y+1,'z-1g/^\s*$/d:'y+1,'z-1sort'yjma'zk\mw9'zdd'ydd
map \mt8 omz'aOmy:'y+1,'z-1s/\s\+/\r/g:'y+1,'z-1g/^\s*$/d:'y+1,'z-1sort'yjma'zk\mw8'zdd'ydd
map \mt7 omz'aOmy:'y+1,'z-1s/\s\+/\r/g:'y+1,'z-1g/^\s*$/d:'y+1,'z-1sort'yjma'zk\mw7'zdd'ydd
map \mt6 omz'aOmy:'y+1,'z-1s/\s\+/\r/g:'y+1,'z-1g/^\s*$/d:'y+1,'z-1sort'yjma'zk\mw6'zdd'ydd
map \mt5 omz'aOmy:'y+1,'z-1s/\s\+/\r/g:'y+1,'z-1g/^\s*$/d:'y+1,'z-1sort'yjma'zk\mw5'zdd'ydd
map \mt4 omz'aOmy:'y+1,'z-1s/\s\+/\r/g:'y+1,'z-1g/^\s*$/d:'y+1,'z-1sort'yjma'zk\mw4'zdd'ydd
map \mc3 :call Mcol("-b -w130")|call Mcol("")
map \mc2 :call Mcol("-b -w120")|call Mcol("")
map \mc1 :call Mcol("-b -w110")|call Mcol("")
map \mc0 :call Mcol("-b -w100")|call Mcol("")
map \mc9 :call Mcol("-b -w90")|call Mcol("")
map \mc8 :call Mcol("-b -w80")|call Mcol("")
map \mc7 :call Mcol("-b -w70")|call Mcol("")
map \mc6 :call Mcol("-b -w60")|call Mcol("")
map \mc5 :call Mcol("-b -w50")|call Mcol("")
map \mc4 :call Mcol("-b -w40")|call Mcol("")
map \mcr :call Mcol("")
map \mw3 0!'amcol -w130
map \mw2 0!'amcol -w120
map \mw1 0!'amcol -w110
map \mw0 0!'amcol -w100
map \mw9 0!'amcol -w90
map \mw8 0!'amcol -w80
map \mw7 0!'amcol -w70
map \mw6 0!'amcol -w60
map \mw5 0!'amcol -w50
map \mw4 0!'amcol -w40
map \ms0 0!'amcol -s120 -n10
map \ms9 0!'amcol -s110 -n9
map \ms8 0!'amcol -s100 -n8
map \ms7 0!'amcol -s90 -n7
map \ms6 0!'amcol -s80 -n6
map \ms5 0!'amcol -s70 -n5
map \ms4 0!'amcol -s60 -n4
map \ms3 0!'amcol -s50 -n3
map \ms2 0!'amcol -s40 -n2
map \MNT 0!'amcol -n1000 -t
map \MN0 0!'amcol -n1000
map \mn0 0!'amcol -n10
map \mn9 0!'amcol -n9
map \mn8 0!'amcol -n8
map \mn7 0!'amcol -n7
map \mn6 0!'amcol -n6
map \mn5 0!'amcol -n5
map \mn4 0!'amcol -n4
map \mn3 0!'amcol -n3
map \mn2 0!'amcol -n2
vmap ]% ]%m'gv``
snoremap ^ b<BS>^
snoremap ` b<BS>`
vmap a% [%v]%
nmap gx <Plug>NetrwBrowseX
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/`'
nmap <C-S-F5> :!python %
nmap <C-F5> :!ipython %
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
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
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
noremap <silent> <C-Right> :wincmd l
noremap <silent> <C-Up> :wincmd k
noremap <silent> <C-Down> :wincmd j
noremap <silent> <C-Left> :wincmd h
nmap <C-S-F1> from IPython.core.debugger import Tracer; breakpoint1 = Tracer()
nmap <S-F1> import pdb; pdb.set_trace()
nmap <C-F4> :NERDTreeClose
nmap <C-S-F4> :NERDTreeToggle
nmap <S-F4> :GundoToggle
nmap <F4> :TagbarToggle
nmap <S-F6> :bp
nmap <F6> :bn
nmap <C-F6> :call BufferWindow()
nmap <S-F3> :GrepBuffer -w #FIXME-C:
nmap <S-F2> :GrepBuffer -w #TODO-C:
nmap <F3> :GrepBuffer -w #FIXME:
nmap <S-F5> i#TODO:  
nmap <F5> "=strftime("Completed: %c")p
nmap <F2> :GrepBuffer -w #TODO:
map <S-Insert> <MiddleMouse>
inoremap <silent> 	 =TriggerSnippet()
imap  <Plug>SuperTabForward
imap  <Plug>SuperTabBackward
inoremap <silent> 	 =ShowAvailableSnips()
inoremap :: <End>:
imap <>v ✓
abbr sf self
iabbr vv Vincent Vetsch
iabbr teh the
iabbr Teh The
iabbr taht that
iabbr Taht That
iabbr shoudl should
iabbr Shoudl Should
iabbr seureth suereth
iabbr Seureth Suereth
iabbr seperate separate
iabbr Seperate Separate
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
iabbr form from
abbr sefl self
iabbr slef self
let &cpo=s:cpo_save
unlet s:cpo_save
set autochdir
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backup
set backupdir=~/.vim/backup
set clipboard=autoselect,exclude:cons\\|linux,vimclip
set cmdheight=2
set complete=.,w,b,t,i,d,k~/.vim/syntax/python.vim
set completeopt=longest,menuone
set cpoptions=aABceFsmq$
set directory=~/.vim/tmp
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fileformats=unix,dos,mac
set fillchars=vert:|,fold:-,stl:\ ,stlnc:\ 
set formatoptions=rq
set guifont=DroidSansMono\ 8
set guioptions=aegimrLt
set helplang=en
set hidden
set history=100
set hlsearch
set ignorecase
set imsearch=0
set incsearch
set infercase
set iskeyword=@,48-57,_,192-255,_,$,@,%,#,.,(
set laststatus=2
set lazyredraw
set listchars=tab:>-,trail:-
set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
set modelines=3
set mouse=a
set omnifunc=syntaxcomplete#Complete
set printoptions=paper:letter
set report=0
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set scrolloff=10
set shiftround
set shiftwidth=4
set shortmess=aOstT
set showcmd
set showfulltag
set showmatch
set sidescrolloff=10
set smartcase
set smarttab
set softtabstop=4
set nostartofline
set statusline=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tags=~/mytags,~/.vim/tags/python27.ctags
set termencoding=utf-8
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
set wildmenu
set wildmode=list:longest
set window=47
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/Dish/src/DishDB
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/Projects/Dish/src/DishDB/Product.py
badd +1 ~/Projects/Dish/src/DishDB/DishDB.py
badd +1 ~/Projects/Dish/src/DishDB/Hours.py
badd +1 ~/Projects/Dish/src/DishDB/__init__.py
badd +1 ~/Projects/Dish/src/DishDB/Points.py
badd +1 ~/Projects/Dish/src/DishDB/Ratest.py
badd +1 ~/Projects/Dish/src/DishDB/ReturnAuthorized.py
badd +1 ~/Projects/Dish/src/DishDB/hh.html
badd +1 ~/Projects/Dish/src/DishDB/DishDB.sql
badd +1 ~/Projects/Dish/src/DishDB/style.css
badd +0 ~/Projects/Dish/src/DishDB/DishDB.task
args DishDB.py Hours.py __init__.py Points.py Product.py Ratest.py ReturnAuthorized.py hh.html DishDB.sql style.css
edit ~/Projects/Dish/src/DishDB/DishDB.task
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit ~/Projects/Dish/src/DishDB/DishDB.task
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
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,t,i,d,k~/.vim/syntax/python.vim
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
if &filetype != 'taskedit'
setlocal filetype=taskedit
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
setlocal foldtext=foldtext()
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
setlocal iskeyword=@,48-57,_,192-255,_,$,@,%,#,.,(
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
setlocal statusline=%!Pl#Statusline(0,1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'task.vim'
setlocal syntax=task.vim
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
2
normal zo
14
normal zo
20
normal zo
14
normal zo
2
normal zo
let s:l = 22 - ((21 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 03l
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
