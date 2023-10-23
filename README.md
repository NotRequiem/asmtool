## SS-Helper
To run this program, you will need to have Powershell (latest version) installed, because to not have 70000 lines of ASM source code, i used the PowerShell API to do some file operations
.
## Features
1. Automatically downloads, extracts and runs System Informer without the need for installation. It will run SystemInformer as admin for you if you run SSHelper as admininistrator.
2. Detects unsigned DLL injections and unsigned .exe files
3. Reads any Search results.txt file you put next to the program to detect unsigned files such as Binary, automatically for you.
4. Deletes all directories and files that are not being used in your SS automatically, with a SelfDestuct option at the end.
5. If duplicate results are detected when scanning unsigned files, they will only appear 1 time per console.
6. If the program fails at any possible point, it will give a detailed error but will continue to run and complete all its checks.
7. As long as the program is using any files (such as sigcheck or system informer), they will be marked as "hidden" files, and deleted when you stop using them.


When the SelfDestruct algorithm runs, it will first try to kill the System Informer.exe process, and after that it will try to remove the System Informer folder. 
However, if you try to selfdestruct SSHelper while running SystemInformer, you might have to type "asd" two times in order to selfdestruct.

The program will end if you close it or if it detects that the SelfDestruct was succesful.
