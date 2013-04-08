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

XPT elif " Add elif to if ...
elif `expression^:
    `cursor^

XPT fix " # FIXME - Personal
# FIXME - `cursor^

XPT todo " # TODO - Personal
# TODO - `cursor^

XPT doc  " ''' Docstring ''' Personal
'''`cursor^'''

XPT init " def __init__ Personal
XSET arg*|post=ExpandInsideEdge( ',$SPop', '' )
def __init__`$SPfun^(`$SParg^self`,$SPop`arg*^`$SParg^):
    '''The Constructor
    Aruguments:
        `arguments^
    '''
    `cursor^

XPT class " class .. : def __init__ ... Personal
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

XPT setup " Python C setup.py Personal
from distutils.core import setup, Extension

module1 = Extension('exmod',
                    include_dirs=['/usr/include/'],
                    libraries=['pthread'],
                    sources=['exmodmodule.c'])
setup(name='exmod',
    version='0.1',
    description='This is an example c package',
    author='Vincent Vetsch',
    url='http://www.mcglenninspections.com',
    ext_modules=[module1])

