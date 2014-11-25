Saturn Assembler                                       Sat Dec 07 11:22:24 2002
V3.0.8 (11/17/2002)                                      Inf.a          Page    1

    1             * File  Inf.s   1
    2             * Inform Box File
    3             * Do not modify this line
    4             * File  Inf.s   2
    5             * Inform Box Inform Box Demonstration Source Code
    6             * File  Inf.s   3
    7             * Generated on 11:22:24 AM 12/7/2002 by HP InformBox Generator
    8             * File  Inf.s   4
    9             * Inform Box Designer is William Graves
   10             * File  Inf.s   5
   11
   12             * File  Inf.s   6
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
  834             *|| Resuming file Inf.s at line 6
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
  921             *|| Resuming file Inf.s at line 7
  922             *|| Reading from C:\Debug4x\Examples\Inform\Inform.h
  923
  924             =RomId  EQU     #202
  925             * ROMID set to 202
  926
  927
  928
  929
  930             *|| Resuming file Inf.s at line 8
  931
  932             * Field and Label Definitions
  933             * File  Inf.s   11
  934             * File  Inf.s   12
  935             * File  Inf.s   13
  936             * File  Inf.s   14
  937             * File  Inf.s   15
  938             * File  Inf.s   16
  939             * File  Inf.s   17
  940             * File  Inf.s   18
  941             * File  Inf.s   19
  942
  943             * File  Inf.s   20
  944             * Local Definitions
  945             * File  Inf.s   21
  946
  947             * File  Inf.s   22
  948 00000       =InfDemo
  949             * File  Inf.s   23
  950 00000 00000         CON(5)  =DOCOL
  951             * File  Inf.s   24
  952             * Internal Graphical Datas
  953             * File  Inf.s   25
  954             * File  Inf.s   26
  955 00005 00000         CON(5)  =DOCSTR
  956 0000A 03100         SKIP5{
  957             * File  Inf.s   27
  958 0000F BA400         CON(5)  1195
  959             * File  Inf.s   28
  960 00014 000           CON(3)  0
  961             * File  Inf.s   29
  962 00017 00            CON(2)  0
  963             * File  Inf.s   30
  964 00019 40            CON(2)  4
  965             * File  Inf.s   31
  966 0001B 40            CON(2)  4
  967             * File  Inf.s   32
  968 0001D 2F000         CON(5)  242
  969             * File  Inf.s   33
  970
  971             * File  Inf.s   34
  972             * File  Inf.s   35
  973 00022 1             NIBHEX  1
  974 00023 E             NIBHEX  E
  975 00024 3             NIBHEX  3
  976 00025 0             NIBHEX  0
  977 00026 2             NIBHEX  2
  978 00027 B             NIBHEX  B
  979 00028 0             NIBHEX  0
  980 00029 1             NIBHEX  1
  981 0002A 1             NIBHEX  1
  982 0002B 0             NIBHEX  0
  983 0002C 0             NIBHEX  0
  984 0002D 4             NIBHEX  4
  985 0002E 2             NIBHEX  2
  986 0002F 5             NIBHEX  5
  987 00030 0             NIBHEX  0
  988 00031 2             NIBHEX  2
  989 00032 2             NIBHEX  2
  990 00033 0             NIBHEX  0
  991 00034 F             NIBHEX  F
  992 00035 0             NIBHEX  0
  993 00036 F             NIBHEX  F
  994 00037 0             NIBHEX  0
  995 00038 C             NIBHEX  C
  996             * File  Inf.s   36
  997 00039 1             NIBHEX  1
  998 0003A 3             NIBHEX  3
  999 0003B 4             NIBHEX  4
 1000 0003C 0             NIBHEX  0
 1001 0003D 2             NIBHEX  2
 1002 0003E 9             NIBHEX  9
 1003 0003F 1             NIBHEX  1
 1004 00040 0             NIBHEX  0
 1005 00041 0             NIBHEX  0
 1006 00042 1             NIBHEX  1
 1007 00043 0             NIBHEX  0
 1008 00044 0             NIBHEX  0
 1009 00045 8             NIBHEX  8
 1010 00046 2             NIBHEX  2
 1011 00047 5             NIBHEX  5
 1012 00048 0             NIBHEX  0
 1013 00049 1             NIBHEX  1
 1014 0004A 4             NIBHEX  4
 1015 0004B 2             NIBHEX  2
 1016 0004C 0             NIBHEX  0
 1017 0004D F             NIBHEX  F
 1018 0004E 0             NIBHEX  0
 1019 0004F F             NIBHEX  F
 1020 00050 0             NIBHEX  0
 1021 00051 F             NIBHEX  F
 1022 00052 0             NIBHEX  0
 1023 00053 1             NIBHEX  1
 1024             * File  Inf.s   37
 1025 00054 1             NIBHEX  1
 1026 00055 E             NIBHEX  E
 1027 00056 3             NIBHEX  3
 1028 00057 0             NIBHEX  0
 1029 00058 2             NIBHEX  2
 1030 00059 5             NIBHEX  5
 1031 0005A 2             NIBHEX  2
 1032 0005B 0             NIBHEX  0
 1033 0005C 0             NIBHEX  0
 1034 0005D 1             NIBHEX  1
 1035 0005E 0             NIBHEX  0
 1036 0005F 0             NIBHEX  0
 1037 00060 4             NIBHEX  4
 1038 00061 2             NIBHEX  2
 1039 00062 5             NIBHEX  5
 1040 00063 0             NIBHEX  0
 1041 00064 2             NIBHEX  2
 1042 00065 2             NIBHEX  2
 1043 00066 0             NIBHEX  0
 1044 00067 F             NIBHEX  F
 1045 00068 0             NIBHEX  0
 1046 00069 F             NIBHEX  F
 1047 0006A 0             NIBHEX  0
 1048 0006B C             NIBHEX  C
 1049             * File  Inf.s   38
 1050 0006C 1             NIBHEX  1
 1051 0006D A             NIBHEX  A
 1052 0006E 2             NIBHEX  2
 1053 0006F 0             NIBHEX  0
 1054 00070 2             NIBHEX  2
 1055 00071 5             NIBHEX  5
 1056 00072 2             NIBHEX  2
 1057 00073 0             NIBHEX  0
 1058 00074 0             NIBHEX  0
 1059 00075 6             NIBHEX  6
 1060 00076 3             NIBHEX  3
 1061 00077 4             NIBHEX  4
 1062 00078 1             NIBHEX  1
 1063 00079 5             NIBHEX  5
 1064 0007A 0             NIBHEX  0
 1065 0007B 2             NIBHEX  2
 1066 0007C 1             NIBHEX  1
 1067 0007D 0             NIBHEX  0
 1068 0007E F             NIBHEX  F
 1069 0007F 0             NIBHEX  0
 1070 00080 8             NIBHEX  8
 1071             * File  Inf.s   39
 1072
 1073             * File  Inf.s   40
 1074             * File  Inf.s   41
 1075 00081 0             NIBHEX  0
 1076 00082 0             NIBHEX  0
 1077 00083 7             NIBHEX  7
 1078 00084 B             NIBHEX  B
 1079 00085 0             NIBHEX  0
 1080 00086 2             NIBHEX  2
 1081 00087 A             NIBHEX  A
 1082 00088 0             NIBHEX  0
 1083 00089 1             NIBHEX  1
 1084 0008A 7             NIBHEX  7
 1085 0008B 2             NIBHEX  2
 1086 0008C 3             NIBHEX  3
 1087 0008D C             NIBHEX  C
 1088 0008E 2             NIBHEX  2
 1089 0008F 9             NIBHEX  9
 1090 00090 0             NIBHEX  0
 1091 00091 1             NIBHEX  1
 1092 00092 8             NIBHEX  8
 1093 00093 2             NIBHEX  2
 1094 00094 0             NIBHEX  0
 1095 00095 F             NIBHEX  F
 1096 00096 0             NIBHEX  0
 1097 00097 F             NIBHEX  F
 1098 00098 0             NIBHEX  0
 1099 00099 F             NIBHEX  F
 1100 0009A 0             NIBHEX  0
 1101 0009B F             NIBHEX  F
 1102 0009C 0             NIBHEX  0
 1103 0009D F             NIBHEX  F
 1104 0009E 0             NIBHEX  0
 1105 0009F F             NIBHEX  F
 1106 000A0 0             NIBHEX  0
 1107 000A1 F             NIBHEX  F
 1108 000A2 0             NIBHEX  0
 1109 000A3 F             NIBHEX  F
 1110 000A4 0             NIBHEX  0
 1111 000A5 F             NIBHEX  F
 1112 000A6 0             NIBHEX  0
 1113 000A7 F             NIBHEX  F
 1114 000A8 0             NIBHEX  0
 1115 000A9 4             NIBHEX  4
 1116             * File  Inf.s   42
 1117 000AA 1             NIBHEX  1
 1118 000AB 7             NIBHEX  7
 1119 000AC B             NIBHEX  B
 1120 000AD 0             NIBHEX  0
 1121 000AE 2             NIBHEX  2
 1122 000AF 8             NIBHEX  8
 1123 000B0 1             NIBHEX  1
 1124 000B1 0             NIBHEX  0
 1125 000B2 0             NIBHEX  0
 1126 000B3 7             NIBHEX  7
 1127 000B4 2             NIBHEX  2
 1128 000B5 3             NIBHEX  3
 1129 000B6 C             NIBHEX  C
 1130 000B7 2             NIBHEX  2
 1131 000B8 9             NIBHEX  9
 1132 000B9 0             NIBHEX  0
 1133 000BA 1             NIBHEX  1
 1134 000BB 8             NIBHEX  8
 1135 000BC 2             NIBHEX  2
 1136 000BD 0             NIBHEX  0
 1137 000BE F             NIBHEX  F
 1138 000BF 0             NIBHEX  0
 1139 000C0 F             NIBHEX  F
 1140 000C1 0             NIBHEX  0
 1141 000C2 F             NIBHEX  F
 1142 000C3 0             NIBHEX  0
 1143 000C4 F             NIBHEX  F
 1144 000C5 0             NIBHEX  0
 1145 000C6 F             NIBHEX  F
 1146 000C7 0             NIBHEX  0
 1147 000C8 F             NIBHEX  F
 1148 000C9 0             NIBHEX  0
 1149 000CA F             NIBHEX  F
 1150 000CB 0             NIBHEX  0
 1151 000CC F             NIBHEX  F
 1152 000CD 0             NIBHEX  0
 1153 000CE F             NIBHEX  F
 1154 000CF 0             NIBHEX  0
 1155 000D0 F             NIBHEX  F
 1156 000D1 0             NIBHEX  0
 1157 000D2 4             NIBHEX  4
 1158             * File  Inf.s   43
 1159 000D3 1             NIBHEX  1
 1160 000D4 B             NIBHEX  B
 1161 000D5 7             NIBHEX  7
 1162 000D6 0             NIBHEX  0
 1163 000D7 2             NIBHEX  2
 1164 000D8 4             NIBHEX  4
 1165 000D9 2             NIBHEX  2
 1166 000DA 0             NIBHEX  0
 1167 000DB 0             NIBHEX  0
 1168 000DC 7             NIBHEX  7
 1169 000DD 2             NIBHEX  2
 1170 000DE 0             NIBHEX  0
 1171 000DF 0             NIBHEX  0
 1172 000E0 8             NIBHEX  8
 1173 000E1 0             NIBHEX  0
 1174 000E2 0             NIBHEX  0
 1175 000E3 8             NIBHEX  8
 1176 000E4 0             NIBHEX  0
 1177 000E5 1             NIBHEX  1
 1178 000E6 5             NIBHEX  5
 1179 000E7 0             NIBHEX  0
 1180 000E8 C             NIBHEX  C
 1181 000E9 8             NIBHEX  8
 1182 000EA F             NIBHEX  F
 1183 000EB 0             NIBHEX  0
 1184 000EC 1             NIBHEX  1
 1185 000ED 8             NIBHEX  8
 1186 000EE 0             NIBHEX  0
 1187 000EF 0             NIBHEX  0
 1188 000F0 8             NIBHEX  8
 1189 000F1 0             NIBHEX  0
 1190 000F2 1             NIBHEX  1
 1191 000F3 5             NIBHEX  5
 1192 000F4 0             NIBHEX  0
 1193 000F5 3             NIBHEX  3
 1194 000F6 8             NIBHEX  8
 1195 000F7 0             NIBHEX  0
 1196 000F8 0             NIBHEX  0
 1197 000F9 C             NIBHEX  C
 1198 000FA 8             NIBHEX  8
 1199 000FB 6             NIBHEX  6
 1200 000FC 8             NIBHEX  8
 1201 000FD 3             NIBHEX  3
 1202 000FE 0             NIBHEX  0
 1203 000FF 0             NIBHEX  0
 1204 00100 1             NIBHEX  1
 1205 00101 8             NIBHEX  8
 1206 00102 F             NIBHEX  F
 1207 00103 0             NIBHEX  0
 1208 00104 F             NIBHEX  F
 1209 00105 0             NIBHEX  0
 1210 00106 F             NIBHEX  F
 1211 00107 0             NIBHEX  0
 1212 00108 F             NIBHEX  F
 1213 00109 0             NIBHEX  0
 1214 0010A F             NIBHEX  F
 1215 0010B 0             NIBHEX  0
 1216 0010C 3             NIBHEX  3
 1217             * File  Inf.s   44
 1218 0010D 1             NIBHEX  1
 1219 0010E B             NIBHEX  B
 1220 0010F D             NIBHEX  D
 1221 00110 0             NIBHEX  0
 1222 00111 2             NIBHEX  2
 1223 00112 4             NIBHEX  4
 1224 00113 2             NIBHEX  2
 1225 00114 0             NIBHEX  0
 1226 00115 0             NIBHEX  0
 1227 00116 8             NIBHEX  8
 1228 00117 4             NIBHEX  4
 1229 00118 3             NIBHEX  3
 1230 00119 C             NIBHEX  C
 1231 0011A 3             NIBHEX  3
 1232 0011B 9             NIBHEX  9
 1233 0011C 0             NIBHEX  0
 1234 0011D 1             NIBHEX  1
 1235 0011E B             NIBHEX  B
 1236 0011F 3             NIBHEX  3
 1237 00120 0             NIBHEX  0
 1238 00121 F             NIBHEX  F
 1239 00122 0             NIBHEX  0
 1240 00123 F             NIBHEX  F
 1241 00124 0             NIBHEX  0
 1242 00125 F             NIBHEX  F
 1243 00126 0             NIBHEX  0
 1244 00127 F             NIBHEX  F
 1245 00128 0             NIBHEX  0
 1246 00129 F             NIBHEX  F
 1247 0012A 0             NIBHEX  0
 1248 0012B F             NIBHEX  F
 1249 0012C 0             NIBHEX  0
 1250 0012D F             NIBHEX  F
 1251 0012E 0             NIBHEX  0
 1252 0012F F             NIBHEX  F
 1253 00130 0             NIBHEX  0
 1254 00131 F             NIBHEX  F
 1255 00132 0             NIBHEX  0
 1256 00133 F             NIBHEX  F
 1257 00134 0             NIBHEX  0
 1258 00135 F             NIBHEX  F
 1259 00136 0             NIBHEX  0
 1260 00137 F             NIBHEX  F
 1261 00138 0             NIBHEX  0
 1262 00139 8             NIBHEX  8
 1263             * File  Inf.s   45
 1264             * File  Inf.s   46
 1265                     }
 1266 0013A 00000         CON(5)  =DOFLASHP
 1267 0013F 00000         CON(7)  =^IsUncompressDataString
            00
 1268             * Uncompress the string
 1269             * File  Inf.s   47
 1270
 1271             * File  Inf.s   48
 1272             * Labels graphic, string on the stack
 1273             * File  Inf.s   49
 1274 00146 00000         CON(5)  (=DOBINT)
 1275 0014B 00000         CON(5)  (=InfDemoMesBase)+0
 1276 00150 00000         CON(5)  (=DOBINT)
 1277 00155 40000         CON(5)  4
 1278             * File  Inf.s   50
 1279 0015A 00000         CON(5)  =DOFLASHP
 1280 0015F 00000         CON(7)  =^IfSetAllLabelsMessages
            00
 1281             * File  Inf.s   51
 1282
 1283             * File  Inf.s   52
 1284             * Help strings, string on the stack
 1285             * File  Inf.s   53
 1286 00166 00000         CON(5)  (=DOBINT)
 1287 0016B 00000         CON(5)  (=InfDemoMesBase)+4
 1288 00170 00000         CON(5)  (=DOBINT)
 1289 00175 40000         CON(5)  4
 1290             * File  Inf.s   54
 1291 0017A 00000         CON(5)  =DOFLASHP
 1292 0017F 00000         CON(7)  =^IfSetAllHelpStrings
            00
 1293             * File  Inf.s   55
 1294
 1295             * File  Inf.s   56
 1296             * Title string, string on the stack
 1297             * File  Inf.s   57
 1298 00186 00000         CON(5)  (=DOBINT)
 1299 0018B 00000         CON(5)  (=InfDemoMesBase)+8
 1300             * File  Inf.s   58
 1301 00190 00000         CON(5)  =DOFLASHP
 1302 00195 00000         CON(7)  =^IfSetTitle
            00
 1303             * File  Inf.s   59
 1304
 1305             * File  Inf.s   60
 1306             * Inform Box Message Handler
 1307             * File  Inf.s   61
 1308 0019C 00000         CON(5)  ='DROPFALSE
 1309             * Inform Box Message Handler
 1310             * File  Inf.s   62
 1311
 1312             * File  Inf.s   63
 1313             * Field Definitions
 1314             * File  Inf.s   64
 1315             * Field1 definition
 1316             * File  Inf.s   65
 1317 001A1 00000         CON(5)  ='DROPFALSE
 1318             * Field Message Handler
 1319             * File  Inf.s   66
 1320 001A6 00000         CON(5)  =ONE
 1321             * Field Type
 1322             * File  Inf.s   67
 1323 001AB 00000         CON(5)  =DOLIST
 1324 001B0 00000         CON(5)  =ZERO
 1325 001B5 00000         CON(5)  =SEMI
 1326             * Allowed Types
 1327             * File  Inf.s   68
 1328 001BA 00000         CON(5)  =BINT2
 1329             * Decomp object
 1330             * File  Inf.s   69
 1331 001BF 00000         CON(5)  =MINUSONE
 1332             * No choose list
 1333             * File  Inf.s   70
 1334 001C4 00000         CON(5)  =MINUSONE
 1335             * No choose decomp
 1336             * File  Inf.s   71
 1337 001C9 00000         CON(5)  =MINUSONE
 1338             * Reset Value - defaulted
 1339             * File  Inf.s   72
 1340 001CE 00000         CON(5)  =MINUSONE
 1341             * Initial Value - defaulted
 1342             * File  Inf.s   73
 1343
 1344             * File  Inf.s   74
 1345             * Field2 definition
 1346             * File  Inf.s   75
 1347 001D3 00000         CON(5)  ='DROPFALSE
 1348             * Field Message Handler
 1349             * File  Inf.s   76
 1350 001D8 00000         CON(5)  =ONE
 1351             * Field Type
 1352             * File  Inf.s   77
 1353 001DD 00000         CON(5)  =DOLIST
 1354 001E2 00000         CON(5)  =ZERO
 1355 001E7 00000         CON(5)  =SEMI
 1356             * Allowed Types
 1357             * File  Inf.s   78
 1358 001EC 00000         CON(5)  =BINT2
 1359             * Decomp object
 1360             * File  Inf.s   79
 1361 001F1 00000         CON(5)  =MINUSONE
 1362             * No choose list
 1363             * File  Inf.s   80
 1364 001F6 00000         CON(5)  =MINUSONE
 1365             * No choose decomp
 1366             * File  Inf.s   81
 1367 001FB 00000         CON(5)  =MINUSONE
 1368             * Reset Value - defaulted
 1369             * File  Inf.s   82
 1370 00200 00000         CON(5)  =MINUSONE
 1371             * Initial Value - defaulted
 1372             * File  Inf.s   83
 1373
 1374             * File  Inf.s   84
 1375             * Field3 definition
 1376             * File  Inf.s   85
 1377 00205 00000         CON(5)  ='DROPFALSE
 1378             * Field Message Handler
 1379             * File  Inf.s   86
 1380 0020A 00000         CON(5)  =THIRTYTWO
 1381             * Field Type
 1382             * File  Inf.s   87
 1383 0020F 00000         CON(5)  =MINUSONE
 1384             * Every type possible
 1385             * File  Inf.s   88
 1386 00214 00000         CON(5)  =BINT0
 1387             * Decomp object
 1388             * File  Inf.s   89
 1389 00219 00000         CON(5)  =MINUSONE
 1390             * No choose list
 1391             * File  Inf.s   90
 1392 0021E 00000         CON(5)  =MINUSONE
 1393             * No choose decomp
 1394             * File  Inf.s   91
 1395 00223 00000         CON(5)  =FALSE
 1396             * Reset Value - defaulted
 1397             * File  Inf.s   92
 1398 00228 00000         CON(5)  =FALSE
 1399             * Initial Value - defaulted
 1400             * File  Inf.s   93
 1401
 1402             * File  Inf.s   94
 1403             * Field4 definition
 1404             * File  Inf.s   95
 1405 0022D 00000         CON(5)  ='DROPFALSE
 1406             * Field Message Handler
 1407             * File  Inf.s   96
 1408 00232 00000         CON(5)  =TWELVE
 1409             * Field Type
 1410             * File  Inf.s   97
 1411 00237 00000         CON(5)  =MINUSONE
 1412             * Every type possible
 1413             * File  Inf.s   98
 1414 0023C 00000         CON(5)  =BINT18
 1415             * Decomp object
 1416             * File  Inf.s   99
 1417 00241 00000         CON(5)  =DOLIST
 1418             * Choose list
 1419             * File  Inf.s   100
 1420 00246 00000         CON(5)  =DOLIST
 1421 0024B 00000         CON(5)  (=DOBINT)
 1422 00250 00000         CON(5)  (=InfDemoMesBase)+9
 1423 00255 00000         CON(5)  =DOREAL
 1424 0025A 200           NIBHEX  200
 1425 0025D 00000         NIBHEX  000000000101
            00001
            01
 1426 00269 0             NIBHEX  0
 1427 0026A 00000         CON(5)  =SEMI
 1428             * File  Inf.s   101
 1429 0026F 00000         CON(5)  =DOLIST
 1430 00274 00000         CON(5)  (=DOBINT)
 1431 00279 00000         CON(5)  (=InfDemoMesBase)+10
 1432 0027E 00000         CON(5)  =DOREAL
 1433 00283 200           NIBHEX  200
 1434 00286 00000         NIBHEX  000000000201
            00002
            01
 1435 00292 0             NIBHEX  0
 1436 00293 00000         CON(5)  =SEMI
 1437             * File  Inf.s   102
 1438 00298 00000         CON(5)  =DOLIST
 1439 0029D 00000         CON(5)  (=DOBINT)
 1440 002A2 00000         CON(5)  (=InfDemoMesBase)+11
 1441 002A7 00000         CON(5)  =DOREAL
 1442 002AC 200           NIBHEX  200
 1443 002AF 00000         NIBHEX  000000000301
            00003
            01
 1444 002BB 0             NIBHEX  0
 1445 002BC 00000         CON(5)  =SEMI
 1446             * File  Inf.s   103
 1447 002C1 00000         CON(5)  =SEMI
 1448             * File  Inf.s   104
 1449
 1450             * File  Inf.s   105
 1451 002C6 00000         CON(5)  =SEVENTEEN
 1452             * Choose decomp
 1453             * File  Inf.s   106
 1454 002CB 00000         CON(5)  =DOLIST
 1455 002D0 00000         CON(5)  (=DOBINT)
 1456 002D5 00000         CON(5)  (=InfDemoMesBase)+9
 1457 002DA 00000         CON(5)  =DOREAL
 1458 002DF 200           NIBHEX  200
 1459 002E2 00000         NIBHEX  000000000101
            00001
            01
 1460 002EE 0             NIBHEX  0
 1461 002EF 00000         CON(5)  =SEMI
 1462             * Reset Value
 1463             * File  Inf.s   107
 1464 002F4 00000         CON(5)  =DOLIST
 1465 002F9 00000         CON(5)  (=DOBINT)
 1466 002FE 00000         CON(5)  (=InfDemoMesBase)+10
 1467 00303 00000         CON(5)  =DOREAL
 1468 00308 200           NIBHEX  200
 1469 0030B 00000         NIBHEX  000000000201
            00002
            01
 1470 00317 0             NIBHEX  0
 1471 00318 00000         CON(5)  =SEMI
 1472             * Initial Value
 1473             * File  Inf.s   108
 1474
 1475             * File  Inf.s   109
 1476             * group the fields definitions in a list
 1477             * File  Inf.s   110
 1478 0031D 00000         CON(5)  (=DOBINT)
 1479 00322 02000         CON(5)  (8)*4
 1480             * File  Inf.s   111
 1481 00327 00000         CON(5)  ={}N
 1482             * File  Inf.s   112
 1483
 1484             * File  Inf.s   113
 1485 0032C 00000         CON(5)  =DOFLASHP
 1486 00331 00000         CON(7)  =^IfMain2
            00
 1487             * File  Inf.s   114
 1488
 1489             * File  Inf.s   115
 1490 00338 00000         CON(5)  =SEMI
 1491             * end of form procedure
 1492             * File  Inf.s   116
 1493
 1494             * File  Inf.s   117
 1495             * File  Inf.s   118
 1496             * % Count for the Message Table
 1497             * File  Inf.s   119
 1498             * DCCP 12 InfDemoMesBase
 1499             * File  Inf.s   120
 1500             *
 1501             * File  Inf.s   121
 1502
 1503             * File  Inf.s   122
 1504             * Messages automatically copied by Inform Generator
 1505             * File  Inf.s   123
 1506             * Messages added to the Library's Message Table
 1507             *  "First No"
 1508             *  "Second No"
 1509             *  "Check Me"
 1510             *  "Pick"
 1511             *  "Enter first number for stack"
 1512             *  "Enter a second number for stack"
 1513             *  "Check and uncheck this field"
 1514             *  "Pick an item from list"
 1515             *  "Inform Box Demonstration"
 1516             *  "A entry"
 1517             *  "B entry"
 1518             *  "C entry"
 1519             * File  Inf.s   136
 1520
 1521             * File  Inf.s   137
 1522             * Internal Datas: Do not touch!
 1523             * File  Inf.s   138
 1524             * l00000000020C001C0001000000180049006E0066006F0072006D00200042006F0078002000440065006D006F006E0073007
 1525             * File  Inf.s   139
 1526             * S40072006100740069006F006E
 1527             * File  Inf.s   140
 1528             * 0002000D000A
 1529             * File  Inf.s   141
 1530             * 0002000D000A
 1531             * File  Inf.s   142
 1532             * 0002000D000A
 1533             * File  Inf.s   143
 1534             * f0028009C00A0002400000006004600690065006C006400310006004600690065006C006400310002000D000A00000001003
 1535             * File  Inf.s   144
 1536             * S0000500420049004E005400320002000D000A0003004F004E004500000000001C0045006E007400650072002000660069007
 1537             * File  Inf.s   145
 1538             * S2007300740020006E0075006D00620065007200200066006F007200200073007400610063006B
 1539             * File  Inf.s   146
 1540             * f0060009C00A0002400010006004600690065006C006400320006004600690065006C006400320002000D000A00000001003
 1541             * File  Inf.s   147
 1542             * S0000500420049004E005400320002000D000A0003004F004E004500000000001F0045006E007400650072002000610020007
 1543             * File  Inf.s   148
 1544             * S300650063006F006E00640020006E0075006D00620065007200200066006F007200200073007400610063006B
 1545             * File  Inf.s   149
 1546             * f0090009C0018002000010006004600690065006C006400330006004600690065006C006400330002000D000A00030000000
 1547             * File  Inf.s   150
 1548             * S500420049004E005400300002000D000A0003004F004E004500000000001C0043006800650063006B00200061006E0064002
 1549             * File  Inf.s   151
 1550             * S00075006E0063006800650063006B002000740068006900730020006600690065006C0064
 1551             * File  Inf.s   152
 1552             * f0090012000EC002400010006004600690065006C006400340006004600690065006C006400340002000D000A00020000000
 1553             * File  Inf.s   153
 1554             * S600420049004E0054003100380048007B000D000A007B00200022004100200065006E0074007200790022002000200025002
 1555             * File  Inf.s   154
 1556             * S00031003000310020007D000D000A007B00200022004200200065006E0074007200790022002000200025002000310030003
 1557             * File  Inf.s   155
 1558             * S20020007D000D000A007B00200022004300200065006E007400720079002200200020002500200031003000330020007D000
 1559             * File  Inf.s   156
 1560             * SD000A007D000D000A00090053004500560045004E005400450045004E0014007B00200022004100200065006E00740072007
 1561             * File  Inf.s   157
 1562             * S9002200200020002500200031003000310020007D0014007B00200022004200200065006E007400720079002200200020002
 1563             * File  Inf.s   158
 1564             * S500200031003000320020007D0016005000690063006B00200061006E0020006900740065006D002000660072006F006D002
 1565             * File  Inf.s   159
 1566             * S0006C006900730074
 1567             * File  Inf.s   160
 1568             * l002C00040080001400010006004C006100620065006C00310008004600690072007300740020004E006F
 1569             * File  Inf.s   161
 1570             * l006400040090001400010006004C006100620065006C00320009005300650063006F006E00640020004E006F
 1571             * File  Inf.s   162
 1572             * l009400040080001400010006004C006100620065006C003300080043006800650063006B0020004D0065
 1573             * File  Inf.s   163
 1574             * l009400D80040001400010006004C006100620065006C00340004005000690063006B
 1575             * File  Inf.s   164
 1576             * 0002000D000A
 1577             * File  Inf.s   165
 1578             * 0002000D000A
 1579             * File  Inf.s   166
 1580             * 000E00570069006C006C00690061006D0020004700720061007600650073
 1581             * File  Inf.s   167
 1582             * 00070049006E006600440065006D006F
 1583             * File  Inf.s   168
 1584             * 00040046004600460046
 1585             * File  Inf.s   169
 1586             *
Saturn Assembler                                       Sat Dec 07 11:22:24 2002
V3.0.8 (11/17/2002)   Symbol Table                       Inf.a          Page    2

 'DROPFALSE                        Ext                   -  1308  1317  1347
                                        1377  1405
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
 BINT0                             Ext                   -  1386
 BINT18                            Ext                   -  1414
 BINT2                             Ext                   -  1328  1358
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
 DOBINT                            Ext                   -  1274  1276  1286
                                        1288  1298  1421  1430  1439  1455  1465
                                        1478
 DOCOL                             Ext                   -   950
 DOCSTR                            Ext                   -   955
 DOFLASHP                          Ext                   -  1266  1279  1291
                                        1301  1485
 DOLIST                            Ext                   -  1323  1353  1417
                                        1420  1429  1438  1454  1464
 DOREAL                            Ext                   -  1423  1432  1441
                                        1457  1467
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
 FALSE                             Ext                   -  1395  1398
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
=InfDemo                           Rel       0 #00000000 -   948
 InfDemoMesBase                    Ext                   -  1275  1287  1299
                                        1422  1431  1440  1456  1466
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
 MINUSONE                          Ext                   -  1331  1334  1337
                                        1340  1361  1364  1367  1370  1383  1389
                                        1392  1411
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
 ONE                               Ext                   -  1320  1350
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
=RomId                             Abs     514 #00000202 -   924
 SEMI                              Ext                   -  1325  1355  1427
                                        1436  1445  1447  1461  1471  1490
 SEVENTEEN                         Ext                   -  1451
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
 THIRTYTWO                         Ext                   -  1380
 TWELVE                            Ext                   -  1408
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
 ZERO                              Ext                   -  1324  1354
 ^IfMain2                          Ext                   -  1486
 ^IfSetAllHelpStrings              Ext                   -  1292
 ^IfSetAllLabelsMessages           Ext                   -  1280
 ^IfSetTitle                       Ext                   -  1302
 ^IsUncompressDataString           Ext                   -  1267
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
 lBlcB20                           Rel     314 #0000013A -  1265
 lBloB10                           Rel      15 #0000000F -   956
 lBloB10s                          Rel     314 #0000013A -  1265  1265   956
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
 {}N                               Ext                   -  1481
Saturn Assembler                                       Sat Dec 07 11:22:24 2002
V3.0.8 (11/17/2002)   Statistics                         Inf.a          Page    3

Input Parameters

  Source file name is Inf.a

  Listing file name is Inf.l

  Object file name is Inf.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
