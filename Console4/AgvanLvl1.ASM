format pe console
entry start
include 'win32a.inc'
section '.code' code readable executable
start:
        push A
        call [printf]

        call [getch]

        call [ExitProcess]

section '.data' data readable writeable
        A db 'Hello world'

section '.idata' import data readable
library kernel32, 'KERNEL32.DLL',\
        msvcrt, 'msvcrt.dll'
import msvcrt, \
       printf, 'printf',\
       getch, '_getch'

import kernel32,\
       ExitProcess, 'ExitProcess'