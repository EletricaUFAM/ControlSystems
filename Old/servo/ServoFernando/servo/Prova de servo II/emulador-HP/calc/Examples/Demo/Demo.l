Saturn Assembler                                       Sat Dec 07 09:06:39 2002
V3.0.8 (11/17/2002)                                      Demo.a         Page    1

    1             * File  Demo.s  1
    2             * RPL
    3             * File  Demo.s  2
    4
    5             * File  Demo.s  3
    6             *|| Reading from C:\Debug4x\Examples\Demo\Demo.H
    7
    8             =RomId  EQU     #201
    9             * ROMID set to 201
   10
   11
   12
   13             *|| Resuming file Demo.s at line 3
   14 00000 00000         CON(6)  =~xDemo
            0
   15 00006       =xDemo
   16             * File  Demo.s  38
   17 00006 00000         CON(5)  =DOCOL
   18             * File  Demo.s  39
   19 0000B 00000         CON(5)  =DOROMP
   20 00010 00000         CON(6)  =~InfDemo
            0
   21             * make the Inform box on the display and get some numbers back
   22             * File  Demo.s  40
   23 00016 00000         CON(5)  =DROP
   24             * the result flag
   25             * File  Demo.s  41
   26 0001B 00000         CON(5)  =SEMI
   27             * leave the Inform box fields on the stack
   28             * File  Demo.s  42
   29
   30             * File  Demo.s  43
   31
   32             ******************************************************************************
   33             *  This is the CONFIG entry for the project.  Its name is listed on the
   34             *  Project's "Project Data" \ "Config" box.
   35             *
   36             *  In the Project window, click  the "Project Data" tab to see the library
   37             *  information.  Notice that the ROMID is hex 201.  This must be the same
   38             *  as the # xxx in the CONFIG entry below.
   39             *
   40             *  If this is unfamiliar to you, just copy this for your own projects at first.
   41             *  You may want to increase the :Romid" by 1 each time to avoid conflicts!
   42             *
   43             ******************************************************************************
   44             * File  Demo.s  56
   45 00020       =CONFIG
   46             * File  Demo.s  57
   47 00020 00000         CON(5)  =DOCOL
   48             * This is our $CONFIG program (attaches to home directory)
   49             * File  Demo.s  59
   50 00025 00000         CON(5)  =HOMEDIR
   51             * File  Demo.s  60
   52 0002A 00000         CON(5)  =DOBINT
   53 0002F 10200         CON(5)  #201
   54             * File  Demo.s  61
   55 00034 00000         CON(5)  =XEQSETLIB
   56             * File  Demo.s  62
   57 00039 00000         CON(5)  =SEMI
Saturn Assembler                                       Sat Dec 07 09:06:39 2002
V3.0.8 (11/17/2002)   Symbol Table                       Demo.a         Page    2

=CONFIG                            Rel      32 #00000020 -    45
 DOBINT                            Ext                   -    52
 DOCOL                             Ext                   -    17    47
 DOROMP                            Ext                   -    19
 DROP                              Ext                   -    23
 HOMEDIR                           Ext                   -    50
=RomId                             Abs     513 #00000201 -     8
 SEMI                              Ext                   -    26    57
 XEQSETLIB                         Ext                   -    55
=xDemo                             Rel       6 #00000006 -    15
 ~InfDemo                          Ext                   -    20
 ~xDemo                            Ext                   -    14
Saturn Assembler                                       Sat Dec 07 09:06:39 2002
V3.0.8 (11/17/2002)   Statistics                         Demo.a         Page    3

Input Parameters

  Source file name is Demo.a

  Listing file name is Demo.l

  Object file name is Demo.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
