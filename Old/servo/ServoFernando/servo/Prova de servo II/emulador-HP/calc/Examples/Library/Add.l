Saturn Assembler                                       Fri Oct 04 16:31:29 2002
V3.0.7 (11/17/1999)                                      Add.a          Page    1

    1             * File  Add.S   1
    2             * RPL
    3             * File  Add.S   2
    4
    5             * File  Add.S   3
    6             *|| Reading from C:\Debug4x\Examples\Library\Lib.H
    7
    8             =RomId  EQU     #203
    9             * ROMID set to 203
   10
   11
   12
   13
   14             *|| Resuming file Add.S at line 3
   15
   16 00000 00000         CON(6)  =~xAdd
            0
   17 00006       =xAdd
   18             * File  Add.S   6
   19 00006 00000         CON(5)  =DOCOL
   20             * File  Add.S   7
   21 0000B 00000         CON(5)  =CK2NOLASTWD
   22             * two args required
   23             * File  Add.S   8
   24 00010 00000         CON(5)  =%+
   25             * add two numbers
   26             * File  Add.S   9
   27 00015 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Oct 04 16:31:29 2002
V3.0.7 (11/17/1999)   Symbol Table                       Add.a          Page    2

 %+                                Ext                   -    24
 CK2NOLASTWD                       Ext                   -    21
 DOCOL                             Ext                   -    19
=RomId                             Abs     515 #00000203 -     8
 SEMI                              Ext                   -    27
=xAdd                              Rel       6 #00000006 -    17
 ~xAdd                             Ext                   -    16
Saturn Assembler                                       Fri Oct 04 16:31:29 2002
V3.0.7 (11/17/1999)   Statistics                         Add.a          Page    3

Input Parameters

  Source file name is Add.a

  Listing file name is Add.l

  Object file name is Add.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
