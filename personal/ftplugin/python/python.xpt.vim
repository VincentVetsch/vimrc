XPTemplate priority=personal

" ` and ^ are the place holders 
XPT alpha
test {
    a `b^ c
    `ddd^ eee `f g h i^
}

XPT beta
test {
    a `b^ c
    `dddd^ eee `f g h i^
        `cursor^
}

" how to comment and call a snippet from a snippet
XPT gamma  "  This is a Reminder
if `foo^:
    `:alpha:^`cursor^

XPT delta
one `two^, `two^
    `two^, `two^, `two^
    `two^, `two^, `two^, `two^,
    `two^, `two^, `two^, `two^, `two^

" C-D to Skip placeholders
XPT epsilon
<
three `four^ five `six^
>

XPT zeta
<
three` `four^ five`       `<six>^
>

XPT theta
mine `expand me...{{^`:zeta:^` `expand me...^`}}^

XPT filehead " file description
`$PYTHON_DOC_MARK^
Description : `cursor^

File    : `file()^
Author  : `$author^
Contact : `$email^
Date    : `date()^

`$PYTHON_DOC_MARK^


XPT docstr  " Comments
'''`cursor^'''

XPT init " def __init__
XSET arg*|post=ExpandInsideEdge( ',$SPop', '' )
def __init__`$SPfun^(`$SParg^self`,$SPop`arg*^`$SParg^):
    '''The Constructor
    Aruguments:
        `arguments^
    '''
    `cursor^

XPT class " class .. : def __init__ ...
class `ClassName^(`object^):
    '''`ClassName^:  `classComment^'''
    `:init:^

XPT def " def ..( .. ): ... Personal
def `name^(`input^):
    '''`name^:  `comment^

    Arguments:
        `input^
    Return:
        `return values^
    '''
    `cursor^
