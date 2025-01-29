# Assembly Memory Access Violation Bug
This repository contains an example of a common bug in assembly code: a memory access violation caused by an incorrect index or pointer. The bug occurs in the instruction `mov eax, [esi+4*ecx]`, which attempts to read data from memory. If the index `ecx` is out of bounds, the program will crash.

## Bug
The `bug.asm` file contains the buggy code. The code attempts to access an array element using the index `ecx`. If `ecx` is too large, it leads to a memory access violation.

## Solution
The `bugSolution.asm` file contains the corrected code. The solution adds a check to ensure that `ecx` is within the bounds of the array before accessing the element. This prevents memory access violations and improves the program's stability.

## How to Reproduce
1. Assemble the `bug.asm` file using your preferred assembler.
2. Run the resulting executable. Observe that it crashes because of memory violation.
3. Assemble the `bugSolution.asm` file. The code now includes bounds checking for ecx.
4. Run the executable. It will successfully execute without crashing.