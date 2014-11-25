Saturn Assembler                                       Sat Dec 07 09:06:40 2002
V3.0.8 (11/17/2002)                                      DemoInf.a      Page    1

    1             * File  DemoInf.s       1
    2             * Inform Box File
    3             * Do not modify this line
    4             * File  DemoInf.s       2
    5             * Inform Box Inform Box Demonstration Source Code
    6             * File  DemoInf.s       3
    7             * Generated on 9:06:39 AM 12/7/2002 by HP InformBox Generator
    8             * File  DemoInf.s       4
    9             * Inform Box Designer is William Graves
   10             * File  DemoInf.s       5
   11
   12             * File  DemoInf.s       6
   13             *|| Reading from C:\Program Files\Hewlett-Packard\Debug4x\Include\Header.h
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
  834             *|| Resuming file DemoInf.s at line 6
  835             *|| Reading from C:\Program Files\Hewlett-Packard\Debug4x\Include\Informbox.h
  836
  837
  838
  839
  840
  841
  842
  843
  844
  845
  846
  847
  848
  849
  850
  851
  852
  853
  854
  855
  856
  857
  858
  859
  860
  861
  862
  863
  864
  865
  866
  867
  868
  869
  870
  871
  872
  873
  874
  875
  876
  877
  878
  879
  880
  881
  882
  883
  884
  885
  886
  887
  888
  889
  890
  891
  892
  893
  894
  895
  896
  897
  898
  899
  900
  901
  902
  903
  904
  905
  906
  907
  908             * Do not modify any of these constants
  909
  910             * Do not modify any of these constants
  911             * ( was zint
  912
  913
  914
  915
  916
  917
  918
  919
  920
  921             *|| Resuming file DemoInf.s at line 7
  922             *|| Reading from C:\Debug4x\Examples\Demo\Demo.h
  923
  924             =RomId  EQU     #201
  925             * ROMID set to 201
  926
  927
  928
  929             *|| Resuming file DemoInf.s at line 8
  930
  931             * Field and Label Definitions
  932             * File  DemoInf.s       11
  933             * File  DemoInf.s       12
  934             * File  DemoInf.s       13
  935             * File  DemoInf.s       14
  936             * File  DemoInf.s       15
  937             * File  DemoInf.s       16
  938             * File  DemoInf.s       17
  939             * File  DemoInf.s       18
  940             * File  DemoInf.s       19
  941
  942             * File  DemoInf.s       20
  943             * Local Definitions
  944             * File  DemoInf.s       21
  945
  946             * File  DemoInf.s       22
  947 00000       =InfDemo
  948             * File  DemoInf.s       23
  949 00000 00000         CON(5)  =DOCOL
  950             * File  DemoInf.s       24
  951             * Internal Graphical Datas
  952             * File  DemoInf.s       25
  953             * File  DemoInf.s       26
  954 00005 00000         CON(5)  =DOCSTR
  955 0000A F2100         SKIP5{
  956             * File  DemoInf.s       27
  957 0000F 7A400         CON(5)  1191
  958             * File  DemoInf.s       28
  959 00014 000           CON(3)  0
  960             * File  DemoInf.s       29
  961 00017 00            CON(2)  0
  962             * File  DemoInf.s       30
  963 00019 40            CON(2)  4
  964             * File  DemoInf.s       31
  965 0001B 40            CON(2)  4
  966             * File  DemoInf.s       32
  967 0001D 31100         CON(5)  275
  968             * File  DemoInf.s       33
  969
  970             * File  DemoInf.s       34
  971             * File  DemoInf.s       35
  972 00022 1             NIBHEX  1
  973 00023 7             NIBHEX  7
  974 00024 4             NIBHEX  4
  975 00025 0             NIBHEX  0
  976 00026 2             NIBHEX  2
  977 00027 B             NIBHEX  B
  978 00028 0             NIBHEX  0
  979 00029 1             NIBHEX  1
  980 0002A 1             NIBHEX  1
  981 0002B 0             NIBHEX  0
  982 0002C 0             NIBHEX  0
  983 0002D 4             NIBHEX  4
  984 0002E 2             NIBHEX  2
  985 0002F 6             NIBHEX  6
  986 00030 0             NIBHEX  0
  987 00031 1             NIBHEX  1
  988 00032 1             NIBHEX  1
  989 00033 2             NIBHEX  2
  990 00034 0             NIBHEX  0
  991 00035 F             NIBHEX  F
  992 00036 0             NIBHEX  0
  993 00037 F             NIBHEX  F
  994 00038 0             NIBHEX  0
  995 00039 F             NIBHEX  F
  996 0003A 0             NIBHEX  0
  997 0003B 5             NIBHEX  5
  998             * File  DemoInf.s       36
  999 0003C 1             NIBHEX  1
 1000 0003D D             NIBHEX  D
 1001 0003E 4             NIBHEX  4
 1002 0003F 0             NIBHEX  0
 1003 00040 2             NIBHEX  2
 1004 00041 9             NIBHEX  9
 1005 00042 1             NIBHEX  1
 1006 00043 0             NIBHEX  0
 1007 00044 0             NIBHEX  0
 1008 00045 1             NIBHEX  1
 1009 00046 0             NIBHEX  0
 1010 00047 0             NIBHEX  0
 1011 00048 8             NIBHEX  8
 1012 00049 2             NIBHEX  2
 1013 0004A 6             NIBHEX  6
 1014 0004B 0             NIBHEX  0
 1015 0004C 1             NIBHEX  1
 1016 0004D 4             NIBHEX  4
 1017 0004E 2             NIBHEX  2
 1018 0004F 0             NIBHEX  0
 1019 00050 F             NIBHEX  F
 1020 00051 0             NIBHEX  0
 1021 00052 F             NIBHEX  F
 1022 00053 0             NIBHEX  0
 1023 00054 F             NIBHEX  F
 1024 00055 0             NIBHEX  0
 1025 00056 B             NIBHEX  B
 1026             * File  DemoInf.s       37
 1027 00057 1             NIBHEX  1
 1028 00058 7             NIBHEX  7
 1029 00059 4             NIBHEX  4
 1030 0005A 0             NIBHEX  0
 1031 0005B 2             NIBHEX  2
 1032 0005C 5             NIBHEX  5
 1033 0005D 2             NIBHEX  2
 1034 0005E 0             NIBHEX  0
 1035 0005F 0             NIBHEX  0
 1036 00060 1             NIBHEX  1
 1037 00061 0             NIBHEX  0
 1038 00062 0             NIBHEX  0
 1039 00063 4             NIBHEX  4
 1040 00064 2             NIBHEX  2
 1041 00065 6             NIBHEX  6
 1042 00066 0             NIBHEX  0
 1043 00067 1             NIBHEX  1
 1044 00068 1             NIBHEX  1
 1045 00069 2             NIBHEX  2
 1046 0006A 0             NIBHEX  0
 1047 0006B F             NIBHEX  F
 1048 0006C 0             NIBHEX  0
 1049 0006D F             NIBHEX  F
 1050 0006E 0             NIBHEX  0
 1051 0006F F             NIBHEX  F
 1052 00070 0             NIBHEX  0
 1053 00071 5             NIBHEX  5
 1054             * File  DemoInf.s       38
 1055 00072 1             NIBHEX  1
 1056 00073 F             NIBHEX  F
 1057 00074 2             NIBHEX  2
 1058 00075 0             NIBHEX  0
 1059 00076 2             NIBHEX  2
 1060 00077 5             NIBHEX  5
 1061 00078 2             NIBHEX  2
 1062 00079 0             NIBHEX  0
 1063 0007A 0             NIBHEX  0
 1064 0007B 6             NIBHEX  6
 1065 0007C 3             NIBHEX  3
 1066 0007D 4             NIBHEX  4
 1067 0007E 1             NIBHEX  1
 1068 0007F 6             NIBHEX  6
 1069 00080 0             NIBHEX  0
 1070 00081 2             NIBHEX  2
 1071 00082 1             NIBHEX  1
 1072 00083 0             NIBHEX  0
 1073 00084 F             NIBHEX  F
 1074 00085 0             NIBHEX  0
 1075 00086 D             NIBHEX  D
 1076             * File  DemoInf.s       39
 1077
 1078             * File  DemoInf.s       40
 1079             * File  DemoInf.s       41
 1080 00087 1             NIBHEX  1
 1081 00088 C             NIBHEX  C
 1082 00089 A             NIBHEX  A
 1083 0008A 0             NIBHEX  0
 1084 0008B 2             NIBHEX  2
 1085 0008C A             NIBHEX  A
 1086 0008D 0             NIBHEX  0
 1087 0008E 1             NIBHEX  1
 1088 0008F 7             NIBHEX  7
 1089 00090 2             NIBHEX  2
 1090 00091 3             NIBHEX  3
 1091 00092 C             NIBHEX  C
 1092 00093 2             NIBHEX  2
 1093 00094 8             NIBHEX  8
 1094 00095 0             NIBHEX  0
 1095 00096 1             NIBHEX  1
 1096 00097 8             NIBHEX  8
 1097 00098 2             NIBHEX  2
 1098 00099 0             NIBHEX  0
 1099 0009A F             NIBHEX  F
 1100 0009B 0             NIBHEX  0
 1101 0009C F             NIBHEX  F
 1102 0009D 0             NIBHEX  0
 1103 0009E F             NIBHEX  F
 1104 0009F 0             NIBHEX  0
 1105 000A0 F             NIBHEX  F
 1106 000A1 0             NIBHEX  0
 1107 000A2 F             NIBHEX  F
 1108 000A3 0             NIBHEX  0
 1109 000A4 F             NIBHEX  F
 1110 000A5 0             NIBHEX  0
 1111 000A6 F             NIBHEX  F
 1112 000A7 0             NIBHEX  0
 1113 000A8 F             NIBHEX  F
 1114 000A9 0             NIBHEX  0
 1115 000AA F             NIBHEX  F
 1116 000AB 0             NIBHEX  0
 1117 000AC 9             NIBHEX  9
 1118             * File  DemoInf.s       42
 1119 000AD 1             NIBHEX  1
 1120 000AE C             NIBHEX  C
 1121 000AF A             NIBHEX  A
 1122 000B0 0             NIBHEX  0
 1123 000B1 2             NIBHEX  2
 1124 000B2 8             NIBHEX  8
 1125 000B3 1             NIBHEX  1
 1126 000B4 0             NIBHEX  0
 1127 000B5 0             NIBHEX  0
 1128 000B6 7             NIBHEX  7
 1129 000B7 2             NIBHEX  2
 1130 000B8 3             NIBHEX  3
 1131 000B9 C             NIBHEX  C
 1132 000BA 2             NIBHEX  2
 1133 000BB 8             NIBHEX  8
 1134 000BC 0             NIBHEX  0
 1135 000BD 1             NIBHEX  1
 1136 000BE 8             NIBHEX  8
 1137 000BF 2             NIBHEX  2
 1138 000C0 0             NIBHEX  0
 1139 000C1 F             NIBHEX  F
 1140 000C2 0             NIBHEX  0
 1141 000C3 F             NIBHEX  F
 1142 000C4 0             NIBHEX  0
 1143 000C5 F             NIBHEX  F
 1144 000C6 0             NIBHEX  0
 1145 000C7 F             NIBHEX  F
 1146 000C8 0             NIBHEX  0
 1147 000C9 F             NIBHEX  F
 1148 000CA 0             NIBHEX  0
 1149 000CB F             NIBHEX  F
 1150 000CC 0             NIBHEX  0
 1151 000CD F             NIBHEX  F
 1152 000CE 0             NIBHEX  0
 1153 000CF F             NIBHEX  F
 1154 000D0 0             NIBHEX  0
 1155 000D1 F             NIBHEX  F
 1156 000D2 0             NIBHEX  0
 1157 000D3 9             NIBHEX  9
 1158             * File  DemoInf.s       43
 1159 000D4 1             NIBHEX  1
 1160 000D5 B             NIBHEX  B
 1161 000D6 7             NIBHEX  7
 1162 000D7 0             NIBHEX  0
 1163 000D8 2             NIBHEX  2
 1164 000D9 4             NIBHEX  4
 1165 000DA 2             NIBHEX  2
 1166 000DB 0             NIBHEX  0
 1167 000DC 0             NIBHEX  0
 1168 000DD 7             NIBHEX  7
 1169 000DE 2             NIBHEX  2
 1170 000DF 0             NIBHEX  0
 1171 000E0 0             NIBHEX  0
 1172 000E1 8             NIBHEX  8
 1173 000E2 0             NIBHEX  0
 1174 000E3 0             NIBHEX  0
 1175 000E4 8             NIBHEX  8
 1176 000E5 0             NIBHEX  0
 1177 000E6 1             NIBHEX  1
 1178 000E7 5             NIBHEX  5
 1179 000E8 0             NIBHEX  0
 1180 000E9 C             NIBHEX  C
 1181 000EA 8             NIBHEX  8
 1182 000EB F             NIBHEX  F
 1183 000EC 0             NIBHEX  0
 1184 000ED 1             NIBHEX  1
 1185 000EE 8             NIBHEX  8
 1186 000EF 0             NIBHEX  0
 1187 000F0 0             NIBHEX  0
 1188 000F1 8             NIBHEX  8
 1189 000F2 0             NIBHEX  0
 1190 000F3 1             NIBHEX  1
 1191 000F4 5             NIBHEX  5
 1192 000F5 0             NIBHEX  0
 1193 000F6 3             NIBHEX  3
 1194 000F7 8             NIBHEX  8
 1195 000F8 0             NIBHEX  0
 1196 000F9 0             NIBHEX  0
 1197 000FA C             NIBHEX  C
 1198 000FB 8             NIBHEX  8
 1199 000FC 6             NIBHEX  6
 1200 000FD 8             NIBHEX  8
 1201 000FE 3             NIBHEX  3
 1202 000FF 0             NIBHEX  0
 1203 00100 0             NIBHEX  0
 1204 00101 1             NIBHEX  1
 1205 00102 8             NIBHEX  8
 1206 00103 F             NIBHEX  F
 1207 00104 0             NIBHEX  0
 1208 00105 F             NIBHEX  F
 1209 00106 0             NIBHEX  0
 1210 00107 F             NIBHEX  F
 1211 00108 0             NIBHEX  0
 1212 00109 F             NIBHEX  F
 1213 0010A 0             NIBHEX  0
 1214 0010B F             NIBHEX  F
 1215 0010C 0             NIBHEX  0
 1216 0010D 3             NIBHEX  3
 1217             * File  DemoInf.s       44
 1218 0010E 1             NIBHEX  1
 1219 0010F C             NIBHEX  C
 1220 00110 C             NIBHEX  C
 1221 00111 0             NIBHEX  0
 1222 00112 2             NIBHEX  2
 1223 00113 4             NIBHEX  4
 1224 00114 2             NIBHEX  2
 1225 00115 0             NIBHEX  0
 1226 00116 0             NIBHEX  0
 1227 00117 8             NIBHEX  8
 1228 00118 4             NIBHEX  4
 1229 00119 3             NIBHEX  3
 1230 0011A C             NIBHEX  C
 1231 0011B 3             NIBHEX  3
 1232 0011C 8             NIBHEX  8
 1233 0011D 0             NIBHEX  0
 1234 0011E 1             NIBHEX  1
 1235 0011F B             NIBHEX  B
 1236 00120 3             NIBHEX  3
 1237 00121 0             NIBHEX  0
 1238 00122 F             NIBHEX  F
 1239 00123 0             NIBHEX  0
 1240 00124 F             NIBHEX  F
 1241 00125 0             NIBHEX  0
 1242 00126 F             NIBHEX  F
 1243 00127 0             NIBHEX  0
 1244 00128 F             NIBHEX  F
 1245 00129 0             NIBHEX  0
 1246 0012A F             NIBHEX  F
 1247 0012B 0             NIBHEX  0
 1248 0012C F             NIBHEX  F
 1249 0012D 0             NIBHEX  0
 1250 0012E F             NIBHEX  F
 1251 0012F 0             NIBHEX  0
 1252 00130 F             NIBHEX  F
 1253 00131 0             NIBHEX  0
 1254 00132 F             NIBHEX  F
 1255 00133 0             NIBHEX  0
 1256 00134 F             NIBHEX  F
 1257 00135 0             NIBHEX  0
 1258 00136 F             NIBHEX  F
 1259 00137 0             NIBHEX  0
 1260 00138 9             NIBHEX  9
 1261             * File  DemoInf.s       45
 1262             * File  DemoInf.s       46
 1263                     }
 1264 00139 00000         CON(5)  =DOFLASHP
 1265 0013E 00000         CON(7)  =^IsUncompressDataString
            00
 1266             * Uncompress the string
 1267             * File  DemoInf.s       47
 1268
 1269             * File  DemoInf.s       48
 1270             * Labels graphic, string on the stack
 1271             * File  DemoInf.s       49
 1272 00145 00000         CON(5)  (=DOBINT)
 1273 0014A 00000         CON(5)  (=InfDemoMesBase)+0
 1274 0014F 00000         CON(5)  (=DOBINT)
 1275 00154 40000         CON(5)  4
 1276             * File  DemoInf.s       50
 1277 00159 00000         CON(5)  =DOFLASHP
 1278 0015E 00000         CON(7)  =^IfSetAllLabelsMessages
            00
 1279             * File  DemoInf.s       51
 1280
 1281             * File  DemoInf.s       52
 1282             * Help strings, string on the stack
 1283             * File  DemoInf.s       53
 1284 00165 00000         CON(5)  (=DOBINT)
 1285 0016A 00000         CON(5)  (=InfDemoMesBase)+4
 1286 0016F 00000         CON(5)  (=DOBINT)
 1287 00174 40000         CON(5)  4
 1288             * File  DemoInf.s       54
 1289 00179 00000         CON(5)  =DOFLASHP
 1290 0017E 00000         CON(7)  =^IfSetAllHelpStrings
            00
 1291             * File  DemoInf.s       55
 1292
 1293             * File  DemoInf.s       56
 1294             * Title string, string on the stack
 1295             * File  DemoInf.s       57
 1296 00185 00000         CON(5)  (=DOBINT)
 1297 0018A 00000         CON(5)  (=InfDemoMesBase)+8
 1298             * File  DemoInf.s       58
 1299 0018F 00000         CON(5)  =DOFLASHP
 1300 00194 00000         CON(7)  =^IfSetTitle
            00
 1301             * File  DemoInf.s       59
 1302
 1303             * File  DemoInf.s       60
 1304             * Inform Box Message Handler
 1305             * File  DemoInf.s       61
 1306 0019B 00000         CON(5)  ='DROPFALSE
 1307             * Inform Box Message Handler
 1308             * File  DemoInf.s       62
 1309
 1310             * File  DemoInf.s       63
 1311             * Field Definitions
 1312             * File  DemoInf.s       64
 1313             * Field1 definition
 1314             * File  DemoInf.s       65
 1315 001A0 00000         CON(5)  ='DROPFALSE
 1316             * Field Message Handler
 1317             * File  DemoInf.s       66
 1318 001A5 00000         CON(5)  =ONE
 1319             * Field Type
 1320             * File  DemoInf.s       67
 1321 001AA 00000         CON(5)  =DOLIST
 1322 001AF 00000         CON(5)  =ZERO
 1323 001B4 00000         CON(5)  =SEMI
 1324             * Allowed Types
 1325             * File  DemoInf.s       68
 1326 001B9 00000         CON(5)  =BINT2
 1327             * Decomp object
 1328             * File  DemoInf.s       69
 1329 001BE 00000         CON(5)  =MINUSONE
 1330             * No choose list
 1331             * File  DemoInf.s       70
 1332 001C3 00000         CON(5)  =MINUSONE
 1333             * No choose decomp
 1334             * File  DemoInf.s       71
 1335 001C8 00000         CON(5)  =MINUSONE
 1336             * Reset Value - defaulted
 1337             * File  DemoInf.s       72
 1338 001CD 00000         CON(5)  =MINUSONE
 1339             * Initial Value - defaulted
 1340             * File  DemoInf.s       73
 1341
 1342             * File  DemoInf.s       74
 1343             * Field2 definition
 1344             * File  DemoInf.s       75
 1345 001D2 00000         CON(5)  ='DROPFALSE
 1346             * Field Message Handler
 1347             * File  DemoInf.s       76
 1348 001D7 00000         CON(5)  =ONE
 1349             * Field Type
 1350             * File  DemoInf.s       77
 1351 001DC 00000         CON(5)  =DOLIST
 1352 001E1 00000         CON(5)  =ZERO
 1353 001E6 00000         CON(5)  =SEMI
 1354             * Allowed Types
 1355             * File  DemoInf.s       78
 1356 001EB 00000         CON(5)  =BINT2
 1357             * Decomp object
 1358             * File  DemoInf.s       79
 1359 001F0 00000         CON(5)  =MINUSONE
 1360             * No choose list
 1361             * File  DemoInf.s       80
 1362 001F5 00000         CON(5)  =MINUSONE
 1363             * No choose decomp
 1364             * File  DemoInf.s       81
 1365 001FA 00000         CON(5)  =MINUSONE
 1366             * Reset Value - defaulted
 1367             * File  DemoInf.s       82
 1368 001FF 00000         CON(5)  =MINUSONE
 1369             * Initial Value - defaulted
 1370             * File  DemoInf.s       83
 1371
 1372             * File  DemoInf.s       84
 1373             * Field3 definition
 1374             * File  DemoInf.s       85
 1375 00204 00000         CON(5)  ='DROPFALSE
 1376             * Field Message Handler
 1377             * File  DemoInf.s       86
 1378 00209 00000         CON(5)  =THIRTYTWO
 1379             * Field Type
 1380             * File  DemoInf.s       87
 1381 0020E 00000         CON(5)  =MINUSONE
 1382             * Every type possible
 1383             * File  DemoInf.s       88
 1384 00213 00000         CON(5)  =BINT0
 1385             * Decomp object
 1386             * File  DemoInf.s       89
 1387 00218 00000         CON(5)  =MINUSONE
 1388             * No choose list
 1389             * File  DemoInf.s       90
 1390 0021D 00000         CON(5)  =MINUSONE
 1391             * No choose decomp
 1392             * File  DemoInf.s       91
 1393 00222 00000         CON(5)  =FALSE
 1394             * Reset Value - defaulted
 1395             * File  DemoInf.s       92
 1396 00227 00000         CON(5)  =FALSE
 1397             * Initial Value - defaulted
 1398             * File  DemoInf.s       93
 1399
 1400             * File  DemoInf.s       94
 1401             * Field4 definition
 1402             * File  DemoInf.s       95
 1403 0022C 00000         CON(5)  ='DROPFALSE
 1404             * Field Message Handler
 1405             * File  DemoInf.s       96
 1406 00231 00000         CON(5)  =TWELVE
 1407             * Field Type
 1408             * File  DemoInf.s       97
 1409 00236 00000         CON(5)  =MINUSONE
 1410             * Every type possible
 1411             * File  DemoInf.s       98
 1412 0023B 00000         CON(5)  =BINT18
 1413             * Decomp object
 1414             * File  DemoInf.s       99
 1415 00240 00000         CON(5)  =DOLIST
 1416             * Choose list
 1417             * File  DemoInf.s       100
 1418 00245 00000         CON(5)  =DOLIST
 1419 0024A 00000         CON(5)  (=DOBINT)
 1420 0024F 00000         CON(5)  (=InfDemoMesBase)+9
 1421 00254 00000         CON(5)  =DOREAL
 1422 00259 200           NIBHEX  200
 1423 0025C 00000         NIBHEX  000000000101
            00001
            01
 1424 00268 0             NIBHEX  0
 1425 00269 00000         CON(5)  =SEMI
 1426             * File  DemoInf.s       101
 1427 0026E 00000         CON(5)  =DOLIST
 1428 00273 00000         CON(5)  (=DOBINT)
 1429 00278 00000         CON(5)  (=InfDemoMesBase)+10
 1430 0027D 00000         CON(5)  =DOREAL
 1431 00282 200           NIBHEX  200
 1432 00285 00000         NIBHEX  000000000201
            00002
            01
 1433 00291 0             NIBHEX  0
 1434 00292 00000         CON(5)  =SEMI
 1435             * File  DemoInf.s       102
 1436 00297 00000         CON(5)  =DOLIST
 1437 0029C 00000         CON(5)  (=DOBINT)
 1438 002A1 00000         CON(5)  (=InfDemoMesBase)+11
 1439 002A6 00000         CON(5)  =DOREAL
 1440 002AB 200           NIBHEX  200
 1441 002AE 00000         NIBHEX  000000000301
            00003
            01
 1442 002BA 0             NIBHEX  0
 1443 002BB 00000         CON(5)  =SEMI
 1444             * File  DemoInf.s       103
 1445 002C0 00000         CON(5)  =SEMI
 1446             * File  DemoInf.s       104
 1447
 1448             * File  DemoInf.s       105
 1449 002C5 00000         CON(5)  =SEVENTEEN
 1450             * Choose decomp
 1451             * File  DemoInf.s       106
 1452 002CA 00000         CON(5)  =DOLIST
 1453 002CF 00000         CON(5)  (=DOBINT)
 1454 002D4 00000         CON(5)  (=InfDemoMesBase)+9
 1455 002D9 00000         CON(5)  =DOREAL
 1456 002DE 200           NIBHEX  200
 1457 002E1 00000         NIBHEX  000000000101
            00001
            01
 1458 002ED 0             NIBHEX  0
 1459 002EE 00000         CON(5)  =SEMI
 1460             * Reset Value
 1461             * File  DemoInf.s       107
 1462 002F3 00000         CON(5)  =DOLIST
 1463 002F8 00000         CON(5)  (=DOBINT)
 1464 002FD 00000         CON(5)  (=InfDemoMesBase)+10
 1465 00302 00000         CON(5)  =DOREAL
 1466 00307 200           NIBHEX  200
 1467 0030A 00000         NIBHEX  000000000201
            00002
            01
 1468 00316 0             NIBHEX  0
 1469 00317 00000         CON(5)  =SEMI
 1470             * Initial Value
 1471             * File  DemoInf.s       108
 1472
 1473             * File  DemoInf.s       109
 1474             * group the fields definitions in a list
 1475             * File  DemoInf.s       110
 1476 0031C 00000         CON(5)  (=DOBINT)
 1477 00321 02000         CON(5)  (8)*4
 1478             * File  DemoInf.s       111
 1479 00326 00000         CON(5)  ={}N
 1480             * File  DemoInf.s       112
 1481
 1482             * File  DemoInf.s       113
 1483 0032B 00000         CON(5)  =DOFLASHP
 1484 00330 00000         CON(7)  =^IfMain2
            00
 1485             * File  DemoInf.s       114
 1486
 1487             * File  DemoInf.s       115
 1488 00337 00000         CON(5)  =SEMI
 1489             * end of form procedure
 1490             * File  DemoInf.s       116
 1491
 1492             * File  DemoInf.s       117
 1493             * File  DemoInf.s       118
 1494             * % Count for the Message Table
 1495             * File  DemoInf.s       119
 1496             * DCCP 12 InfDemoMesBase
 1497             * File  DemoInf.s       120
 1498             *
 1499             * File  DemoInf.s       121
 1500
 1501             * File  DemoInf.s       122
 1502             * Messages automatically copied by Inform Generator
 1503             * File  DemoInf.s       123
 1504             * Messages added to the Library's Message Table
 1505             *  "First No"
 1506             *  "Second No"
 1507             *  "Check Me"
 1508             *  "Pick"
 1509             *  "Enter first number for stack"
 1510             *  "Enter a second number for stack"
 1511             *  "Check and uncheck this field"
 1512             *  "Pick an item from list"
 1513             *  "Inform Box Demonstration"
 1514             *  "A entry"
 1515             *  "B entry"
 1516             *  "C entry"
 1517             * File  DemoInf.s       136
 1518
 1519             * File  DemoInf.s       137
 1520             * Internal Datas: Do not touch!
 1521             * File  DemoInf.s       138
 1522             * l00000000020C001C0001000000180049006E0066006F0072006D00200042006F0078002000440065006D006F006E0073007
 1523             * File  DemoInf.s       139
 1524             * S40072006100740069006F006E
 1525             * File  DemoInf.s       140
 1526             * 0002000D000A
 1527             * File  DemoInf.s       141
 1528             * 0002000D000A
 1529             * File  DemoInf.s       142
 1530             * 0002000D000A
 1531             * File  DemoInf.s       143
 1532             * f0028009C00A0002000010006004600690065006C006400310006004600690065006C006400310002000D000A00000001003
 1533             * File  DemoInf.s       144
 1534             * S0000500420049004E005400320002000D000A0003004F004E004500000000001C0045006E007400650072002000660069007
 1535             * File  DemoInf.s       145
 1536             * S2007300740020006E0075006D00620065007200200066006F007200200073007400610063006B
 1537             * File  DemoInf.s       146
 1538             * f0060009C00A0002000010006004600690065006C006400320006004600690065006C006400320002000D000A00000001003
 1539             * File  DemoInf.s       147
 1540             * S0000500420049004E005400320002000D000A0003004F004E004500000000001F0045006E007400650072002000610020007
 1541             * File  DemoInf.s       148
 1542             * S300650063006F006E00640020006E0075006D00620065007200200066006F007200200073007400610063006B
 1543             * File  DemoInf.s       149
 1544             * f0090009C0018002000010006004600690065006C006400330006004600690065006C006400330002000D000A00030000000
 1545             * File  DemoInf.s       150
 1546             * S500420049004E005400300002000D000A0003004F004E004500000000001C0043006800650063006B00200061006E0064002
 1547             * File  DemoInf.s       151
 1548             * S00075006E0063006800650063006B002000740068006900730020006600690065006C0064
 1549             * File  DemoInf.s       152
 1550             * f0090012000EC002000010006004600690065006C006400340006004600690065006C006400340002000D000A00020000000
 1551             * File  DemoInf.s       153
 1552             * S600420049004E0054003100380048007B000D000A007B00200022004100200065006E0074007200790022002000200025002
 1553             * File  DemoInf.s       154
 1554             * S00031003000310020007D000D000A007B00200022004200200065006E0074007200790022002000200025002000310030003
 1555             * File  DemoInf.s       155
 1556             * S20020007D000D000A007B00200022004300200065006E007400720079002200200020002500200031003000330020007D000
 1557             * File  DemoInf.s       156
 1558             * SD000A007D000D000A00090053004500560045004E005400450045004E0014007B00200022004100200065006E00740072007
 1559             * File  DemoInf.s       157
 1560             * S9002200200020002500200031003000310020007D0014007B00200022004200200065006E007400720079002200200020002
 1561             * File  DemoInf.s       158
 1562             * S500200031003000320020007D0016005000690063006B00200061006E0020006900740065006D002000660072006F006D002
 1563             * File  DemoInf.s       159
 1564             * S0006C006900730074
 1565             * File  DemoInf.s       160
 1566             * l002C00040084001800010006004C006100620065006C00310008004600690072007300740020004E006F
 1567             * File  DemoInf.s       161
 1568             * l006400040090001800010006004C006100620065006C00320009005300650063006F006E00640020004E006F
 1569             * File  DemoInf.s       162
 1570             * l009400040084001800010006004C006100620065006C003300080043006800650063006B0020004D0065
 1571             * File  DemoInf.s       163
 1572             * l009400D80040001800010006004C006100620065006C00340004005000690063006B
 1573             * File  DemoInf.s       164
 1574             * 0002000D000A
 1575             * File  DemoInf.s       165
 1576             * 0002000D000A
 1577             * File  DemoInf.s       166
 1578             * 000E00570069006C006C00690061006D0020004700720061007600650073
 1579             * File  DemoInf.s       167
 1580             * 00070049006E006600440065006D006F
 1581             * File  DemoInf.s       168
 1582             * 00040046004600460046
 1583             * File  DemoInf.s       169
 1584             *
Saturn Assembler                                       Sat Dec 07 09:06:40 2002
V3.0.8 (11/17/2002)   Symbol Table                       DemoInf.a      Page    2

 'DROPFALSE                        Ext                   -  1306  1315  1345
                                        1375  1403
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
 BINT0                             Ext                   -  1384
 BINT18                            Ext                   -  1412
 BINT2                             Ext                   -  1326  1356
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
 DOBINT                            Ext                   -  1272  1274  1284
                                        1286  1296  1419  1428  1437  1453  1463
                                        1476
 DOCOL                             Ext                   -   949
 DOCSTR                            Ext                   -   954
 DOFLASHP                          Ext                   -  1264  1277  1289
                                        1299  1483
 DOLIST                            Ext                   -  1321  1351  1415
                                        1418  1427  1436  1452  1462
 DOREAL                            Ext                   -  1421  1430  1439
                                        1455  1465
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
 ErableHeaderBit                   Abs       0 #00000000 -   798
 ErableHeaderFl                    Abs      93 #0000005D -   796   797   798
 ErableHeaderNib                   Abs      23 #00000017 -   797
 ErrorBeepBit                      Abs       3 #00000003 -   216
 ErrorBeepFl                       Abs      56 #00000038 -   160   215   216
 ErrorBeepNib                      Abs      13 #0000000D -   215
 ExactModeBit                      Abs       0 #00000000 -   823
 ExactModeFl                       Abs     105 #00000069 -   821   822   823
 ExactModeNib                      Abs      26 #0000001A -   822
 FALSE                             Ext                   -  1393  1396
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
=InfDemo                           Rel       0 #00000000 -   947
 InfDemoMesBase                    Ext                   -  1273  1285  1297
                                        1420  1429  1438  1454  1464
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
 MINUSONE                          Ext                   -  1329  1332  1335
                                        1338  1359  1362  1365  1368  1381  1387
                                        1390  1409
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
 ONE                               Ext                   -  1318  1348
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
=RomId                             Abs     513 #00000201 -   924
 SEMI                              Ext                   -  1323  1353  1425
                                        1434  1443  1445  1459  1469  1488
 SEVENTEEN                         Ext                   -  1449
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
 THIRTYTWO                         Ext                   -  1378
 TWELVE                            Ext                   -  1406
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
 ZERO                              Ext                   -  1322  1352
 ^IfMain2                          Ext                   -  1484
 ^IfSetAllHelpStrings              Ext                   -  1290
 ^IfSetAllLabelsMessages           Ext                   -  1278
 ^IfSetTitle                       Ext                   -  1300
 ^IsUncompressDataString           Ext                   -  1265
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
 lBlcB20                           Rel     313 #00000139 -  1263
 lBloB10                           Rel      15 #0000000F -   955
 lBloB10s                          Rel     313 #00000139 -  1263  1263   955
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
 {}N                               Ext                   -  1479
Saturn Assembler                                       Sat Dec 07 09:06:40 2002
V3.0.8 (11/17/2002)   Statistics                         DemoInf.a      Page    3

Input Parameters

  Source file name is DemoInf.a

  Listing file name is DemoInf.l

  Object file name is DemoInf.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
