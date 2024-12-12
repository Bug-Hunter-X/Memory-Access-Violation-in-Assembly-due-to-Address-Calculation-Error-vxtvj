# Assembly Memory Access Violation Bug

This repository demonstrates a common error in assembly programming: causing a memory access violation due to an incorrect address calculation.  The `mov eax, [ebx+ecx*4]` instruction is vulnerable to exceptions if the calculated address falls outside the valid memory range or points to inaccessible memory.

The `bug.asm` file contains the erroneous code.  The `bugSolution.asm` file provides a corrected version with improved error handling.