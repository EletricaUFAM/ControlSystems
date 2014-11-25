I hope you enjoy the product.  Please send REPRODUCIBLE bug reports with the complete project file required. Please simplify it as much as you can. 

Please do not ask me SysRPL or Calculator questions (trust me, you are much better off asking in the comp.sys.hp48 news group)!
I cannot provide technical support for Hewlett-Packard or their products, please call them for help.

Copyright (c) May, 2003
All Rights Reserved
William G. Graves
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
This is the Debug4x v2.1 Readme file.  This file contains the following topics:
 
 1. Installation 
 2. Removing older versions of Debug2 (HPSDK)
 3. If you use MASD syntax for {{  }} Nullam Structures
 4. Old debug2 Inform editor files and debug2 Project files
 5. Checking for Empty Inform Fields
 6. InformEditor and form types.
 7. Converting an HP49 project to the HP48 (and vice versa)
 8. Automatic word completion, stack diagrams 
 9. Command Line Arguments
10. Message Tables for Libraries, CONFIG entry for a library
11. Breakpoints and Ports
12. Emulator Tips
13. Autoload A Project
14. CR/LF, Unix Files, and Real Tabs
15. Connectivity Package no longer in Debug4x
16. Fun Things to Try

17. Copyright 
18. Disclaimer of Warranty

=================================================================================

1.  INSTALLATION

Run the distribution program, it will unpack itself.
Go into the unpacked folder and run SETUP.exe to install.

If you have previously used the EMU48 emulator for either HP48 or HP49, there will be a file called C:\Windows\Emu48.ini
This file is created by Emu48 whenever it is run and it contains important constants for your independent use of the emulator.  These entries will NOT be used when the emulator is started by Debug4x.  

Debug4x uses a DLL version of EMU48 and creates registry entries for key EMU48 settings.  These entries are independent of the values used by the stand-alone version of EMU48. 

File types *.s  *.h and *.hpp will be hooked to Debug4x.exe (you get a dialog asking about *.s and *.h).
The icons for the *.s, *.h, *.hp and *.hpp files will also be changed.

- Read the README file (there is a link in the START menu)

- Run the DEMO project (link in the START menu) and read the comments - it will get you started

- The EXAMPLE programs will show how to code simple libraries, directories and verbs.  There are also examples of the Inform Files.

- The Help files have a "Quick Start" guide to help you get going.

=================================================================================

2. REMOVING OLDER VERSIONS OF Debug4x (HPSDK)

Debug4x v2.0 is a major change to the program and no reasonable solution to an "upgrade" install was designed.  Therefore you are on your own in removing the older debug2 program.  This is highly recommended!  The registry entries and folders are completely independent between the two versions.

Registry Editing can be very dangerous for even experienced users so be careful!
The OLD debug2 registry items are under HKCU\Software\debugger - these may be removed after uninstalling the old program.
The NEW Debug4x registry items are under HKCU\Software\Hewlett-Packard\Debug4x

=================================================================================

3. IF YOU USE MASD SYNTAX FOR {{  }} Nullam STRUCTURES

The order of variables in the sequence {{ A B C }} follows the HP RPLCOMP order.
1 2 3  {{ A B C }} means that "A" will have 1, "B" 2 and "C" 3.  "A" will be 3GETLAM, "B" 2GETLAM etc.

To convert from MASD: leave your stack and xGETLAM/xPUTLAM calls as they currently are.  Simply reverse the order of the variables between the {{   }} marks.  In the above example change code to "  {{ C B A }}  ( RPLComp Order ) " and all will work fine.  Use a comment like ( RPLComp Order ) to avoid confusion in the future!

=================================================================================

4. OLD DEBUG2 INFORM EDITOR AND DEBUG2 PROJECT FILES

Old Inform Editor files may be loaded directly into the new Inform editor.  After opening in the Inform Editor, press "Save" to generate new source code and save the file.  If you wish to change the code to HP48 style DoInputForm format, check the "48 Style" checkbox and then press "Save".

Old Inform Editor files will have an entry name like NAMELESS DoMyTitle and messages are referred to by MyTitleMesBase+#nn etc.  The New Inform Editor will produce an entry like NAMELESS MyTitle and the messages are referred to in the same way as with the old editor.  Thus Debug4x is more consistent with the names used for Inform Box items.  You will have to remove the "Do" from calls to the entry name to match the new name.

As an alternative, you may change the Unit Name of the Inform to Doxxxx, so the entry name now matches the previously generated name.  If you do this, messages will be referred to by DoxxxxMesBase+#nn etc.  If you do not refer to these messages externally, this may be a simpler conversion.

Old Profect files (*.hpp) may be used to load older projects.  After loading, visit each of the Project Form's tabbed areas and correct the information as follows:
Debug Data: the "LR Files" box should be cleared.  Debug4x will automatically load all normal .LR files
Compilation: clear all 3 boxes, place a checkmark in the "Use Standard File" box

Now "Save" the project and then "Build" the project.

=================================================================================

5. CHECKING FOR EMPTY INFORM FIELDS
 
The HP48 "DoInputform" returns a MINUSONE for empty fields.  The HP49 "IfMain" returns a xNOVAL for empty fields
A simple check for missing values requires different code for the two calcs.

To help this situation, Suprom48 NOVAL has EQU to MINUSONE and Suprom49 has NOVAL EQU to xNOVAL.  This allows the same test code for both calculator forms:  xxxx NOVAL EQ

The works unless a DoInputForm is run on the HP49!  In this case an empty field generates a MINUSONE when we expected xNOVAL.  So a generalized test that works in all three cases has to be a little more complex.  The sample code below returns a #1 for valid field, #0 for empty field.  This code works in all 3 cases!

     DUP MINUSONE EQ ITE :: DROP #0 ; :: NOVAL EQ ITE #0 #1 ;

=================================================================================

6. INFORMEDITOR AND FORM TYPES
 
Inform Files can be produced in 4 types
a. HP48   DoInputForm       text "inline"    (Inform Editor: M Table is unchecked, 48 Style checked)
b. HP48   DoInputForm       message table    (Inform Editor: M Table is checked, 48 Style checked)
c. HP49   new IfMain form   text "inline"    (Inform Editor: M Table is unchecked, 48 Style unchecked)
d. HP49   new IfMain form   message table    (Inform Editor: M Table is checked, 48 Style unchecked)

The "Project Data" tab, "Message" field is the Message Handler Name.  Debug4x will automatically supply a name if this is left blank.  On the same tab, the "Message Text" fields should be left blank for most simple applications.  If "M Table" is checked in the Inform Editor, message text will automatically be copied from the GUI form display.

=================================================================================

7. CONVERTING AN HP49 PROJECT TO THE HP48 (and vice versa)

Load the old project.  In the Project form, under "Project Data" tab, check the "The project is for HP48" tab.
Load each InformBox file (if any), and check the use "48 Style" box.  Press "Save".
Review all your source files to make sure the code can run on the calculator you have selected.  Debug4x is good, but it cannot edit your source code automatically.  Inform Box code has 4 "User Code" areas which also must be checked.  Look at any Message Handlers too.

For most simple libraries, you may delete all references to CONFIG and CONFIG.s in your project.  Debug4x will supply a suitable CONFIG file automatically.  If you wish to make your own, built the code into a source file or into a separate source file.  Be sure to place the name of the entry (usually CONFIG) into the Project's configure name box on the Project Data tab.

When all looks correct, build your new file and try it on the emulator.  By the way, the emulator will switch back and forth between HP48 and HP49 when you check/uncheck "The project is for HP48" on the Project tab (even with the emulator on the screen!)

=================================================================================

8. AUTOMATIC WORD COMPLETION, STACK DIAGRAMS

In the Source Editor, you may begin a verb and then press ctrl-space to see an automatic completion list.  The contents of the list is context sensitive in a small way.  Type "D" and then ctrl-space and see DUP DUPDUP etc.  Type grobA and then ctrl-space and select grobAlertIcon.  ROMPTR and FLASHPTR names are followed in the list by ROM or FLASH.  When you use one of these words, it must have ROMPTR or FLASHPTR just before it in the code.  You may write ROMPTR or declare the name using EXTERNAL and then RPLCOMP will insert the ROMPTR or FLASHPTR call.

Stack Diagrams show the stack picture that matches an RPL name.  Place the cursor on or next to the RPL name and press ctrl-j, a list of possible stack diagrams will show.

The Project file must exist before auto-completion or stack diagrams can be used.  For a new project, just save it!

=================================================================================

9. COMMAND LINE ARGUMENTS

You can start Debug4x by double clicking any *.hpp (project), *.s (source) or *.h (header) file.  The preferred method is to click the project (*.hpp) file - this way Debug4x knows all your preferences for the project.  You may use batch files or the "run" command to start Debug4x by including one of these files on the command line.  For example: Debug4x.exe MyProject.hpp (you must include the .hpp).

=================================================================================

10. MESSAGE TABLES FOR LIBRARIES, CONFIG ENTRY FOR A LIBRARY

A library message table collects text strings which can later be retrieved by code.  Centralizing strings can make it easier to translate a program and may even be more efficient.  Debug4x allows several ways to specify a library's message handler.

a.  Just enter text strings into the "Message Text" box of the Project's "Project Data" tab.  You may retrieve these messages by writing code as shown in the "messages" example.  This method has the advantage of working automatically with the InformEditor built into Debug4x.

b.  You may write your own message code.  (also see the end of the "messages" example).  In this case, you are responsible for copying information from the Inform Editor generated source (it is clearly marked in the source) to your message table.  You must also enter the name of your entry in the "Message" box on the "Project Data" tab. The name can still be "Message" if you like.  Typing the name tells Debug4x that you will generate the message table code. Do NOT enter any strings in the "Message Text" box.

CONFIG: For most simple libraries, you may delete all references to CONFIG and CONFIG.s in your project.  Debug4x will supply a suitable CONFIG file automatically.  If you wish to make your own, built the code into a source file or into a separate source file.  Be sure to place the name of the entry (usually CONFIG) into the Project's configure name box on the Project Data tab.

=================================================================================

11. BREAKPOINTS AND PORTS

The relationship between memory addresses, breakpoints, the emulator and calculator type is not simple due to "covered" ports and variations between the various Hewlett-Packard Calculators.  If you are testing a library, it is always easiest to assign it to port 0.  Breakpoints can be set in Port 0 on both the HP49 and HP48.  The table below shows which ports may have breakpoints on the HP49 and HP48.

Calculator/Port:  49: 0 1 2      48: 0 1 2
breakpoints work:     Y N N          Y Y N

=================================================================================

12. EMULATOR TIPS

At installation, the emulator setting "Automatically Save Files On Exit" is set to "off".  This causes a dialog window to pop-up each time the emulator is closed (which also happens when you close Debug4x with an emulator window open).  This extra prompt may be annoying to some.  It also may seem better practice to automatically save the emulated calculator whenever you close.  However, for devlopment it is often better to not save on exit.  Consider the case where you build your code, autoload to the calculator and the calculator "hangs" because of an error (or maybe even resets).  With "Automatically Save..." off this is not a problem.  Close the calculator window, DO NOT save.  Now select the emulator again (Debug4x main menu / emulation) and you have a fresh clean copy of you favorite installation to work with.

This is a quick and easy way of clearing directories, libraries and variables you have created during testing.

Saving a test setup as a separate .e49 or .e48 file can also be a nice shortcut during development.

Make a backup copy of your *.e49, *.e49 and Shared.bin (48 Port 2 card image) files.  The default location is the C:\Program Files\Helwett-Packard\Debug4x\Emu directory.

You can download a stand-alone (not using Debug4x) copy of the emulator from:
http://privat.swol.de/ChristophGiesselink/emu48.htm
or http://www.hpcalc.org/

=================================================================================

13.  AUTOLOAD A PROJECT

Projects may be automatically loaded to the emulator if the "Autoload" box on the Project Data tab is checked. 
Library Projects will be placed in the indicated memory card slot (0, 1 or 2 but we suggest using 0 for development - see "BREAKPOINTS" above).

Directories and simple one-executable projects may have a name specified in the "Path" box of the Project Data tab.  If a name is given, the directory or simple verb will be stored into that variable name (replacing any older contents).  If the path box is empty, then the verb or directory will be placed on the stack (if Autoload has been checked).

A path or series of directory names may be given in front of the verb or project directory name.  If the project is "Test" then defining the path as "A B C Test" will go down from HOMEDIR through directory A, then directory B then directory C.  Finally the new verb/directory named "Test" will be created.  The directories named "A B C" must exist already in the emulator - this is the user's responsibility.

=================================================================================

14. CR/LF, UNIX FILES, AND REAL TABS


CR/LF is an option on file saves (see the Editor: View \ Editor Options \ Display_Tab).  You may select either Windows or Unix standard for line endings.  Either line ending works when reading, the option affects file saves.  The right side of the editor status line indicates what type of file was read (Windows or Unix line endings).

The Editor uses real TABs as the default setting.  This can be changed in the Editor Options \ Display_Tab \Use Real Tabs.  If "Use Real Tabs" is unchecked, multiple spaces will be substituted for tab characters.  Files will also then be translated when read.

=================================================================================

15. CONNECTIVITY PACKAGE NO LONGER IN Debug4x

The Connectivity Window is no longer part of this product.  You can get a Connectivity Kit from HP.
=================================================================================

16. FUN THINGS TO TRY

How about building an DoInputForm project for the HP48, have it autoload and then sequence to the library's menu.  Now that is a nice convenient feature if you like the HP48 (and I still do).
    
    Open the DEMO project
    Click on Project Window, Project_Data tab and select "The project is for HP48"          
    Click on Project Window, Files tab and double click the   Inf.s file 
          (if the Inform Box window is not already open).
    On the left side of the Inform Edit Window, click the "48 Style") checkbox.
    Now open the Emulator by clicking the main "Debugger" window, Emulate Menu
    Finally, go back to the Project Window and click Build \ Build_Project
          or the Editor Window \ Compilation \ Build_Project

    On the EMU48 window, press the "Demo" menu key and the project runs!


   We just took an HP49 project and re-compiled for the HP48!  Now if you don't agree that this was
   marvelous, we must come from different planets!

In the Editor Window, try File \ Page_Setup.  Be sure to look at both tabs!
In the Editor Window, try File \ Print_Preview.  The printouts are gorgeous!  (This thanks again to the SynEdit people!)

=================================================================================

17.  COPYRIGHT

The help files and portions of the program and support files are Copyright 2003, William G. Graves (bgraves@ix.netcom.com).
Permission to copy and distribute copies of these files is granted provided that:
1. the copies are not made for resale
2. you conspicuously and appropriately include on each copy the Copyright Notice and Disclaimer of Warranty as well as this License.

Commercial use of these files and programs is prohibited without the written permission of the copyright holder.

=================================================================================

18. DISCLAIMER OF WARRANTY

These files and the product are distributed in the hope that they will be useful, but
THE COPYRIGHT HOLDER PROVIDES THE PROGRAM AND DOCUMENTATION "AS THEY ARE" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL THE COPYRIGHT HOLDER BE LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE THE PROGRAM OR DOCUMENTATION.

=================================================================================









=================================================================================

