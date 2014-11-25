Saturn Assembler                                       Fri Oct 04 16:31:29 2002
V3.0.7 (11/17/1999)                                      456.a          Page    1

    1             * File  456.S   1
    2             * RPL
    3             * File  456.S   2
    4
    5             * File  456.S   3
    6             *|| Reading from C:\Debug4x\Examples\Library\Lib.H
    7
    8             =RomId  EQU     #203
    9             * ROMID set to 203
   10
   11
   12
   13
   14             *|| Resuming file 456.S at line 3
   15
   16 00000 00000         CON(6)  =~x456
            0
   17 00006       =x456
   18             * File  456.S   6
   19 00006 00000         CON(5)  =DOCOL
   20             * File  456.S   7
   21 0000B 00000         CON(5)  =CK0NOLASTWD
   22             * no args required
   23             * File  456.S   8
   24 00010 00000         CON(5)  =DOREAL
   25 00015 200           NIBHEX  200
   26 00018 00000         NIBHEX  000000000654
            00006
            54
   27 00024 0             NIBHEX  0
   28             * just put the number on the stack
   29             * File  456.S   9
   30 00025 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Oct 04 16:31:29 2002
V3.0.7 (11/17/1999)   Symbol Table                       456.a          Page    2

 CK0NOLASTWD                       Ext                   -    21
 DOCOL                             Ext                   -    19
 DOREAL                            Ext                   -    24
=RomId                             Abs     515 #00000203 -     8
 SEMI                              Ext                   -    30
=x456                              Rel       6 #00000006 -    17
 ~x456                             Ext                   -    16
Saturn Assembler                                       Fri Oct 04 16:31:29 2002
V3.0.7 (11/17/1999)   Statistics                         456.a          Page    3

Input Parameters

  Source file name is 456.a

  Listing file name is 456.l

  Object file name is 456.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
