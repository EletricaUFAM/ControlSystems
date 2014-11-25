*
*  This simple demontstration program is an example of placing
*  ASM code inside an RPL program.. It also demnostrates some
*  assembly language programming for the HP.
*
::
12.34 56.78         ( put two test numbers on the stack )
		    ( they will get SWAPped )
*
*  to make the code object we could use the directive
*  CODE or CODEM.  This starts a code object.  CODEM
*  means all of the features of the MASD assmbler will
*  be available - this is usually more convenient but
*  MASD documentation is a little bare!
*
*  This little piece of code does SWAP
*
*  ob1 ob2 -> ob2 ob1
*
CODEM               % begin a code object
  A=DAT1  A         % D1=top stack, read pointer of the top item into A
  D1=D1+  5         % advance to second stack position
  C=DAT1  A         % read the pointer to the second stack item into C
  DAT1=A  A         % put first item from A into the second stack position
  D1=D1-  5         % point back to first stack item
  DAT1=C  A         % and write the original second item into first position
  RPL               % exit back into the RPL interpreter.  This is a MASD macro
ENDCODE             ( this command ends the assembly and puts the compiler )
	            ( back into RPL compiling mode. )
;




