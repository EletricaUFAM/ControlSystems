Saturn Assembler                                       Wed Nov 13 15:01:11 2002
V3.0.7 (11/17/1999)                                      ASM1.a         Page    1

    1             *
    2             *  This simple demontstration program is an example of placing
    3             *  ASM code inside an RPL program.. It also demnostrates some
    4             *  assembly language programming for the HP.
    5             *
    6             * File  ASM1.s  6
    7 00000 00000         CON(5)  =DOCOL
    8             * File  ASM1.s  7
    9 00005 00000         CON(5)  =DOREAL
   10 0000A 100           NIBHEX  100
   11 0000D 00000         NIBHEX  000000004321
            00043
            21
   12 00019 0             NIBHEX  0
   13 0001A 00000         CON(5)  =DOREAL
   14 0001F 100           NIBHEX  100
   15 00022 00000         NIBHEX  000000008765
            00087
            65
   16 0002E 0             NIBHEX  0
   17             * put two test numbers on the stack
   18             * File  ASM1.s  8
   19             * they will get SWAPped
   20             *
   21             *  to make the code object we could use the directive
   22             *  CODE or CODEM.  This starts a code object.  CODEM
   23             *  means all of the features of the MASD assmbler will
   24             *  be available - this is usually more convenient but
   25             *  MASD documentation is a little bare!
   26             *
   27             *  This little piece of code does SWAP
   28             *
   29             *  ob1 ob2 -> ob2 ob1
   30             *
   31             * File  ASM1.s  20
   32 0002F 00000         CON(5)  =DOCODE
   33 00034 12000         REL(5)  LBL000
   34             * File  ASM1.s  21
   35 00039 143           A=DAT1  A
   36             * File  ASM1.s  22
   37 0003C 174           D1+     5
   38             * File  ASM1.s  23
   39 0003F 147           C=DAT1  A
   40             * File  ASM1.s  24
   41 00042 141           DAT1=A  A
   42             * File  ASM1.s  25
   43 00045 1C4           D1-     5
   44             * File  ASM1.s  26
   45 00048 145           DAT1=C  A
   46             * File  ASM1.s  27
   47 0004B 142           A=DAT0  A
   48 0004E 164           D0=D0+  5
   49 00051 808C          PC=(A)
   50             * File  ASM1.s  28
   51 00055       LBL000
   52             * this command ends the assembly and puts the compiler
   53             * File  ASM1.s  29
   54             * back into RPL compiling mode.
   55             * File  ASM1.s  30
   56 00055 00000         CON(5)  =SEMI
   57             * File  ASM1.s  31
   58
   59             * File  ASM1.s  32
   60
   61             * File  ASM1.s  33
   62
   63             * File  ASM1.s  34
   64
Saturn Assembler                                       Wed Nov 13 15:01:11 2002
V3.0.7 (11/17/1999)   Symbol Table                       ASM1.a         Page    2

 DOCODE                            Ext                   -    32
 DOCOL                             Ext                   -     7
 DOREAL                            Ext                   -     9    13
 LBL000                            Rel      85 #00000055 -    51    33
 SEMI                              Ext                   -    56
Saturn Assembler                                       Wed Nov 13 15:01:11 2002
V3.0.7 (11/17/1999)   Statistics                         ASM1.a         Page    3

Input Parameters

  Source file name is ASM1.a

  Listing file name is ASM1.l

  Object file name is ASM1.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
