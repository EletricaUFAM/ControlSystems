Saturn Assembler                                       Fri Oct 04 16:31:41 2002
V3.0.7 (11/17/1999)                                      MTL.a          Page    1

    1             * File  MTL.s   1
    2             * ASSEMBLE
    3             * File  MTL.s   2
    4
    5             * File  MTL.s   3
    6             * RPL
    7             * File  MTL.s   4
    8
    9             * File  MTL.s   5
   10             * File  MTL.s   6
   11             * File  MTL.s   7
   12             * File  MTL.s   8
   13
   14             ***************************************************************
   15             *  A simple demonstration of a message table
   16             *  There are three keys, each of which generates a different
   17             *  Message.
   18             *
   19             *  This demo uses the Project Box's "Message Text"
   20             *  but the same demo can be built using an internal message table
   21             *  See the end of this listing for information on how to do that.
   22             ***************************************************************
   23             * File  MTL.s   18
   24             *|| Reading from C:\Debug4x\Examples\Message\MTL.h
   25
   26             =RomId  EQU     #3ED
   27             * ROMID set to 3ED
   28
   29
   30             *|| Resuming file MTL.s at line 18
   31
   32             * ASSEMBLE
   33             * File  MTL.s   21
   34             MTROMID EQU #3ED
   35             * File  MTL.s   22
   36
   37             * File  MTL.s   23
   38             DOMSG MACRO * romid,msgnr      * Macro, to handle msg nr. generation
   39             * File  MTL.s   24
   40               CON(5) =DOBINT
   41             * File  MTL.s   25
   42               CON(5) ($1)*256+($2)          * (ROMID << 8) | msgnr
   43             * File  MTL.s   26
   44             DOMSG ENDM
   45             *
   46             *
   47             *
   48             ***************************************************************
   49             *  Case 1, Using above macro and ERROUT
   50             ***************************************************************
   51             * File  MTL.s   33
   52             * ASSEMBLE
   53             * File  MTL.s   34
   54 00000 8       CON(1)        8
   55             * File  MTL.s   35
   56             * RPL
   57             * File  MTL.s   36
   58 00001 00000         CON(6)  =~xBtn1
            0
   59 00007       =xBtn1
   60             * File  MTL.s   37
   61 00007 00000         CON(5)  =DOCOL
   62             * File  MTL.s   38
   63 0000C 00000         CON(5)  =CK0
   64             * File  MTL.s   39
   65             * ASSEMBLE
   66             * File  MTL.s   40
   67 00011           DOMSG MTROMID,1
   68             * File  MTL.s   41
   69             * RPL
   70             * File  MTL.s   42
   71 0001B 00000         CON(5)  =ERROROUT
   72             * File  MTL.s   43
   73 00020 00000         CON(5)  =SEMI
   74             ***************************************************************
   75             *  Case 2, Using JstGetTheMsg, and DoMsgBox for the display
   76             ***************************************************************
   77             * File  MTL.s   47
   78
   79             * File  MTL.s   48
   80             * ASSEMBLE
   81             * File  MTL.s   49
   82 00025 8       CON(1)        8
   83             * File  MTL.s   50
   84             * RPL
   85             * File  MTL.s   51
   86 00026 00000         CON(6)  =~xBtn2
            0
   87 0002C       =xBtn2
   88             * File  MTL.s   52
   89 0002C 00000         CON(5)  =DOCOL
   90             * File  MTL.s   53
   91 00031 00000         CON(5)  =CK0
   92             * File  MTL.s   54
   93 00036 00000         CON(5)  =DOBINT
   94 0003B 20DE3         CON(5)  #3ED02
   95 00040 00000         CON(5)  =JstGETTHEMSG
   96             * this leaves a text string on stack
   97             * File  MTL.s   55
   98 00045 00000         CON(5)  =DOBINT
   99 0004A C0000         CON(5)  12
  100 0004F 00000         CON(5)  =DOBINT
  101 00054 A0000         CON(5)  10
  102 00059 00000         CON(5)  =DOROMP
  103 0005E 00000         CON(6)  =~grobAlertIcon
            0
  104 00064 00000         CON(5)  ='
  105 00069 00000         CON(5)  =DOROMP
  106 0006E 00000         CON(6)  =~MsgBoxMenu
            0
  107 00074 00000         CON(5)  =ERRBEEP
  108 00079 00000         CON(5)  =DOROMP
  109 0007E 00000         CON(6)  =~DoMsgBox
            0
  110 00084 00000         CON(5)  =DROP
  111             * File  MTL.s   56
  112 00089 00000         CON(5)  =SEMI
  113             ***************************************************************
  114             *  Case 3, Using a constant for the message and DoMsgBox for the display
  115             ***************************************************************
  116             * File  MTL.s   60
  117             * ASSEMBLE
  118             * File  MTL.s   61
  119 0008E 8       CON(1)        8
  120             * File  MTL.s   62
  121             * RPL
  122             * File  MTL.s   63
  123 0008F 00000         CON(6)  =~xBtn3
            0
  124 00095       =xBtn3
  125             * File  MTL.s   64
  126 00095 00000         CON(5)  =DOCOL
  127             * File  MTL.s   65
  128 0009A 00000         CON(5)  =CK0
  129             * File  MTL.s   66
  130 0009F 00000         CON(5)  =DOBINT
  131 000A4 30DE3         CON(5)  #3ED03
  132             * this leaves a message number on stack
  133             * File  MTL.s   67
  134 000A9 00000         CON(5)  =DOBINT
  135 000AE C0000         CON(5)  12
  136 000B3 00000         CON(5)  =DOBINT
  137 000B8 A0000         CON(5)  10
  138 000BD 00000         CON(5)  =DOROMP
  139 000C2 00000         CON(6)  =~grobAlertIcon
            0
  140 000C8 00000         CON(5)  ='
  141 000CD 00000         CON(5)  =DOROMP
  142 000D2 00000         CON(6)  =~MsgBoxMenu
            0
  143 000D8 00000         CON(5)  =ERRBEEP
  144 000DD 00000         CON(5)  =DOROMP
  145 000E2 00000         CON(6)  =~DoMsgBox
            0
  146 000E8 00000         CON(5)  =DROP
  147             * File  MTL.s   68
  148 000ED 00000         CON(5)  =SEMI
  149             ***************************************************************
  150             *  Demo is set up for a Project Message table
  151             *
  152             *  1. To use an internal table, place a ")" instead of the "$" below
  153             *  2. You must also then clear the Project's "Message Text" box.
  154             *  3. Type the name "Messages" into the Project Data \ Message field.
  155             *     Use the NAME field on the left not the TEXT box on the right!
  156             *
  157             *  Notice that the project's message all have the word "project"
  158             *  in them.  The messages below have the word, "source" instead.
  159             *
  160             ***************************************************************
  161             *  just replace $ below (  V  ) with a right paren to uncomment this code
  162             * File  MTL.s   82
  163             * $
  164             * File  MTL.s   83
  165             * ASSEMBLEM
  166             * File  MTL.s   84
  167             * CP=3ED03
  168             * File  MTL.s   85
  169             * !RPL
  170             * File  MTL.s   86
  171             * NULLNAME Messages
  172             * File  MTL.s   87
  173             * ARRY
  174             * File  MTL.s   88
  175             * [
  176             * File  MTL.s   89
  177             * "First string of source text"
  178             * File  MTL.s   90
  179             * "Second source message"
  180             * File  MTL.s   91
  181             * "and a third source message"
  182             * File  MTL.s   92
  183             * ]
  184             * File  MTL.s   93
  185
  186             * File  MTL.s   94
  187
  188             * File  MTL.s   95
  189             * (
  190             * In case you loose the original contents of the project's "Message Text" box
  191             * just copy from below
  192             * File  MTL.s   98
  193             * First string of project text
  194             * File  MTL.s   99
  195             * Second project message
  196             * File  MTL.s   100
  197             * and a third project message
  198             * File  MTL.s   101
  199             *
Saturn Assembler                                       Fri Oct 04 16:31:41 2002
V3.0.7 (11/17/1999)   Symbol Table                       MTL.a          Page    2

 '                                 Ext                   -   104   140
 CK0                               Ext                   -    63    91   128
 DOBINT                            Ext                   -    67    93    98
                                         100   130   134   136
 DOCOL                             Ext                   -    61    89   126
 DOROMP                            Ext                   -   102   105   108
                                         138   141   144
 DROP                              Ext                   -   110   146
 ERRBEEP                           Ext                   -   107   143
 ERROROUT                          Ext                   -    71
 JstGETTHEMSG                      Ext                   -    95
 MTROMID                           Abs    1005 #000003ED -    34    67
=RomId                             Abs    1005 #000003ED -    26
 SEMI                              Ext                   -    73   112   148
=xBtn1                             Rel       7 #00000007 -    59
=xBtn2                             Rel      44 #0000002C -    87
=xBtn3                             Rel     149 #00000095 -   124
 ~DoMsgBox                         Ext                   -   109   145
 ~MsgBoxMenu                       Ext                   -   106   142
 ~grobAlertIcon                    Ext                   -   103   139
 ~xBtn1                            Ext                   -    58
 ~xBtn2                            Ext                   -    86
 ~xBtn3                            Ext                   -   123
Saturn Assembler                                       Fri Oct 04 16:31:41 2002
V3.0.7 (11/17/1999)   Statistics                         MTL.a          Page    3

Input Parameters

  Source file name is MTL.a

  Listing file name is MTL.l

  Object file name is MTL.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
