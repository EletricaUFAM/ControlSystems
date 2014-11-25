Saturn Assembler                                       Sat Dec 07 11:22:24 2002
V3.0.8 (11/17/2002)                                      Config.a       Page    1

    1             * File  Config.s        1
    2             * RPL
    3             * File  Config.s        2
    4
    5             * File  Config.s        3
    6             *|| Reading from C:\Debug4x\Examples\Inform\Inform.h
    7
    8             =RomId  EQU     #202
    9             * ROMID set to 202
   10
   11
   12
   13
   14             *|| Resuming file Config.s at line 3
   15
   16 00000       =CONFIG
   17             * File  Config.s        6
   18 00000 00000         CON(5)  =DOCOL
   19             * This is our $CONFIG program (attaches to home directory)
   20             * File  Config.s        8
   21 00005 00000         CON(5)  =HOMEDIR
   22             * File  Config.s        9
   23 0000A 00000         CON(5)  =DOBINT
   24 0000F 20200         CON(5)  #202
   25             * File  Config.s        10
   26 00014 00000         CON(5)  =XEQSETLIB
   27             * File  Config.s        11
   28 00019 00000         CON(5)  =SEMI
   29             * File  Config.s        12
   30
Saturn Assembler                                       Sat Dec 07 11:22:24 2002
V3.0.8 (11/17/2002)   Symbol Table                       Config.a       Page    2

=CONFIG                            Rel       0 #00000000 -    16
 DOBINT                            Ext                   -    23
 DOCOL                             Ext                   -    18
 HOMEDIR                           Ext                   -    21
=RomId                             Abs     514 #00000202 -     8
 SEMI                              Ext                   -    28
 XEQSETLIB                         Ext                   -    26
Saturn Assembler                                       Sat Dec 07 11:22:24 2002
V3.0.8 (11/17/2002)   Statistics                         Config.a       Page    3

Input Parameters

  Source file name is Config.a

  Listing file name is Config.l

  Object file name is Config.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
