XPTemplate priority=lang

let s:f = g:XPTfuncs()


XPTvar $TRUE          true
XPTvar $FALSE         false
XPTvar $NULL          null
XPTvar $UNDEFINED     undefined

XPTvar $BRif     ' '
XPTvar $BRel   \n
XPTvar $BRloop    ' '
XPTvar $BRstc ' '
XPTvar $BRfun   ' '

XPTvar $VOID_LINE  /* void */;
XPTvar $CURSOR_PH      /* cursor */


XPTvar $CL  /*
XPTvar $CM   *
XPTvar $CR   */

XPTinclude
      \ _common/common
      \ _comment/doubleSign
      \ _condition/ecma


XPTvar $VAR_PRE
XPTvar $FOR_SCOPE 'var '
XPTinclude
      \ _loops/for

XPTinclude
      \ javascript/jquery

" ========================= Function and Variables =============================


" ================================= Snippets ===================================

XPT func " function ..( .. ): ... Personal
function `name^(`input^) {
    /*.`name^:  `comment^
     *
     * Arguments:
     *    `input^
     * Return:
     *    `return values^
     */
    `cursor^;
}


