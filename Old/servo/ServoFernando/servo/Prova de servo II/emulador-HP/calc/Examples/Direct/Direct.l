Saturn Assembler                                       Fri Oct 04 16:30:48 2002
V3.0.7 (11/17/1999)                                      Direct.a       Page    1

    1             **************************************************************
    2             *  Example of a directory source code
    3             *  Builds a directory with 3 items:
    4             *    123 => puts 123. on the stacj
    5             *    ABC => pust the string "ABC" on the stack
    6             *    SW+ => swaps these two items and adds 456. to the 123.
    7             *
    8             **************************************************************
    9             * File  Direct.S        9
   10 00000       =123
   11             * File  Direct.S        10
   12 00000 00000         CON(5)  =DOCOL
   13             * File  Direct.S        11
   14 00005 00000         CON(5)  =DOREAL
   15 0000A 200           NIBHEX  200
   16 0000D 00000         NIBHEX  000000000321
            00003
            21
   17 00019 0             NIBHEX  0
   18             * just put 123. on the stack
   19             * File  Direct.S        12
   20 0001A 00000         CON(5)  =SEMI
   21             * File  Direct.S        13
   22
   23             * File  Direct.S        14
   24
   25             * File  Direct.S        15
   26 0001F       =ABC
   27             * File  Direct.S        16
   28 0001F 00000         CON(5)  =DOCOL
   29             * File  Direct.S        17
   30 00024 00000         CON(5)  =DOCSTR
   31 00029 B0000         CON(5)  11
   32 0002E 14243         NIBASC  \ABC\
            4
   33             * just put "ABC" on the stack
   34             * File  Direct.S        18
   35 00034 00000         CON(5)  =SEMI
   36             * File  Direct.S        19
   37
   38             * File  Direct.S        20
   39
   40             * File  Direct.S        21
   41 00039       =SW+
   42             * File  Direct.S        22
   43 00039 00000         CON(5)  =DOCOL
   44             * File  Direct.S        23
   45 0003E 00000         CON(5)  =CK2NOLASTWD
   46             * expect 2 arguments
   47             * File  Direct.S        24
   48 00043 00000         CON(5)  =SWAP
   49 00048 00000         CON(5)  =DOREAL
   50 0004D 200           NIBHEX  200
   51 00050 00000         NIBHEX  000000000654
            00006
            54
   52 0005C 0             NIBHEX  0
   53 0005D 00000         CON(5)  =%+
   54             * File  Direct.S        25
   55 00062 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Oct 04 16:30:48 2002
V3.0.7 (11/17/1999)   Symbol Table                       Direct.a       Page    2

 %+                                Ext                   -    53
=123                               Rel       0 #00000000 -    10
=ABC                               Rel      31 #0000001F -    26
 CK2NOLASTWD                       Ext                   -    45
 DOCOL                             Ext                   -    12    28    43
 DOCSTR                            Ext                   -    30
 DOREAL                            Ext                   -    14    49
 SEMI                              Ext                   -    20    35    55
=SW+                               Rel      57 #00000039 -    41
 SWAP                              Ext                   -    48
Saturn Assembler                                       Fri Oct 04 16:30:48 2002
V3.0.7 (11/17/1999)   Statistics                         Direct.a       Page    3

Input Parameters

  Source file name is Direct.a

  Listing file name is Direct.l

  Object file name is Direct.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
