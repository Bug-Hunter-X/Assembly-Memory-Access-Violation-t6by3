mov ecx, someIndex
mov edx, arraySize
cmp ecx, edx
jge handleError ;Jump to error handling if ecx is out of bounds
mov eax, [esi+4*ecx] ;Access memory only if ecx is within bounds
; ... rest of the code ...
handleError:
;Handle the error, for example, by printing an error message or exiting gracefully.