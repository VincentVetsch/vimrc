let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>XPTrawKey 
imap <silent> <Plug>XPTfallback <Plug>XPTrawKey
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
map  :py EvaluateCurrentRange()
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
noremap s :TCommentAs =&ft_
noremap n :TCommentAs =&ft 
noremap a :TCommentAs 
noremap b :TCommentBlock
vnoremap <silent> r :TCommentRight
vnoremap <silent> i :TCommentInline
nnoremap <silent> r :TCommentRight
onoremap <silent> r :TCommentRight
noremap   :TComment 
noremap <silent> p m`vip:TComment``
vnoremap <silent>  :TCommentMaybeInline
nnoremap <silent>  :TComment
onoremap <silent>  :TComment
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
noremap ,_s :TCommentAs =&ft_
noremap ,_n :TCommentAs =&ft 
noremap ,_a :TCommentAs 
noremap ,_b :TCommentBlock
xnoremap <silent> ,_r :TCommentRight
nnoremap <silent> ,_r :TCommentRight
snoremap <silent> ,_r :TCommentRight
onoremap <silent> ,_r :TCommentRight
xnoremap <silent> ,_i :TCommentInline
noremap ,_  :TComment 
noremap <silent> ,_p vip:TComment
xnoremap <silent> ,__ :TCommentMaybeInline
nnoremap <silent> ,__ :TComment
snoremap <silent> ,__ :TComment
onoremap <silent> ,__ :TComment
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
nmap <silent> ,bb <Plug>BufKillBack
nmap <silent> ,bc :call BexecCloseOut()
vmap <silent> ,bx :call BexecVisual()
nmap <silent> ,bx :call Bexec()
nmap ,a <Plug>ToggleAutoCloseMappings
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
vmap ,ns :NoteFromSelectedText 
nmap ,md :!mkdir -p %:p:h
nmap ,rr :1,$retab
map ,cd :cd %:p:h " Change global directory to the current directory of the current buffer
nmap ,du :/\(\<\w\+\>\)\_s*\1
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
xmap S <Plug>VSurround
vmap [% [%m'gv``
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
vmap a% [%v]%
nmap cs <Plug>Csurround
map cell :call AddCell("")
nmap ds <Plug>Dsurround
xnoremap <silent> gC :TCommentMaybeInline
nnoremap <silent> gCc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineAnywayg@$
nnoremap <silent> gC :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorAnywayg@
xnoremap <silent> gc :TCommentMaybeInline
nnoremap <silent> gcc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineg@$
nnoremap <silent> gc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#Operatorg@
xmap gS <Plug>VgSurround
nmap gx <Plug>NetrwBrowseX
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/`'
xmap s <Plug>Vsurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
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
nmap <C-Space> :call BufferWindow()
nmap <C-F6> :call BufferWindow()
nmap <S-F3> :GrepBuffer -w #FIXME-C:
nmap <S-F2> :GrepBuffer -w #TODO-C:
nmap <F3> :GrepBuffer -w #FIXME:
nmap <S-F5> i#TODO:  
nmap <F5> "=strftime("Completed: %c")p
nmap <F2> :GrepBuffer -w #TODO:
map <S-Insert> <MiddleMouse>
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent>  =XPTemplateStart(0,{'k':'<C-r++<C-\++','forcePum':1})
inoremap <silent>  =XPTemplateStart(0,{'k':'<C-r++<C-r++<C-\++','popupOnly':1})
imap  <Plug>Isurround
inoremap <silent> OC <Right>
inoremap <silent>  =XPTemplateStart(0,{'k':'<C-\++'})
inoremap s :TCommentAs =&ft_
inoremap n :TCommentAs =&ft 
inoremap a :TCommentAs 
inoremap b :TCommentBlock
inoremap <silent> r :TCommentRight
inoremap   :TComment 
inoremap <silent> p :norm! m`vip:TComment``
inoremap <silent>  :TComment
imap <>v ✓
iabbr ifm if __name__ == '__main__':
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
iabbr sefl self
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
set balloonexpr=GetTagSignature()
set clipboard=autoselect,exclude:cons\\|linux,vimclip
set cmdheight=2
set complete=.,w,b,t,i,d
set completeopt=longest,menuone
set cpoptions=aABceFsmq$
set directory=~/.vim/tmp
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fileformats=unix,dos,mac
set fillchars=vert:|,fold:-,stl:\ ,stlnc:\ 
set formatoptions=rq
set guifont=DroidSansMono\ 8
set helplang=en
set hidden
set history=100
set hlsearch
set ignorecase
set incsearch
set infercase
set iskeyword=@,48-57,_,192-255,_,$,@,%,#
set laststatus=2
set lazyredraw
set listchars=tab:>-,trail:-
set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
set modelines=3
set mouse=a
set mousemodel=popup
set omnifunc=syntaxcomplete#Complete
set path=.,/usr/include,,,/usr/lib/python2.7,/usr/lib/python2.7/plat-linux2,/usr/lib/python2.7/lib-tk,/usr/lib/python2.7/lib-dynload,/usr/local/lib/python2.7/dist-packages,/usr/lib/python2.7/dist-packages,/usr/lib/python2.7/dist-packages/PIL,/usr/lib/python2.7/dist-packages/gst-0.10,/usr/lib/python2.7/dist-packages/gtk-2.0,/usr/lib/pymodules/python2.7,/usr/lib/python2.7/dist-packages/ubuntu-sso-client,/usr/lib/python2.7/dist-packages/ubuntuone-client,/usr/lib/python2.7/dist-packages/ubuntuone-installer,/usr/lib/python2.7/dist-packages/ubuntuone-storage-protocol,/usr/lib/python2.7/dist-packages/wx-2.8-gtk2-unicode
set printoptions=paper:letter
set report=0
set ruler
set rulerformat=%-14.(%l,%c%V%)%=%P%{XPMautoUpdate(\"ruler\")}
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/personal
set scrolloff=10
set shiftround
set shiftwidth=4
set shortmess=aOstT
set showcmd
set showfulltag
set showmatch
set sidescrolloff=10
set smartcase
set softtabstop=4
set nostartofline
set statusline=%-f%r\ %2*%m%*\ \ \ \ %1*%{TagInStatusLine()}%*%=[%l:%c]\ \ \ \ [buf\ %n]
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tags=tags;/
set termencoding=utf-8
set updatetime=1000
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
set wildmenu
set wildmode=list:longest
set window=45
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/Notes
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +17 ~/Documents/Notes/Vincent\ Vetsch’s\ Opening\ Note.note
badd +1 ~/Documents/Notes/Ideas.note
silent! argdel *
edit ~/Documents/Notes/Vincent\ Vetsch’s\ Opening\ Note.note
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
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
setlocal colorcolumn=
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
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=xolox#notes#foldtext()
setlocal formatexpr=
setlocal formatoptions=tcron
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=0
setlocal include=
setlocal includeexpr=xolox#notes#include_expr(v:fname)
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal infercase
setlocal iskeyword=@,48-57,_,192-255,_,$,@,%,#,(,)
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
setlocal statusline=%!Pl#Statusline(0,1).XPMautoUpdate(\"statusline\")
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
let s:l = 17 - ((16 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 027l
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
