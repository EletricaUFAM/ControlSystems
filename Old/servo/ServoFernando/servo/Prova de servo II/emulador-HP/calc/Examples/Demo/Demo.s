RPL

INCLUDE Demo.H
******************************************************************************
*  This is a demonstration library for the HP49
*  There are 2 source files:
*    Demo.s  (this file) which is the "main" program
*    DemoInf.s which is an Inform box
*
*  In the Project window, click  the "Files" tab to see the list of project
*  files.  You may add or remove files by using the "project" menu, "Add File"
*  or "Remove File" entries.
*
*  Now do the following:
*  1.  On the Debugger Form, select "Emulator" and then "Emulate"
*       You should see an HP49 Calculator on the screen
*  2.  On this, the Editor Form, select "Compilation" and then "Build Project"
*       There should be activity on the computer as the project is built
*       then on the calculator as the project is loaded.
*       Finally, the calculator should show "Demo" on its left menu key
*  3.  Press the "Demo" key with your mouse and the library will run.
*       Click the OK menu key with your mouse and results will appear on
*       the stack.
*  4.  In the margin below, click to the left of line 40
*       A red circle "Breakpoint" appears
*  5.  Once more press the "Demo" key on the calculator.  This time the
*       This time the breakpoint will cause execution to stop (this is the
*       blue line).  In the "Rpl Debugging" form there is a lot of interesting
*       information about the state of the calculator and its variables.
*  6.  After you finish looking at the debugging information, press the
*      "Continue" button on the "Rpl Debugging" form to finish execution.
*
*   There is a lot more information in the help and ReadMe files.  We hope you
*   enjoy the development system.
*
******************************************************************************
xNAME Demo
::
 InfDemo    ( make the Inform box on the display and get some numbers back )
 DROP       ( the result flag )
;           ( leave the Inform box fields on the stack )


******************************************************************************
*  This is the CONFIG entry for the project.  Its name is listed on the
*  Project's "Project Data" \ "Config" box.
*
*  In the Project window, click  the "Project Data" tab to see the library
*  information.  Notice that the ROMID is hex 201.  This must be the same
*  as the # xxx in the CONFIG entry below.
*
*  If this is unfamiliar to you, just copy this for your own projects at first.
*  You may want to increase the :Romid" by 1 each time to avoid conflicts!
*
******************************************************************************
NULLNAME CONFIG
::
* This is our $CONFIG program (attaches to home directory)
  HOMEDIR
  # 201
  XEQSETLIB
;
