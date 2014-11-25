Saturn Assembler                                       Sat Dec 07 11:22:24 2002
V3.0.8 (11/17/2002)                                      Main.a         Page    1

    1             * File  Main.s  1
    2             * RPL
    3             * File  Main.s  2
    4
    5             * File  Main.s  3
    6             *|| Reading from C:\Debug4x\Examples\Inform\Inform.H
    7
    8             =RomId  EQU     #202
    9             * ROMID set to 202
   10
   11
   12
   13
   14             *|| Resuming file Main.s at line 3
   15
   16 00000 00000         CON(6)  =~xDemo
            0
   17 00006       =xDemo
   18             * File  Main.s  6
   19 00006 00000         CON(5)  =DOCOL
   20             * File  Main.s  7
   21 0000B 00000         CON(5)  =DOROMP
   22 00010 00000         CON(6)  =~InfDemo
            0
   23             * File  Main.s  8
   24 00016 00000         CON(5)  =DROP
   25             * the result flag
   26             * File  Main.s  9
   27 0001B 00000         CON(5)  =SEMI
   28             * File  Main.s  10
   29
Saturn Assembler                                       Sat Dec 07 11:22:24 2002
V3.0.8 (11/17/2002)   Symbol Table                       Main.a         Page    2

 DOCOL                             Ext                   -    19
 DOROMP                            Ext                   -    21
 DROP                              Ext                   -    24
=RomId                             Abs     514 #00000202 -     8
 SEMI                              Ext                   -    27
=xDemo                             Rel       6 #00000006 -    17
 ~InfDemo                          Ext                   -    22
 ~xDemo                            Ext                   -    16
Saturn Assembler                                       Sat Dec 07 11:22:24 2002
V3.0.8 (11/17/2002)   Statistics                         Main.a         Page    3

Input Parameters

  Source file name is Main.a

  Listing file name is Main.l

  Object file name is Main.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
