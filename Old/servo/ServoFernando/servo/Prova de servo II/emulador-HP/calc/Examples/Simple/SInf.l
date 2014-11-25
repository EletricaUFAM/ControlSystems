Saturn Assembler                                       Fri Oct 04 16:32:30 2002
V3.0.7 (11/17/1999)                                      SInf.a         Page    1

    1             * File  SInf.s  1
    2             * Inform Box File - 48 Style
    3             * Inline Text
    4             * File  SInf.s  2
    5             * Inform Box Simple Inform Box Source Code
    6             * File  SInf.s  3
    7             * Generated on 4:32:30 PM 10/4/2002 by HP InformBox Generator
    8             * File  SInf.s  4
    9             * Inform Box Designer is William Graves
   10             * File  SInf.s  5
   11
   12             * File  SInf.s  6
   13             *|| Reading from C:\PROGRA~1\HEWLET~2\Debug4x\Include\Header.h
   14
   15
   16             * RPL
   17             * insure RPL-mode exit
   18
   19             * ( Rad
   20
   21             * ( %2PI
   22             * ( %PI/24
   23
   24
   25
   26
   27             * ( 1=1Var, 2=2Var Statistic
   28             * ( 1=Histogram, 2=BoxWhisker
   29
   30
   31
   32
   33
   34             * ASSEMBLE
   35             DefSysF64-33 EQU        #00000000
   36             DefSysF32-01 EQU        #04010FF0
   37             DefSysF65-96 EQU        #42000000       Just Algebraic Mode is On by Default
   38             DefSysF97-128 EQU       #00000000
   39
   40             * RPL
   41
   42
   43             * ( solution mode
   44             * ( constants mode
   45             * ( results mode
   46             * ( careful evaluation mode
   47
   48             * ( binary integer wordsize
   49             * must start on nibble boundary
   50             * ( binary integer base
   51             * must follow "fnBinWordS6"
   52
   53             * ( financial BEGIN/END mode
   54             * ( complex number and vector
   55             * mode
   56             * ( angle mode
   57             * must start on a nibble boundary
   58             * ( complex 2D mode
   59             * ( underflow action
   60             * ( overflow action
   61             * ( infinite result action
   62             * ( underflow-negative indicator
   63             * ( underflow-positive indicator
   64             * ( overflow indicator
   65             * ( infinite result indicator
   66             * ( symbolic-comples decompilation
   67             * ( simultaneous plot mode
   68             * ( axis drawing plot mode
   69
   70             * ( connect points mode
   71             * ( graphics cursor type mode
   72             * ( I/O device
   73             * ( print device
   74             * ( I/O data format
   75             * ( variable overwrite mode
   76             * ( double-space print mode
   77             * ( suppress auto CR mode
   78             * ( suppress I/O status messages
   79
   80
   81             * ( clock display mode
   82             * ( clock display format
   83             * ( date format
   84             * ( reschedule unacknowledged
   85             * repeat alarms mode
   86             * ( delete acknowledged non-repeat
   87             * alarms mode
   88
   89             * ( number of decimal digits
   90             * must start on nibble boundary
   91             * ( number display format
   92             * must start on nibble boundary
   93             * ( radix mark
   94             * ( multi-line display mode
   95             * ( show precedence mode
   96             * ( zero out tiny matrix elements
   97
   98             * ( last arguments mode
   99             * ( error beep mode
  100             * ( alarm beep mode
  101             * ( verbose display mode
  102             * ( variable name only mode
  103             * ( 3-way alpha mode
  104             * ( 3-way user keys mode
  105             * ( user keys mode
  106             * ( special parser mode
  107             * ( index wraparound indicator
  108
  109
  110             * ASSEMBLE
  111             SolutionsFl  EQU 1
  112             ConstantsFl  EQU 2
  113             ResultsFl    EQU 3
  114             CarefulFl    EQU 4
  115
  116             BinWordSFl1  EQU 5      must start on a nibble boundary
  117             BinWordSBCt  EQU 6      number of bits
  118             BinBaseFl1   EQU 11     must follow "BinWordSFl6"
  119             BinBaseBCt   EQU 2      number of bits
  120
  121             ComVecDiFl1  EQU 15
  122             ComVecDiBCt  EQU 2      number of bits
  123             AngleFl1     EQU 17     must start on a nibble boundary
  124             AngleBCt     EQU 2      number of bits
  125             Complex2DFl  EQU 19
  126             UnderfActFl  EQU 20
  127             OverfActFl   EQU 21
  128             InfResActFl  EQU 22
  129             UnderfNegFl  EQU 23
  130             UnderfPosFl  EQU 24
  131             OverflowFl   EQU 25
  132             InfResultFl  EQU 26
  133
  134             FunctPlotFl  EQU 30
  135             ConnectPtFl  EQU 31
  136             GCursorFl    EQU 32
  137             IODeviceFl   EQU 33
  138             PrintDevFl   EQU 34
  139             IODataFmtFl  EQU 35
  140             OverwriteFl  EQU 36
  141             DblSpaceFl   EQU 37
  142             NoAutoCRFl   EQU 38
  143             NoIOStsMsgFl EQU 39
  144
  145             ClockOnFl    EQU 40
  146             ClockFmtFl   EQU 41
  147             DateFmtFl    EQU 42
  148             ResRepAlmFl  EQU 43
  149             DelNRAlmFl   EQU 44
  150
  151             NumDigsFl1   EQU 45     must start on a nibble boundary
  152             NumDigsBCt   EQU 4      number of bits
  153             NumDispFl1   EQU 49     must start on a nibble boundary
  154             NumDispBCt   EQU 2      number of bits
  155             RadixFl      EQU 51
  156             MultiDispFl  EQU 52
  157             ShowPrecFl   EQU 53
  158
  159             LastArgsFl   EQU 55
  160             ErrorBeepFl  EQU 56
  161             AlarmBeepFl  EQU 57
  162             VerboseFl    EQU 58
  163             FastEqViewFl EQU 59
  164             TriAlphaFl   EQU 60
  165             TriUserFl    EQU 61
  166             UserKeysFl   EQU 62
  167             NoParseFl    EQU 63
  168             IndexWrapFl  EQU 64
  169
  170
  171
  172             AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
  173             AlarmBeepBit EQU ((AlarmBeepFl)-1)%4
  174
  175             AngleNib     EQU ((AngleFl1)-1)/4
  176             AngleBit1    EQU ((AngleFl1)-1)%4
  177             AngleBit2    EQU (AngleBit1)+1
  178
  179             BinBaseNib   EQU ((BinBaseFl1)-1)/4
  180             BinBaseBit1  EQU ((BinBaseFl1)-1)%4
  181
  182             BinWordSNib  EQU ((BinWordSFl1)-1)/4
  183             BinWordSBit1 EQU ((BinWordSFl1)-1)%4
  184
  185             CarefulNib   EQU ((CarefulFl)-1)/4
  186             CarefulBit   EQU ((CarefulFl)-1)%4
  187
  188             ClockFmtNib  EQU ((ClockFmtFl)-1)/4
  189             ClockFmtBit  EQU ((ClockFmtFl)-1)%4
  190
  191             ClockOnNib   EQU ((ClockOnFl)-1)/4
  192             ClockOnBit   EQU ((ClockOnFl)-1)%4
  193
  194             Complex2DNib EQU ((Complex2DFl)-1)/4
  195             Complex2DBit EQU ((Complex2DFl)-1)%4
  196
  197             ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
  198             ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4
  199
  200             ConnectPtNib EQU ((ConnectPtFl)-1)/4
  201             ConnectPtBit EQU ((ConnectPtFl)-1)%4
  202
  203             ConstantsNib EQU ((ConstantsFl)-1)/4
  204             ConstantsBit EQU ((ConstantsFl)-1)%4
  205
  206             DateFmtNib   EQU ((DateFmtFl)-1)/4
  207             DateFmtBit   EQU ((DateFmtFl)-1)%4
  208
  209             DblSpaceNib  EQU ((DblSpaceFl)-1)/4
  210             DblSpaceBit  EQU ((DblSpaceFl)-1)%4
  211
  212             DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
  213             DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4
  214
  215             ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
  216             ErrorBeepBit EQU ((ErrorBeepFl)-1)%4
  217
  218             FastEViewNib EQU ((FastEqViewFl)-1)/4
  219             FastEViewBit EQU ((FastEqViewFl)-1)%4
  220
  221             FunctPlotNib EQU ((FunctPlotFl)-1)/4
  222             FunctPlotBit EQU ((FunctPlotFl)-1)%4
  223
  224             GCursorNib   EQU ((GCursorFl)-1)/4
  225             GCursorBit   EQU ((GCursorFl)-1)%4
  226
  227             IndexWrapNib EQU ((IndexWrapFl)-1)/4
  228             IndexWrapBit EQU ((IndexWrapFl)-1)%4
  229
  230             InfResActNib EQU ((InfResActFl)-1)/4
  231             InfResActBit EQU ((InfResActFl)-1)%4
  232
  233             InfResultNib EQU ((InfResultFl)-1)/4
  234             InfResultBit EQU ((InfResultFl)-1)%4
  235
  236             IODataFmtNib EQU ((IODataFmtFl)-1)/4
  237             IODataFmtBit EQU ((IODataFmtFl)-1)%4
  238
  239             IODeviceNib  EQU ((IODeviceFl)-1)/4
  240             IODeviceBit  EQU ((IODeviceFl)-1)%4
  241
  242             LastArgsNib  EQU ((LastArgsFl)-1)/4
  243             LastArgsBit  EQU ((LastArgsFl)-1)%4
  244
  245             VerboseNib   EQU ((VerboseFl)-1)/4
  246             VerboseBit   EQU ((VerboseFl)-1)%4
  247
  248             MultiDispNib EQU ((MultiDispFl)-1)/4
  249             MultiDispBit EQU ((MultiDispFl)-1)%4
  250
  251             NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
  252             NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4
  253
  254             NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
  255             NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4
  256
  257             NoParseNib   EQU ((NoParseFl)-1)/4
  258             NoParseBit   EQU ((NoParseFl)-1)%4
  259
  260             NumDigsNib   EQU ((NumDigsFl1)-1)/4
  261             NumDigsBit1  EQU ((NumDigsFl1)-1)%4
  262
  263             NumDispNib   EQU ((NumDispFl1)-1)/4
  264             NumDispBit1  EQU ((NumDispFl1)-1)%4
  265
  266             OverfActNib  EQU ((OverfActFl)-1)/4
  267             OverfActBit  EQU ((OverfActFl)-1)%4
  268
  269             OverflowNib  EQU ((OverflowFl)-1)/4
  270             OverflowBit  EQU ((OverflowFl)-1)%4
  271
  272             OverwriteNib EQU ((OverwriteFl)-1)/4
  273             OverwriteBit EQU ((OverwriteFl)-1)%4
  274
  275             PrintDevNib  EQU ((PrintDevFl)-1)/4
  276             PrintDevBit  EQU ((PrintDevFl)-1)%4
  277
  278             RadixNib     EQU ((RadixFl)-1)/4
  279             RadixBit     EQU ((RadixFl)-1)%4
  280
  281             ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
  282             ResRepAlmBit EQU ((ResRepAlmFl)-1)%4
  283
  284             ResultsNib   EQU ((ResultsFl)-1)/4
  285             ResultsBit   EQU ((ResultsFl)-1)%4
  286
  287             ShowPrecNib  EQU ((ShowPrecFl)-1)/4
  288             ShowPrecBit  EQU ((ShowPrecFl)-1)%4
  289
  290             SolutionsNib EQU ((SolutionsFl)-1)/4
  291             SolutionsBit EQU ((SolutionsFl)-1)%4
  292
  293             TriAlphaNib  EQU ((TriAlphaFl)-1)/4
  294             TriAlphaBit  EQU ((TriAlphaFl)-1)%4
  295
  296             TriUserNib   EQU ((TriUserFl)-1)/4
  297             TriUserBit   EQU ((TriUserFl)-1)%4
  298
  299             UnderfActNib EQU ((UnderfActFl)-1)/4
  300             UnderfActBit EQU ((UnderfActFl)-1)%4
  301
  302             UnderfNegNib EQU ((UnderfNegFl)-1)/4
  303             UnderfNegBit EQU ((UnderfNegFl)-1)%4
  304
  305             UnderfPosNib EQU ((UnderfPosFl)-1)/4
  306             UnderfPosBit EQU ((UnderfPosFl)-1)%4
  307
  308             UserKeysNib  EQU ((UserKeysFl)-1)/4
  309             UserKeysBit  EQU ((UserKeysFl)-1)%4
  310
  311             * RPL
  312             * RPL
  313             * insure RPL-mode exit
  314
  315
  316             * ASSEMBLE
  317
  318
  319             nonALG EQU 8                    not-allowed-in-algebraics flag
  320             hasHELP EQU 4                   has-help-data flag
  321             hasPROMPTM EQU 4                same as above
  322             hasALIAS EQU 2                  has-algebraic-alias flag
  323             hasPDATA EQU 1                  has-parse-data flag
  324
  325
  326             hasDER EQU 8                    has-derivative flag
  327             hasINV EQU 4                    has-inverse flag
  328             hasCOLCT EQU 2                  has-COLCT-data flag
  329             hasEXPND EQU 1                  has-EXPND-data flag
  330
  331
  332             hasFORM EQU 8                   has-FORM-menu flag
  333             hasINTG EQU 4                   has-Integral-data flag
  334             hasWHERE EQU 2                  has-WHERE-code flag
  335             hasVUNS EQU 1                   has-veryunsymin-code flag
  336
  337
  338             pdEX EQU #0             general expression
  339             pdOP EQU #1             operator
  340             pdQE EQU #2             quoted expression
  341             pdQN EQU #3             quoted name
  342             pdLP EQU #4             left parenthesis
  343             pdRP EQU #5             right parenthesis
  344             pdCM EQU #6             comma (non-radix)
  345             pdEQ EQU #7             equal-sign separator
  346             pdOS0 EQU #8            optional repeat 0
  347             pdOS1 EQU #9            optional repeat 1
  348             pdOS2 EQU #A            optional repeat 2
  349             pdOS3 EQU #B            optional repeat 3
  350             pdOS4 EQU #C            optional repeat 4
  351             pdOS5 EQU #D            optional repeat 5
  352             pdOS6 EQU #E            optional repeat 6
  353             pdOS7 EQU #F            optional repeat 7
  354
  355             * RPL
  356             * RPL
  357             * insure RPL-mode exit
  358
  359
  360
  361
  362
  363
  364
  365
  366
  367
  368
  369
  370
  371
  372
  373
  374
  375             * RPL
  376             * insure RPL-mode exit
  377
  378             * RPL
  379             * insure RPL-mode exit
  380
  381
  382
  383
  384
  385
  386
  387
  388
  389             * ( for internal use only
  390
  391
  392
  393
  394
  395
  396
  397
  398
  399
  400             * ( decimal 67
  401             * ( decimal 86
  402             * ( decimal 82
  403             * ( decimal 85
  404             * ( decimal 101
  405             * ( decimal 97
  406             * ( decimal 100
  407             * ( decimal 113
  408             * ( decimal 112
  409
  410             * ( check width
  411             * ( field character width
  412
  413             * ( decimal 67
  414             * ( decimal 85
  415             * ( decimal 97
  416
  417
  418
  419
  420
  421
  422
  423
  424
  425
  426
  427
  428
  429
  430
  431
  432
  433             * RPL
  434             * insure RPL-mode exit
  435
  436             * ( decimal 66
  437             * ( decimal 67
  438             * ( decimal 69
  439             * ( decimal 82
  440             * ( decimal 83
  441             * ( decimal 84
  442             * ( decimal 85
  443             * ( decimal 86
  444             * ( decimal 87
  445
  446
  447             * ( norm-view default visible row count
  448             * ( default first row X location
  449             * ( default first row Y location
  450             * ( default row width
  451             * ( default row height
  452
  453             * ( max-view width
  454             * ( max-view height
  455             * ( max-view default visible row count
  456
  457             * ( prompt area height
  458
  459             * ( more-up/down icon width
  460
  461
  462
  463             * RPL
  464             * insure RPL-mode exit
  465
  466
  467
  468
  469
  470
  471
  472
  473
  474
  475
  476
  477
  478
  479
  480
  481
  482
  483
  484
  485
  486
  487
  488
  489
  490
  491
  492
  493
  494
  495
  496
  497
  498
  499
  500
  501
  502
  503
  504
  505
  506
  507
  508
  509
  510
  511
  512
  513
  514
  515
  516
  517
  518
  519
  520
  521
  522
  523
  524
  525
  526
  527
  528
  529
  530
  531
  532
  533
  534
  535
  536
  537
  538
  539
  540
  541
  542
  543
  544
  545
  546
  547
  548
  549
  550
  551
  552
  553
  554
  555
  556
  557
  558
  559
  560
  561
  562
  563
  564
  565
  566
  567
  568
  569
  570
  571
  572
  573
  574
  575
  576
  577
  578
  579
  580
  581
  582
  583
  584
  585
  586
  587
  588
  589
  590
  591
  592
  593
  594
  595
  596
  597
  598
  599
  600
  601
  602
  603
  604
  605
  606
  607
  608
  609
  610
  611
  612
  613
  614
  615
  616
  617
  618
  619
  620
  621
  622
  623
  624
  625
  626
  627
  628
  629
  630
  631
  632
  633
  634
  635
  636
  637
  638
  639
  640
  641
  642
  643
  644
  645
  646
  647
  648
  649
  650
  651
  652
  653
  654
  655
  656
  657
  658
  659
  660
  661
  662
  663
  664
  665
  666
  667
  668
  669
  670
  671
  672
  673
  674
  675
  676
  677
  678
  679
  680             * RPL
  681             * insure RPL-mode exit
  682
  683
  684
  685             * ( set for informations
  686             * ( set for step by step mode on
  687             * ( internal use: true if VXXL success
  688             * ( set for no gcd computations
  689             * ( set for complex mode
  690             * ( internal use:       LN->-INV[-LN]]
  691             * ( set for approx mode
  692             * ( set for TSIMP call inside SERIES
  693             * ( internal use:       modular computation
  694             * ( internal use:       testing remainder=0
  695             * ( set to allow numeric factorization
  696             * ( set for large matrices
  697             * ( set: don't simplify inside non rational operation
  698             * ( set to see i as an irrquad c=-1
  699             * ( set to disable linearity simplif.
  700             * ( set for increasing power x+1 -> 1+x
  701             * ( internal use:       sqrt not as irrquad
  702             * ( set if sin are prefered to cos
  703             * ( set for menu as choosebox
  704             * ( set if xINT is not simplified
  705             * ( set if non rigourous mode
  706             * ( set to allow silent mode switch
  707             * ( set if xLN returns LN[ABS[]]
  708
  709
  710             * ASSEMBLE
  711
  712             MultiLineFl     EQU     65
  713             MultiLineNib    EQU     ((MultiLineFl)-1)/4
  714             MultiLineBit    EQU     ((MultiLineFl)-1)%4
  715             MultiLineStringsFl      EQU     66
  716             MultiLineStringsNib     EQU     ((MultiLineStringsFl)-1)/4
  717             MultiLineStringsBit     EQU     ((MultiLineStringsFl)-1)%4
  718             DigitalClockFl  EQU     67
  719             DigitalClockNib EQU     ((DigitalClockFl)-1)/4
  720             DigitalClockBit EQU     ((DigitalClockFl)-1)%4
  721             CmdAutoIndentFl EQU     68
  722             CmdAutoIndentNib        EQU     ((CmdAutoIndentFl)-1)/4
  723             CmdAutoIndentBit        EQU     ((CmdAutoIndentFl)-1)%4
  724             FullScreenEditFl        EQU     69
  725             FullScreenEditNib       EQU     ((FullScreenEditFl)-1)/4
  726             FullScreenEditBit       EQU     ((FullScreenEditFl)-1)%4
  727             MultiLine2GROBFl        EQU     70
  728             MultiLine2GROBNib       EQU     ((MultiLine2GROBFl)-1)/4
  729             MultiLine2GROBBit       EQU     ((MultiLine2GROBFl)-1)%4
  730             DesasmWithAdrFl EQU     71
  731             DesasmWithAdrNib        EQU     ((DesasmWithAdrFl)-1)/4
  732             DesasmWithAdrBit        EQU     ((DesasmWithAdrFl)-1)%4
  733             BigFontStackFl  EQU     72
  734             BigFontStackNib EQU     ((BigFontStackFl)-1)/4
  735             BigFontStackBit EQU     ((BigFontStackFl)-1)%4
  736             BigFontCmdFl    EQU     73
  737             BigFontCmdNib   EQU     ((BigFontCmdFl)-1)/4
  738             BigFontCmdBit   EQU     ((BigFontCmdFl)-1)%4
  739             RightJustifiedStackFl   EQU     74
  740             RightJustifiedStackNib  EQU     ((RightJustifiedStackFl)-1)/4
  741             RightJustifiedStackBit  EQU     ((RightJustifiedStackFl)-1)%4
  742             KeystrokeBeepFl EQU     75
  743             KeystrokeBeepNib        EQU     ((KeystrokeBeepFl)-1)/4
  744             KeystrokeBeepBit        EQU     ((KeystrokeBeepFl)-1)%4
  745             FilerConfirmationFl     EQU     76
  746             FilerConfirmationNib    EQU     ((FilerConfirmationFl)-1)/4
  747             FilerConfirmationBit    EQU     ((FilerConfirmationFl)-1)%4
  748             FilerConfirmFl  EQU     77
  749             FilerConfirmNib EQU     ((FilerConfirmFl)-1)/4
  750             FilerConfirmBit EQU     ((FilerConfirmFl)-1)%4
  751             KernelParamFl   EQU     78
  752             KernelParamNib  EQU     ((KernelParamFl)-1)/4
  753             KernelParamBit  EQU     ((KernelParamFl)-1)%4
  754             PrettyPrintFl   EQU     79
  755             PrettyPrintNib  EQU     ((PrettyPrintFl)-1)/4
  756             PrettyPrintBit  EQU     ((PrettyPrintFl)-1)%4
  757             SmallFontEQWStackFl     EQU     80
  758             SmallFontEQWStackNib    EQU     ((SmallFontEQWStackFl)-1)/4
  759             SmallFontEQWStackBit    EQU     ((SmallFontEQWStackFl)-1)%4
  760             SmallFontEQWGrobFl      EQU     81
  761             SmallFontEQWGrobNib     EQU     ((SmallFontEQWGrobFl)-1)/4
  762             SmallFontEQWGrobBit     EQU     ((SmallFontEQWGrobFl)-1)%4
  763             SmallFontEQWEditFl      EQU     82
  764             SmallFontEQWEditNib     EQU     ((SmallFontEQWEditFl)-1)/4
  765             SmallFontEQWEditBit     EQU     ((SmallFontEQWEditFl)-1)%4
  766             GrobDisplayFl   EQU     83
  767             GrobDisplayNib  EQU     ((GrobDisplayFl)-1)/4
  768             GrobDisplayBit  EQU     ((GrobDisplayFl)-1)%4
  769             MKSmallFontMenuFl       EQU     84
  770             MKSmallFontMenuNib      EQU     ((MKSmallFontMenuFl)-1)/4
  771             MKSmallFontMenuBit      EQU     ((MKSmallFontMenuFl)-1)%4
  772             SystemRPLStackFl        EQU     85
  773             SystemRPLStackNib       EQU     ((SystemRPLStackFl)-1)/4
  774             SystemRPLStackBit       EQU     ((SystemRPLStackFl)-1)%4
  775             MASDDecompilerFl        EQU     86
  776             MASDDecompilerNib       EQU     ((MASDDecompilerFl)-1)/4
  777             MASDDecompilerBit       EQU     ((MASDDecompilerFl)-1)%4
  778             RecursiveStackFl        EQU     87
  779             RecursiveStackNib       EQU     ((RecursiveStackFl)-1)/4
  780             RecursiveStackBit       EQU     ((RecursiveStackFl)-1)%4
  781             RecursiveEditFl EQU     88
  782             RecursiveEditNib        EQU     ((RecursiveEditFl)-1)/4
  783             RecursiveEditBit        EQU     ((RecursiveEditFl)-1)%4
  784             AddressesCLEFl  EQU     89
  785             AddressesCLENib EQU     ((AddressesCLEFl)-1)/4
  786             AddressesCLEBit EQU     ((AddressesCLEFl)-1)%4
  787             SmallFontChooseFl       EQU     90
  788             SmallFontChooseNib      EQU     ((SmallFontChooseFl)-1)/4
  789             SmallFontChooseBit      EQU     ((SmallFontChooseFl)-1)%4
  790             ArrayOnlyFl     EQU     91
  791             ArrayOnlyNib    EQU     ((ArrayOnlyFl)-1)/4
  792             ArrayOnlyBit    EQU     ((ArrayOnlyFl)-1)%4
  793             MLMASDModeFl    EQU     92
  794             MLMASDModeNib   EQU     ((MLMASDModeFl)-1)/4
  795             MLMASDModeBit   EQU     ((MLMASDModeFl)-1)%4
  796             ErableHeaderFl  EQU     93
  797             ErableHeaderNib EQU     ((ErableHeaderFl)-1)/4
  798             ErableHeaderBit EQU     ((ErableHeaderFl)-1)%4
  799             AutoSaveFl      EQU     94
  800             AutoSaveNib     EQU     ((AutoSaveFl)-1)/4
  801             AutoSaveBit     EQU     ((AutoSaveFl)-1)%4
  802             AlgebraicModeFl EQU     95
  803             AlgebraicModeNib        EQU     ((AlgebraicModeFl)-1)/4
  804             AlgebraicModeBit        EQU     ((AlgebraicModeFl)-1)%4
  805             MenuOnFl        EQU     96
  806             MenuOnNib       EQU     ((MenuOnFl)-1)/4
  807             MenuOnBit       EQU     ((MenuOnFl)-1)%4
  808             VerticalListFl  EQU     97
  809             VerticalListNib EQU     ((VerticalListFl)-1)/4
  810             VerticalListBit EQU     ((VerticalListFl)-1)%4
  811             VerticalVectorFl        EQU     98
  812             VerticalVectorNib       EQU     ((VerticalVectorFl)-1)/4
  813             VerticalVectorBit       EQU     ((VerticalVectorFl)-1)%4
  814
  815
  816             ComplexFl       EQU     103
  817             ComplexNib      EQU     ((ComplexFl)-1)/4
  818             ComplexBit      EQU     ((ComplexFl)-1)%4
  819
  820
  821             ExactModeFl     EQU     105
  822             ExactModeNib    EQU     ((ExactModeFl)-1)/4
  823             ExactModeBit    EQU     ((ExactModeFl)-1)%4
  824
  825
  826             * RPL
  827
  828
  829
  830             * ASSEMBLE
  831                     SETLIST CODE, INCLUDE, PSEUDO
  832             * RPL
  833
  834             *|| Resuming file SInf.s at line 6
  835             *|| Reading from C:\PROGRA~1\HEWLET~2\Debug4x\Include\Informbox48.h
  836
  837             * Do not modify any of these constants
  838             * Do not modify any of these constants
  839             * ( changed for HP48, was zint=BINT255d for HP49
  840             *|| Resuming file SInf.s at line 7
  841
  842             * Field and Label Definitions
  843             * File  SInf.s  10
  844             * File  SInf.s  11
  845             * File  SInf.s  12
  846             * File  SInf.s  13
  847             * File  SInf.s  14
  848
  849             * File  SInf.s  15
  850 00000       =SInf
  851             * File  SInf.s  16
  852 00000 00000         CON(5)  =DOCOL
  853             * File  SInf.s  17
  854             * Label Definitions
  855             * File  SInf.s  18
  856 00005 00000         CON(5)  =DOCSTR
  857 0000A D1000         CON(5)  29
  858 0000F 25561         NIBASC  \Real Number:\
            6C602
            E457D6265627A3

  859 00027 00000         CON(5)  =ONE
  860 0002C 00000         CON(5)  =NINE
  861             * Label1 label definition
  862             * File  SInf.s  19
  863 00031 00000         CON(5)  =DOCSTR
  864 00036 B1000         CON(5)  27
  865 0003B 34865         NIBASC  \Check Item:\
            636B6
            02944756D6A3

  866 00051 00000         CON(5)  =ONE
  867 00056 00000         CON(5)  =TWENTYFIVE
  868             * Label2 label definition
  869             * File  SInf.s  20
  870
  871             * File  SInf.s  21
  872             * Field Definitions
  873             * File  SInf.s  22
  874             * Field1 field definition
  875             * File  SInf.s  23
  876 0005B 00000         CON(5)  ='DROPFALSE
  877             * Field Message Handler
  878             * File  SInf.s  24
  879 00060 00000         CON(5)  =FIFTY
  880 00065 00000         CON(5)  =EIGHT
  881 0006A 00000         CON(5)  =FORTY
  882 0006F 00000         CON(5)  =NINE
  883             * x, y, width, height
  884             * File  SInf.s  25
  885 00074 00000         CON(5)  =ONE
  886             * Field Type
  887             * File  SInf.s  26
  888 00079 00000         CON(5)  =DOLIST
  889 0007E 00000         CON(5)  =ZERO
  890 00083 00000         CON(5)  =SEMI
  891             * Allowed Types
  892             * File  SInf.s  27
  893 00088 00000         CON(5)  =TWO
  894             * Decomp object
  895             * File  SInf.s  28
  896 0008D 00000         CON(5)  =DOCSTR
  897 00092 B2000         CON(5)  43
  898 00097 54E64         NIBASC  \Enter a real number\
            75627
            021602275616C602E657D6265627

  899             * Help text
  900             * File  SInf.s  29
  901 000BD 00000         CON(5)  =MINUSONE
  902             * No choose list
  903             * File  SInf.s  30
  904 000C2 00000         CON(5)  =MINUSONE
  905             * No choose decomp
  906             * File  SInf.s  31
  907 000C7 00000         CON(5)  =DOREAL
  908 000CC 200           NIBHEX  200
  909 000CF 00000         NIBHEX  000000000654
            00006
            54
  910 000DB 0             NIBHEX  0
  911             * Reset Value
  912             * File  SInf.s  32
  913 000DC 00000         CON(5)  =DOREAL
  914 000E1 200           NIBHEX  200
  915 000E4 00000         NIBHEX  000000000321
            00003
            21
  916 000F0 0             NIBHEX  0
  917             * Initial Value
  918             * File  SInf.s  33
  919
  920             * File  SInf.s  34
  921             * Field2 field definition
  922             * File  SInf.s  35
  923 000F1 00000         CON(5)  ='DROPFALSE
  924             * Field Message Handler
  925             * File  SInf.s  36
  926 000F6 00000         CON(5)  =FIFTY
  927 000FB 00000         CON(5)  =TWENTYTWO
  928 00100 00000         CON(5)  =SIX
  929 00105 00000         CON(5)  =NINE
  930             * x, y, width, height
  931             * File  SInf.s  37
  932 0010A 00000         CON(5)  =THIRTYTWO
  933             * Field Type
  934             * File  SInf.s  38
  935 0010F 00000         CON(5)  =MINUSONE
  936             * Every type possible
  937             * File  SInf.s  39
  938 00114 00000         CON(5)  =TWO
  939             * Decomp object
  940             * File  SInf.s  40
  941 00119 00000         CON(5)  =DOCSTR
  942 0011E 93000         CON(5)  57
  943 00123 34865         NIBASC  \Check or uncheck thi\
            636B6
            02F6270257E636865636B602478696

  944 0014B 37029         NIBASC  \s item\
            64756
            D6
  945             * Help text
  946             * File  SInf.s  41
  947 00157 00000         CON(5)  =MINUSONE
  948             * No choose list
  949             * File  SInf.s  42
  950 0015C 00000         CON(5)  =MINUSONE
  951             * No choose decomp
  952             * File  SInf.s  43
  953 00161 00000         CON(5)  =TRUE
  954             * Reset Value
  955             * File  SInf.s  44
  956 00166 00000         CON(5)  =TRUE
  957             * Initial Value
  958             * File  SInf.s  45
  959
  960             * File  SInf.s  46
  961             * Form Layout Definitions
  962             * File  SInf.s  47
  963 0016B 00000         CON(5)  =TWO
  964             * number of labels
  965             * File  SInf.s  48
  966 00170 00000         CON(5)  =TWO
  967             * number of fields
  968             * File  SInf.s  49
  969 00175 00000         CON(5)  ='DROPFALSE
  970             * Inform Box Message Handler
  971             * File  SInf.s  50
  972 0017A 00000         CON(5)  =DOCSTR
  973 0017F 72000         CON(5)  39
  974 00184 3596D         NIBASC  \Simple Inform Box\
            607C6
            560294E666F627D60224F687

  975             * form title
  976             * File  SInf.s  51
  977 001A6 00000         CON(5)  =DoInputForm
  978             * File  SInf.s  52
  979
  980             * File  SInf.s  53
  981             * User End Code
  982             * File  SInf.s  54
  983 001AB 00000         CON(5)  =DROP
  984             * result code
  985             * File  SInf.s  55
  986
  987             * File  SInf.s  56
  988 001B0 00000         CON(5)  =SEMI
  989             * end of form procedure
  990             * File  SInf.s  57
  991
  992             * File  SInf.s  58
  993             * File  SInf.s  59
  994             * % Count for the Message Table
  995             * File  SInf.s  60
  996             * DCCP 0 SInfMesBase
  997             * File  SInf.s  61
  998             *
  999             * File  SInf.s  62
 1000
 1001             * File  SInf.s  63
 1002             * Messages automatically copied by Inform Generator
 1003             * File  SInf.s  64
 1004             * Messages added to the Library's Message Table
 1005             * File  SInf.s  65
 1006
 1007             * File  SInf.s  66
 1008             * Internal Datas: Do not touch!
 1009             * File  SInf.s  67
 1010             * l00000000020C001C00010000001100530069006D0070006C006500200049006E0066006F0072006D00200042006F0078
 1011             * File  SInf.s  68
 1012             * 0002000D000A
 1013             * File  SInf.s  69
 1014             * 0002000D000A
 1015             * File  SInf.s  70
 1016             * 001600440052004F00500020002800200072006500730075006C007400200063006F0064006500200029000D000A
 1017             * File  SInf.s  71
 1018             * f002000C800A0002400000006004600690065006C006400310006004600690065006C006400310002000D000A00000001003
 1019             * File  SInf.s  72
 1020             * S0000500420049004E005400320002000D000A0003004F004E004500050025002000340035003600050025002000310032003
 1021             * File  SInf.s  73
 1022             * S300130045006E007400650072002000610020007200650061006C0020006E0075006D006200650072
 1023             * File  SInf.s  74
 1024             * f005800C80018002400010006004600690065006C006400320006004600690065006C006400320002000D000A00030000000
 1025             * File  SInf.s  75
 1026             * S500420049004E005400320002000D000A0003004F004E00450004005400520055004500040054005200550045001A0043006
 1027             * File  SInf.s  76
 1028             * S800650063006B0020006F007200200075006E0063006800650063006B002000740068006900730020006900740065006D
 1029             * File  SInf.s  77
 1030             * l0024000400C0001400000006004C006100620065006C0031000C005200650061006C0020004E0075006D006200650072003
 1031             * File  SInf.s  78
 1032             * SA
 1033             * File  SInf.s  79
 1034             * l0064000400B0001400010006004C006100620065006C0032000B0043006800650063006B0020004900740065006D003A
 1035             * File  SInf.s  80
 1036             * 0002000D000A
 1037             * File  SInf.s  81
 1038             * 0002000D000A
 1039             * File  SInf.s  82
 1040             * 000E00570069006C006C00690061006D0020004700720061007600650073
 1041             * File  SInf.s  83
 1042             * 000400530049006E0066
 1043             * File  SInf.s  84
 1044             * 000200460046
 1045             * File  SInf.s  85
 1046             *
Saturn Assembler                                       Fri Oct 04 16:32:30 2002
V3.0.7 (11/17/1999)   Symbol Table                       SInf.a         Page    2

 'DROPFALSE                        Ext                   -   876   923   969
 AddressesCLEBit                   Abs       0 #00000000 -   786
 AddressesCLEFl                    Abs      89 #00000059 -   784   785   786
 AddressesCLENib                   Abs      22 #00000016 -   785
 AlarmBeepBit                      Abs       0 #00000000 -   173
 AlarmBeepFl                       Abs      57 #00000039 -   161   172   173
 AlarmBeepNib                      Abs      14 #0000000E -   172
 AlgebraicModeBit                  Abs       2 #00000002 -   804
 AlgebraicModeFl                   Abs      95 #0000005F -   802   803   804
 AlgebraicModeNib                  Abs      23 #00000017 -   803
 AngleBCt                          Abs       2 #00000002 -   124
 AngleBit1                         Abs       0 #00000000 -   176   177
 AngleBit2                         Abs       1 #00000001 -   177
 AngleFl1                          Abs      17 #00000011 -   123   175   176
 AngleNib                          Abs       4 #00000004 -   175
 ArrayOnlyBit                      Abs       2 #00000002 -   792
 ArrayOnlyFl                       Abs      91 #0000005B -   790   791   792
 ArrayOnlyNib                      Abs      22 #00000016 -   791
 AutoSaveBit                       Abs       1 #00000001 -   801
 AutoSaveFl                        Abs      94 #0000005E -   799   800   801
 AutoSaveNib                       Abs      23 #00000017 -   800
 BigFontCmdBit                     Abs       0 #00000000 -   738
 BigFontCmdFl                      Abs      73 #00000049 -   736   737   738
 BigFontCmdNib                     Abs      18 #00000012 -   737
 BigFontStackBit                   Abs       3 #00000003 -   735
 BigFontStackFl                    Abs      72 #00000048 -   733   734   735
 BigFontStackNib                   Abs      17 #00000011 -   734
 BinBaseBCt                        Abs       2 #00000002 -   119
 BinBaseBit1                       Abs       2 #00000002 -   180
 BinBaseFl1                        Abs      11 #0000000B -   118   179   180
 BinBaseNib                        Abs       2 #00000002 -   179
 BinWordSBCt                       Abs       6 #00000006 -   117
 BinWordSBit1                      Abs       0 #00000000 -   183
 BinWordSFl1                       Abs       5 #00000005 -   116   182   183
 BinWordSNib                       Abs       1 #00000001 -   182
 CarefulBit                        Abs       3 #00000003 -   186
 CarefulFl                         Abs       4 #00000004 -   114   185   186
 CarefulNib                        Abs       0 #00000000 -   185
 ClockFmtBit                       Abs       0 #00000000 -   189
 ClockFmtFl                        Abs      41 #00000029 -   146   188   189
 ClockFmtNib                       Abs      10 #0000000A -   188
 ClockOnBit                        Abs       3 #00000003 -   192
 ClockOnFl                         Abs      40 #00000028 -   145   191   192
 ClockOnNib                        Abs       9 #00000009 -   191
 CmdAutoIndentBit                  Abs       3 #00000003 -   723
 CmdAutoIndentFl                   Abs      68 #00000044 -   721   722   723
 CmdAutoIndentNib                  Abs      16 #00000010 -   722
 ComVecDiBCt                       Abs       2 #00000002 -   122
 ComVecDiBit1                      Abs       2 #00000002 -   198
 ComVecDiFl1                       Abs      15 #0000000F -   121   197   198
 ComVecDiNib                       Abs       3 #00000003 -   197
 Complex2DBit                      Abs       2 #00000002 -   195
 Complex2DFl                       Abs      19 #00000013 -   125   194   195
 Complex2DNib                      Abs       4 #00000004 -   194
 ComplexBit                        Abs       2 #00000002 -   818
 ComplexFl                         Abs     103 #00000067 -   816   817   818
 ComplexNib                        Abs      25 #00000019 -   817
 ConnectPtBit                      Abs       2 #00000002 -   201
 ConnectPtFl                       Abs      31 #0000001F -   135   200   201
 ConnectPtNib                      Abs       7 #00000007 -   200
 ConstantsBit                      Abs       1 #00000001 -   204
 ConstantsFl                       Abs       2 #00000002 -   112   203   204
 ConstantsNib                      Abs       0 #00000000 -   203
 DOCOL                             Ext                   -   852
 DOCSTR                            Ext                   -   856   863   896
                                         941   972
 DOLIST                            Ext                   -   888
 DOREAL                            Ext                   -   907   913
 DROP                              Ext                   -   983
 DateFmtBit                        Abs       1 #00000001 -   207
 DateFmtFl                         Abs      42 #0000002A -   147   206   207
 DateFmtNib                        Abs      10 #0000000A -   206
 DblSpaceBit                       Abs       0 #00000000 -   210
 DblSpaceFl                        Abs      37 #00000025 -   141   209   210
 DblSpaceNib                       Abs       9 #00000009 -   209
 DefSysF32-01                      Abs67178480 #04010FF0 -    36
 DefSysF64-33                      Abs       0 #00000000 -    35
 DefSysF65-96                      Abs1107296256 #42000000 -    37
 DefSysF97-128                     Abs       0 #00000000 -    38
 DelNRAlmBit                       Abs       3 #00000003 -   213
 DelNRAlmFl                        Abs      44 #0000002C -   149   212   213
 DelNRAlmNib                       Abs      10 #0000000A -   212
 DesasmWithAdrBit                  Abs       2 #00000002 -   732
 DesasmWithAdrFl                   Abs      71 #00000047 -   730   731   732
 DesasmWithAdrNib                  Abs      17 #00000011 -   731
 DigitalClockBit                   Abs       2 #00000002 -   720
 DigitalClockFl                    Abs      67 #00000043 -   718   719   720
 DigitalClockNib                   Abs      16 #00000010 -   719
 DoInputForm                       Ext                   -   977
 EIGHT                             Ext                   -   880
 ErableHeaderBit                   Abs       0 #00000000 -   798
 ErableHeaderFl                    Abs      93 #0000005D -   796   797   798
 ErableHeaderNib                   Abs      23 #00000017 -   797
 ErrorBeepBit                      Abs       3 #00000003 -   216
 ErrorBeepFl                       Abs      56 #00000038 -   160   215   216
 ErrorBeepNib                      Abs      13 #0000000D -   215
 ExactModeBit                      Abs       0 #00000000 -   823
 ExactModeFl                       Abs     105 #00000069 -   821   822   823
 ExactModeNib                      Abs      26 #0000001A -   822
 FIFTY                             Ext                   -   879   926
 FORTY                             Ext                   -   881
 FastEViewBit                      Abs       2 #00000002 -   219
 FastEViewNib                      Abs      14 #0000000E -   218
 FastEqViewFl                      Abs      59 #0000003B -   163   218   219
 FilerConfirmBit                   Abs       0 #00000000 -   750
 FilerConfirmFl                    Abs      77 #0000004D -   748   749   750
 FilerConfirmNib                   Abs      19 #00000013 -   749
 FilerConfirmationBit              Abs       3 #00000003 -   747
 FilerConfirmationFl               Abs      76 #0000004C -   745   746   747
 FilerConfirmationNib              Abs      18 #00000012 -   746
 FullScreenEditBit                 Abs       0 #00000000 -   726
 FullScreenEditFl                  Abs      69 #00000045 -   724   725   726
 FullScreenEditNib                 Abs      17 #00000011 -   725
 FunctPlotBit                      Abs       1 #00000001 -   222
 FunctPlotFl                       Abs      30 #0000001E -   134   221   222
 FunctPlotNib                      Abs       7 #00000007 -   221
 GCursorBit                        Abs       3 #00000003 -   225
 GCursorFl                         Abs      32 #00000020 -   136   224   225
 GCursorNib                        Abs       7 #00000007 -   224
 GrobDisplayBit                    Abs       2 #00000002 -   768
 GrobDisplayFl                     Abs      83 #00000053 -   766   767   768
 GrobDisplayNib                    Abs      20 #00000014 -   767
 IODataFmtBit                      Abs       2 #00000002 -   237
 IODataFmtFl                       Abs      35 #00000023 -   139   236   237
 IODataFmtNib                      Abs       8 #00000008 -   236
 IODeviceBit                       Abs       0 #00000000 -   240
 IODeviceFl                        Abs      33 #00000021 -   137   239   240
 IODeviceNib                       Abs       8 #00000008 -   239
 IndexWrapBit                      Abs       3 #00000003 -   228
 IndexWrapFl                       Abs      64 #00000040 -   168   227   228
 IndexWrapNib                      Abs      15 #0000000F -   227
 InfResActBit                      Abs       1 #00000001 -   231
 InfResActFl                       Abs      22 #00000016 -   128   230   231
 InfResActNib                      Abs       5 #00000005 -   230
 InfResultBit                      Abs       1 #00000001 -   234
 InfResultFl                       Abs      26 #0000001A -   132   233   234
 InfResultNib                      Abs       6 #00000006 -   233
 KernelParamBit                    Abs       1 #00000001 -   753
 KernelParamFl                     Abs      78 #0000004E -   751   752   753
 KernelParamNib                    Abs      19 #00000013 -   752
 KeystrokeBeepBit                  Abs       2 #00000002 -   744
 KeystrokeBeepFl                   Abs      75 #0000004B -   742   743   744
 KeystrokeBeepNib                  Abs      18 #00000012 -   743
 LastArgsBit                       Abs       2 #00000002 -   243
 LastArgsFl                        Abs      55 #00000037 -   159   242   243
 LastArgsNib                       Abs      13 #0000000D -   242
 MASDDecompilerBit                 Abs       1 #00000001 -   777
 MASDDecompilerFl                  Abs      86 #00000056 -   775   776   777
 MASDDecompilerNib                 Abs      21 #00000015 -   776
 MINUSONE                          Ext                   -   901   904   935
                                         947   950
 MKSmallFontMenuBit                Abs       3 #00000003 -   771
 MKSmallFontMenuFl                 Abs      84 #00000054 -   769   770   771
 MKSmallFontMenuNib                Abs      20 #00000014 -   770
 MLMASDModeBit                     Abs       3 #00000003 -   795
 MLMASDModeFl                      Abs      92 #0000005C -   793   794   795
 MLMASDModeNib                     Abs      22 #00000016 -   794
 MenuOnBit                         Abs       3 #00000003 -   807
 MenuOnFl                          Abs      96 #00000060 -   805   806   807
 MenuOnNib                         Abs      23 #00000017 -   806
 MultiDispBit                      Abs       3 #00000003 -   249
 MultiDispFl                       Abs      52 #00000034 -   156   248   249
 MultiDispNib                      Abs      12 #0000000C -   248
 MultiLine2GROBBit                 Abs       1 #00000001 -   729
 MultiLine2GROBFl                  Abs      70 #00000046 -   727   728   729
 MultiLine2GROBNib                 Abs      17 #00000011 -   728
 MultiLineBit                      Abs       0 #00000000 -   714
 MultiLineFl                       Abs      65 #00000041 -   712   713   714
 MultiLineNib                      Abs      16 #00000010 -   713
 MultiLineStringsBit               Abs       1 #00000001 -   717
 MultiLineStringsFl                Abs      66 #00000042 -   715   716   717
 MultiLineStringsNib               Abs      16 #00000010 -   716
 NINE                              Ext                   -   860   882   929
 NoAutoCRBit                       Abs       1 #00000001 -   252
 NoAutoCRFl                        Abs      38 #00000026 -   142   251   252
 NoAutoCRNib                       Abs       9 #00000009 -   251
 NoIOStMsgBit                      Abs       2 #00000002 -   255
 NoIOStMsgNib                      Abs       9 #00000009 -   254
 NoIOStsMsgFl                      Abs      39 #00000027 -   143   254   255
 NoParseBit                        Abs       2 #00000002 -   258
 NoParseFl                         Abs      63 #0000003F -   167   257   258
 NoParseNib                        Abs      15 #0000000F -   257
 NumDigsBCt                        Abs       4 #00000004 -   152
 NumDigsBit1                       Abs       0 #00000000 -   261
 NumDigsFl1                        Abs      45 #0000002D -   151   260   261
 NumDigsNib                        Abs      11 #0000000B -   260
 NumDispBCt                        Abs       2 #00000002 -   154
 NumDispBit1                       Abs       0 #00000000 -   264
 NumDispFl1                        Abs      49 #00000031 -   153   263   264
 NumDispNib                        Abs      12 #0000000C -   263
 ONE                               Ext                   -   859   866   885
 OverfActBit                       Abs       0 #00000000 -   267
 OverfActFl                        Abs      21 #00000015 -   127   266   267
 OverfActNib                       Abs       5 #00000005 -   266
 OverflowBit                       Abs       0 #00000000 -   270
 OverflowFl                        Abs      25 #00000019 -   131   269   270
 OverflowNib                       Abs       6 #00000006 -   269
 OverwriteBit                      Abs       3 #00000003 -   273
 OverwriteFl                       Abs      36 #00000024 -   140   272   273
 OverwriteNib                      Abs       8 #00000008 -   272
 PrettyPrintBit                    Abs       2 #00000002 -   756
 PrettyPrintFl                     Abs      79 #0000004F -   754   755   756
 PrettyPrintNib                    Abs      19 #00000013 -   755
 PrintDevBit                       Abs       1 #00000001 -   276
 PrintDevFl                        Abs      34 #00000022 -   138   275   276
 PrintDevNib                       Abs       8 #00000008 -   275
 RadixBit                          Abs       2 #00000002 -   279
 RadixFl                           Abs      51 #00000033 -   155   278   279
 RadixNib                          Abs      12 #0000000C -   278
 RecursiveEditBit                  Abs       3 #00000003 -   783
 RecursiveEditFl                   Abs      88 #00000058 -   781   782   783
 RecursiveEditNib                  Abs      21 #00000015 -   782
 RecursiveStackBit                 Abs       2 #00000002 -   780
 RecursiveStackFl                  Abs      87 #00000057 -   778   779   780
 RecursiveStackNib                 Abs      21 #00000015 -   779
 ResRepAlmBit                      Abs       2 #00000002 -   282
 ResRepAlmFl                       Abs      43 #0000002B -   148   281   282
 ResRepAlmNib                      Abs      10 #0000000A -   281
 ResultsBit                        Abs       2 #00000002 -   285
 ResultsFl                         Abs       3 #00000003 -   113   284   285
 ResultsNib                        Abs       0 #00000000 -   284
 RightJustifiedStackBit            Abs       1 #00000001 -   741
 RightJustifiedStackFl             Abs      74 #0000004A -   739   740   741
 RightJustifiedStackNib            Abs      18 #00000012 -   740
 SEMI                              Ext                   -   890   988
 SIX                               Ext                   -   928
=SInf                              Rel       0 #00000000 -   850
 ShowPrecBit                       Abs       0 #00000000 -   288
 ShowPrecFl                        Abs      53 #00000035 -   157   287   288
 ShowPrecNib                       Abs      13 #0000000D -   287
 SmallFontChooseBit                Abs       1 #00000001 -   789
 SmallFontChooseFl                 Abs      90 #0000005A -   787   788   789
 SmallFontChooseNib                Abs      22 #00000016 -   788
 SmallFontEQWEditBit               Abs       1 #00000001 -   765
 SmallFontEQWEditFl                Abs      82 #00000052 -   763   764   765
 SmallFontEQWEditNib               Abs      20 #00000014 -   764
 SmallFontEQWGrobBit               Abs       0 #00000000 -   762
 SmallFontEQWGrobFl                Abs      81 #00000051 -   760   761   762
 SmallFontEQWGrobNib               Abs      20 #00000014 -   761
 SmallFontEQWStackBit              Abs       3 #00000003 -   759
 SmallFontEQWStackFl               Abs      80 #00000050 -   757   758   759
 SmallFontEQWStackNib              Abs      19 #00000013 -   758
 SolutionsBit                      Abs       0 #00000000 -   291
 SolutionsFl                       Abs       1 #00000001 -   111   290   291
 SolutionsNib                      Abs       0 #00000000 -   290
 SystemRPLStackBit                 Abs       0 #00000000 -   774
 SystemRPLStackFl                  Abs      85 #00000055 -   772   773   774
 SystemRPLStackNib                 Abs      21 #00000015 -   773
 THIRTYTWO                         Ext                   -   932
 TRUE                              Ext                   -   953   956
 TWENTYFIVE                        Ext                   -   867
 TWENTYTWO                         Ext                   -   927
 TWO                               Ext                   -   893   938   963
                                         966
 TriAlphaBit                       Abs       3 #00000003 -   294
 TriAlphaFl                        Abs      60 #0000003C -   164   293   294
 TriAlphaNib                       Abs      14 #0000000E -   293
 TriUserBit                        Abs       0 #00000000 -   297
 TriUserFl                         Abs      61 #0000003D -   165   296   297
 TriUserNib                        Abs      15 #0000000F -   296
 UnderfActBit                      Abs       3 #00000003 -   300
 UnderfActFl                       Abs      20 #00000014 -   126   299   300
 UnderfActNib                      Abs       4 #00000004 -   299
 UnderfNegBit                      Abs       2 #00000002 -   303
 UnderfNegFl                       Abs      23 #00000017 -   129   302   303
 UnderfNegNib                      Abs       5 #00000005 -   302
 UnderfPosBit                      Abs       3 #00000003 -   306
 UnderfPosFl                       Abs      24 #00000018 -   130   305   306
 UnderfPosNib                      Abs       5 #00000005 -   305
 UserKeysBit                       Abs       1 #00000001 -   309
 UserKeysFl                        Abs      62 #0000003E -   166   308   309
 UserKeysNib                       Abs      15 #0000000F -   308
 VerboseBit                        Abs       1 #00000001 -   246
 VerboseFl                         Abs      58 #0000003A -   162   245   246
 VerboseNib                        Abs      14 #0000000E -   245
 VerticalListBit                   Abs       0 #00000000 -   810
 VerticalListFl                    Abs      97 #00000061 -   808   809   810
 VerticalListNib                   Abs      24 #00000018 -   809
 VerticalVectorBit                 Abs       1 #00000001 -   813
 VerticalVectorFl                  Abs      98 #00000062 -   811   812   813
 VerticalVectorNib                 Abs      24 #00000018 -   812
 ZERO                              Ext                   -   889
 hasALIAS                          Abs       2 #00000002 -   322
 hasCOLCT                          Abs       2 #00000002 -   328
 hasDER                            Abs       8 #00000008 -   326
 hasEXPND                          Abs       1 #00000001 -   329
 hasFORM                           Abs       8 #00000008 -   332
 hasHELP                           Abs       4 #00000004 -   320
 hasINTG                           Abs       4 #00000004 -   333
 hasINV                            Abs       4 #00000004 -   327
 hasPDATA                          Abs       1 #00000001 -   323
 hasPROMPTM                        Abs       4 #00000004 -   321
 hasVUNS                           Abs       1 #00000001 -   335
 hasWHERE                          Abs       2 #00000002 -   334
 nonALG                            Abs       8 #00000008 -   319
 pdCM                              Abs       6 #00000006 -   344
 pdEQ                              Abs       7 #00000007 -   345
 pdEX                              Abs       0 #00000000 -   338
 pdLP                              Abs       4 #00000004 -   342
 pdOP                              Abs       1 #00000001 -   339
 pdOS0                             Abs       8 #00000008 -   346
 pdOS1                             Abs       9 #00000009 -   347
 pdOS2                             Abs      10 #0000000A -   348
 pdOS3                             Abs      11 #0000000B -   349
 pdOS4                             Abs      12 #0000000C -   350
 pdOS5                             Abs      13 #0000000D -   351
 pdOS6                             Abs      14 #0000000E -   352
 pdOS7                             Abs      15 #0000000F -   353
 pdQE                              Abs       2 #00000002 -   340
 pdQN                              Abs       3 #00000003 -   341
 pdRP                              Abs       5 #00000005 -   343
Saturn Assembler                                       Fri Oct 04 16:32:30 2002
V3.0.7 (11/17/1999)   Statistics                         SInf.a         Page    3

Input Parameters

  Source file name is SInf.a

  Listing file name is SInf.l

  Object file name is SInf.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
