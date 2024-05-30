format PE console
include 'includes\win32ax.inc'

section '.data' data readable writeable
msg db 'true',0
format1 db '%s', 0

section '.code' code readable executable
	start:
		
		cinvoke printf, format1,msg
		invoke ExitProcess, 0

section '.data' import data readable writeable

	library kernel32, 'kernel32.dll', \
	crtdll, 'crtdll.dll'
	
	import kernel32, \
	ExitProcess, 'ExitProcess'
	
	import crtdll, \
	printf, 'printf'
