" mcol.vim:
"  Author: Charles E. Campbell, Jr.
"  Date:	Aug 26, 2010
"  Version:	1c	ASTRO-ONLY
" ---------------------------------------------------------------------
"  Load Once: {{{1
if &cp || exists("g:loaded_mcol")
 finish
endif
let s:keepcpo= &cpo
set cpo&vim
let g:loaded_mcol= "v1c"
"DechoTabOn

" ---------------------------------------------------------------------
"  Commands: {{{1
com! -nargs=*  Mcol call Mcol(<q-args>)

" ---------------------------------------------------------------------
" Maps: converts straight list of words into columnar table {{{1

"  \mn# qty of columns
map \mn2  0!'amcol -n2<CR>
map \mn3  0!'amcol -n3<CR>
map \mn4  0!'amcol -n4<CR>
map \mn5  0!'amcol -n5<CR>
map \mn6  0!'amcol -n6<CR>
map \mn7  0!'amcol -n7<CR>
map \mn8  0!'amcol -n8<CR>
map \mn9  0!'amcol -n9<CR>
map \mn0  0!'amcol -n10<CR>
map \MN0  0!'amcol -n1000<CR>
map \MNT  0!'amcol -n1000 -t<CR>

"  \ms# uses fscanf rather than fgets, into qty of columns
map \ms2  0!'amcol -s40 -n2<CR>
map \ms3  0!'amcol -s50 -n3<CR>
map \ms4  0!'amcol -s60 -n4<CR>
map \ms5  0!'amcol -s70 -n5<CR>
map \ms6  0!'amcol -s80 -n6<CR>
map \ms7  0!'amcol -s90 -n7<CR>
map \ms8  0!'amcol -s100 -n8<CR>
map \ms9  0!'amcol -s110 -n9<CR>
map \ms0  0!'amcol -s120 -n10<CR>

"  \mw# qty tabular columns based on display width available
map \mw4  0!'amcol -w40<CR>
map \mw5  0!'amcol -w50<CR>
map \mw6  0!'amcol -w60<CR>
map \mw7  0!'amcol -w70<CR>
map \mw8  0!'amcol -w80<CR>
map \mw9  0!'amcol -w90<CR>
map \mw0  0!'amcol -w100<CR>
map \mw1  0!'amcol -w110<CR>
map \mw2  0!'amcol -w120<CR>
map \mw3  0!'amcol -w130<CR>

" \mc
map \mcr  :call Mcol("")<CR>
map \mc4  :call Mcol("-b -w40")<bar>call Mcol("")<CR>
map \mc5  :call Mcol("-b -w50")<bar>call Mcol("")<CR>
map \mc6  :call Mcol("-b -w60")<bar>call Mcol("")<CR>
map \mc7  :call Mcol("-b -w70")<bar>call Mcol("")<CR>
map \mc8  :call Mcol("-b -w80")<bar>call Mcol("")<CR>
map \mc9  :call Mcol("-b -w90")<bar>call Mcol("")<CR>
map \mc0  :call Mcol("-b -w100")<bar>call Mcol("")<CR>
map \mc1  :call Mcol("-b -w110")<bar>call Mcol("")<CR>
map \mc2  :call Mcol("-b -w120")<bar>call Mcol("")<CR>
map \mc3  :call Mcol("-b -w130")<bar>call Mcol("")<CR>

" \mt# : table maps (uses \mw#)
map \mt4	o<esc>mz'aO<esc>my:'y+1,'z-1s/\s\+/\r/g<cr>:'y+1,'z-1g/^\s*$/d<cr>:'y+1,'z-1sort<cr>'yjma'zk\mw4'zdd'ydd
map \mt5	o<esc>mz'aO<esc>my:'y+1,'z-1s/\s\+/\r/g<cr>:'y+1,'z-1g/^\s*$/d<cr>:'y+1,'z-1sort<cr>'yjma'zk\mw5'zdd'ydd
map \mt6	o<esc>mz'aO<esc>my:'y+1,'z-1s/\s\+/\r/g<cr>:'y+1,'z-1g/^\s*$/d<cr>:'y+1,'z-1sort<cr>'yjma'zk\mw6'zdd'ydd
map \mt7	o<esc>mz'aO<esc>my:'y+1,'z-1s/\s\+/\r/g<cr>:'y+1,'z-1g/^\s*$/d<cr>:'y+1,'z-1sort<cr>'yjma'zk\mw7'zdd'ydd
map \mt8	o<esc>mz'aO<esc>my:'y+1,'z-1s/\s\+/\r/g<cr>:'y+1,'z-1g/^\s*$/d<cr>:'y+1,'z-1sort<cr>'yjma'zk\mw8'zdd'ydd
map \mt9	o<esc>mz'aO<esc>my:'y+1,'z-1s/\s\+/\r/g<cr>:'y+1,'z-1g/^\s*$/d<cr>:'y+1,'z-1sort<cr>'yjma'zk\mw9'zdd'ydd
map \mt0	o<esc>mz'aO<esc>my:'y+1,'z-1s/\s\+/\r/g<cr>:'y+1,'z-1g/^\s*$/d<cr>:'y+1,'z-1sort<cr>'yjma'zk\mw0'zdd'ydd
map \mt1	o<esc>mz'aO<esc>my:'y+1,'z-1s/\s\+/\r/g<cr>:'y+1,'z-1g/^\s*$/d<cr>:'y+1,'z-1sort<cr>'yjma'zk\mw1'zdd'ydd
map \mt2	o<esc>mz'aO<esc>my:'y+1,'z-1s/\s\+/\r/g<cr>:'y+1,'z-1g/^\s*$/d<cr>:'y+1,'z-1sort<cr>'yjma'zk\mw2'zdd'ydd
map \mt3	o<esc>mz'aO<esc>my:'y+1,'z-1s/\s\+/\r/g<cr>:'y+1,'z-1g/^\s*$/d<cr>:'y+1,'z-1sort<cr>'yjma'zk\mw3'zdd'ydd

" ---------------------------------------------------------------------
" Visual Maps: vim-table stuff (eg. vimtab vimtbl): {{{1
"  Mark a, then move to end-of-region, \vt#   (# is qty of items per line)
"  Uses 'a, 'y, 'z, "a, and \mn# maps
"  Assumes leader is demarked from to-be-tabularized text by a tab, and that leader has no tabs
map \vt2 :set lz<CR>o<Esc>mz'af<TAB>r<CR>:.+1,'zs/^.\{-}\t//e<CR>:'a+1,'z-1s/\s\+/<C-V><CR>/eg<CR>'amyjma:'a,'z-1g/^$/d<CR>'yjma'zk\srt'yjma'zk\mn2:'y+1,'zs/\s\+/<TAB>/g<CR>:'y+1,'zs/\s\+$//<CR>'yA<TAB> <Esc>"ay`yddmy:.,'z-1norm "aP<CR>jdd:set nolz<CR>
map \vt3 :set lz<CR>o<Esc>mz'af<TAB>r<CR>:.+1,'zs/^.\{-}\t//e<CR>:'a+1,'z-1s/\s\+/<C-V><CR>/eg<CR>'amyjma:'a,'z-1g/^$/d<CR>'yjma'zk\srt'yjma'zk\mn3:'y+1,'zs/\s\+/<TAB>/g<CR>:'y+1,'zs/\s\+$//<CR>'yA<TAB> <Esc>"ay`yddmy:.,'z-1norm "aP<CR>jdd:set nolz<CR>
map \vt4 :set lz<CR>o<Esc>mz'af<TAB>r<CR>:.+1,'zs/^.\{-}\t//e<CR>:'a+1,'z-1s/\s\+/<C-V><CR>/eg<CR>'amyjma:'a,'z-1g/^$/d<CR>'yjma'zk\srt'yjma'zk\mn4:'y+1,'zs/\s\+/<TAB>/g<CR>:'y+1,'zs/\s\+$//<CR>'yA<TAB> <Esc>"ay`yddmy:.,'z-1norm "aP<CR>jdd:set nolz<CR>
map \vt5 :set lz<CR>o<Esc>mz'af<TAB>r<CR>:.+1,'zs/^.\{-}\t//e<CR>:'a+1,'z-1s/\s\+/<C-V><CR>/eg<CR>'amyjma:'a,'z-1g/^$/d<CR>'yjma'zk\srt'yjma'zk\mn5:'y+1,'zs/\s\+/<TAB>/g<CR>:'y+1,'zs/\s\+$//<CR>'yA<TAB> <Esc>"ay`yddmy:.,'z-1norm "aP<CR>jdd:set nolz<CR>
map \vt6 :set lz<CR>o<Esc>mz'af<TAB>r<CR>:.+1,'zs/^.\{-}\t//e<CR>:'a+1,'z-1s/\s\+/<C-V><CR>/eg<CR>'amyjma:'a,'z-1g/^$/d<CR>'yjma'zk\srt'yjma'zk\mn6:'y+1,'zs/\s\+/<TAB>/g<CR>:'y+1,'zs/\s\+$//<CR>'yA<TAB> <Esc>"ay`yddmy:.,'z-1norm "aP<CR>jdd:set nolz<CR>
map \vt7 :set lz<CR>o<Esc>mz'af<TAB>r<CR>:.+1,'zs/^.\{-}\t//e<CR>:'a+1,'z-1s/\s\+/<C-V><CR>/eg<CR>'amyjma:'a,'z-1g/^$/d<CR>'yjma'zk\srt'yjma'zk\mn7:'y+1,'zs/\s\+/<TAB>/g<CR>:'y+1,'zs/\s\+$//<CR>'yA<TAB> <Esc>"ay`yddmy:.,'z-1norm "aP<CR>jdd:set nolz<CR>
map \vt8 :set lz<CR>o<Esc>mz'af<TAB>r<CR>:.+1,'zs/^.\{-}\t//e<CR>:'a+1,'z-1s/\s\+/<C-V><CR>/eg<CR>'amyjma:'a,'z-1g/^$/d<CR>'yjma'zk\srt'yjma'zk\mn8:'y+1,'zs/\s\+/<TAB>/g<CR>:'y+1,'zs/\s\+$//<CR>'yA<TAB> <Esc>"ay`yddmy:.,'z-1norm "aP<CR>jdd:set nolz<CR>
map \vt9 :set lz<CR>o<Esc>mz'af<TAB>r<CR>:.+1,'zs/^.\{-}\t//e<CR>:'a+1,'z-1s/\s\+/<C-V><CR>/eg<CR>'amyjma:'a,'z-1g/^$/d<CR>'yjma'zk\srt'yjma'zk\mn9:'y+1,'zs/\s\+/<TAB>/g<CR>:'y+1,'zs/\s\+$//<CR>'yA<TAB> <Esc>"ay`yddmy:.,'z-1norm "aP<CR>jdd:set nolz<CR>
map \vt0 :set lz<CR>o<Esc>mz'af<TAB>r<CR>:.+1,'zs/^.\{-}\t//e<CR>:'a+1,'z-1s/\s\+/<C-V><CR>/eg<CR>'amyjma:'a,'z-1g/^$/d<CR>'yjma'zk\srt'yjma'zk\mn0:'y+1,'zs/\s\+/<TAB>/g<CR>:'y+1,'zs/\s\+$//<CR>'yA<TAB> <Esc>"ay`yddmy:.,'z-1norm "aP<CR>jdd:set nolz<CR>
map \VT0 :syn off<CR>:set ul=-1<CR>:set lz<CR>o<Esc>mz'af<TAB>r<CR>:.+1,'zs/^.\{-}\t//e<CR>:'a+1,'z-1s/\s\+/<C-V><CR>/eg<CR>'amyjma:'a,'z-1g/^$/d<CR>'yjma'zk\srt'yjma'zk\MN0:'y+1,'zs/\s\+/<TAB>/g<CR>:'y+1,'zs/\s\+$//<CR>'yA<TAB> <Esc>"ay`yddmy:.,'z-1norm "aP<CR>jdd:set nolz<CR>:set ul=1000<CR>
map \VTT :syn off<CR>:set ul=-1<CR>:set lz<CR>o<Esc>mz'af<TAB>r<CR>:.+1,'zs/^.\{-}\t//e<CR>:'a+1,'z-1s/\s\+/<C-V><CR>/eg<CR>'amyjma:'a,'z-1g/^$/d<CR>'yjma'zk\srt'yjma'zk\MNT:'y+1,'zs/\s\+/<TAB>/g<CR>:'y+1,'zs/\s\+$//<CR>'yA<TAB> <Esc>"ay`yddmy:.,'z-1norm "aP<CR>jdd:set nolz<CR>:set ul=1000<CR>

" ---------------------------------------------------------------------
" Mcol: {{{1
fun! Mcol(options) range
"  call Dfunc("Mcol(options<".a:options.">")

  if a:options != ""

   if a:options == "?" || a:options == "help"
	" show options
"	call Decho("show options")
	echo "Options:"
	echo "-b   : separate words based on whitespace"
    echo "-b...: separate words based on string"
    echo "-n#  : number of columns"
    echo "-w#  : max width of output (in characters)"
    echo "-s#  : set screenwidth columns"
    echo "-t   : toggle table transpose"
    echo "-%   : C format specifier"
    if exists("s:mcol_options")
     echo "current options<".s:mcol_options.">"
    else
	 echo "no options currently selected"
    endif
   else
	" change options
"	call Decho("change options")
	let s:mcol_options= a:options
   endif

  elseif exists("s:mcol_options")
   " use mcol filter with options
"   call Decho("filter with options<".s:mcol_options.">")
   exe "'a,.!mcol ".s:mcol_options

  else
   " use mcol filter with no options
"   call Decho("filter with no options")
   norm! "0!'amcol
  endif

"  call Dret("Mcol")
endfun

let &cpo= s:keepcpo
" ---------------------------------------------------------------------
"  vim: fdm=marker
