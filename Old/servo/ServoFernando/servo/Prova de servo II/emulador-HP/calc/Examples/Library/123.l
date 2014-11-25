Saturn Assembler                                       Fri Oct 04 16:31:29 2002
V3.0.7 (11/17/1999)                                      123.a          Page    1

    1             * File  123.S   1
    2             * RPL
    3             * File  123.S   2
    4
    5             * File  123.S   3
    6             *|| Reading from C:\Debug4x\Examples\Library\Lib.H
    7
    8             =RomId  EQU     #203
    9             * ROMID set to 203
   10
   11
   12
   13
   14             *|| Resuming file 123.S at line 3
   15
   16 00000 00000         CON(6)  =~x123
            0
   17 00006       =x123
   18             * File  123.S   6
   19 00006 00000         CON(5)  =DOCOL
   20             * File  123.S   7
   21 0000B 00000         CON(5)  =CK0NOLASTWD
   22             * no args required
   23             * File  123.S   8
   24 00010 00000         CON(5)  =DOREAL
   25 00015 200           NIBHEX  200
   26 00018 00000         NIBHEX  000000000321
            00003
            21
   27 00024 0             NIBHEX  0
   28             * just put the number on the stack
   29             * File  123.S   9
   30 00025 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Oct 04 16:31:29 2002
V3.0.7 (11/17/1999)   Symbol Table                       123.a          Page    2

 CK0NOLASTWD                       Ext                   -    21
 DOCOL                             Ext                   -    19
 DOREAL                            Ext                   -    24
=RomId                             Abs     515 #00000203 -     8
 SEMI                              Ext                   -    30
=x123                              Rel       6 #00000006 -    17
 ~x123                             Ext                   -    16
Saturn Assembler                                       Fri Oct 04 16:31:29 2002
V3.0.7 (11/17/1999)   Statistics                         123.a          Page    3

Input Parameters

  Source file name is 123.a

  Listing file name is 123.l

  Object file name is 123.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
