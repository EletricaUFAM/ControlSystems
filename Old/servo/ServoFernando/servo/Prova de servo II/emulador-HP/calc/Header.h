
**miscdoc+*******************************************^******
************************************************************
**
** File:    Header.h for HP49 Version 2.0, 8/01/99
**
************************************************************
**+miscdoc**************************************************

RPL		( insure RPL-mode exit )

**
** HP38G Aplet constants
**
*** Default for Shared Topic Variables
DEFINE DftXmin		% -6.5
DEFINE DftXmax		% 6.5
DEFINE DftYmin		% -3.1
DEFINE DftYmax		% 3.2
DEFINE DftHTick 	% 1
DEFINE DftVTick 	% 1
DEFINE DftHZoom 	% 4
DEFINE DftVZoom 	% 4
DEFINE DftAngle		# 2	( Rad )
DEFINE DftTStart	% 0
DEFINE DftTStep		% 0.1
DEFINE DftTZoom		% 4
DEFINE DftTFlags	0
DEFINE DftFormat	# 1
DEFINE DftDigits	# 0

*** Default for Polar
DEFINE DftThetaMin      % 0
DEFINE DftThetaMax      % 6.28318530718         ( %2PI )
DEFINE DftThetaStp      % 0.1308996939          ( %PI/24 )

*** Default for Paramatric
DEFINE DftTmin          % 0
DEFINE DftTmax          % 12
DEFINE DftPStep         % 0.1

*** Default for Sequence
DEFINE DftSeqXmin       % -2
DEFINE DftSeqXmax       % 24
DEFINE DftSeqYmin	% -2
DEFINE DftSeqYmax	% 10.6
DEFINE DftSeqNmin       % 1
DEFINE DftSeqNmax       % 24
DEFINE DftSeqType       # 1
DEFINE DftSeqTStart     % 1
DEFINE DftSeqTStep      % 1

*** Default for Solve
DEFINE DftSolveTcol     # 1
DEFINE DftSolveTrow     # 1

*** Default for Statistics
DEFINE DftStatXmin      % -2
DEFINE DftStatXmax      % 24
DEFINE DftStatYmin      % -2
DEFINE DftStatYmax      % 10.6
DEFINE DftStatType      # 1	( 1=1Var, 2=2Var Statistic )
DEFINE DftStatPlot	# 1	( 1=Histogram, 2=BoxWhisker )
DEFINE DftHisWidth	% 1
DEFINE DftHmin		% 0
DEFINE DftHmax		% 20

DEFINE DftStatMark	# 54321
DEFINE DftStatModel	# 11111

**
** Topic outer loop reserved TOL vars:
**
DEFINE TOLRESVARSEND+1	FIVE
**
DEFINE TopicEntry!	TOLVar1!
DEFINE TopicEntry@	TOLVar1@
DEFINE TopicEntryDo	TOLVar1@ EVAL
DEFINE TopicExit!	TOLVar2!
DEFINE TopicExit@	TOLVar2@
DEFINE TopicExitDo	TOLVar2@ EVAL
DEFINE ViewEntry!	TOLVar3!
DEFINE ViewEntry@	TOLVar3@
DEFINE ViewEntryDo	TOLVar3@ EVAL
DEFINE ViewExit!	TOLVar4!
DEFINE ViewExit@	TOLVar4@
DEFINE ViewExitDo	TOLVar4@ EVAL


** 	Charlemagne System Flags 1.9
**miscdoc+**************************************************
************************************************************
**
** File:    SysFlags.h Version 1.9, 05/10/93
** Machine: Charlemagne
**
************************************************************
**+miscdoc**************************************************

**miscdoc+**************************************************
************************************************************
**
** Default system flag values
**
**   These equates define the system flag values to be used 
**   when the machine is reset.  The exact value depends on
**   the system flag number assignments and the individual
**   system flag default values.
**
************************************************************
**+miscdoc**************************************************
ASSEMBLE
DefSysF64-33 EQU	#00000000
DefSysF32-01 EQU	#04010FF0
DefSysF65-96 EQU	#42000000       Just Algebraic Mode is On by Default
DefSysF97-128 EQU	#00000000

**		"3F" specifies binary integer wordsize of 64, RAD;
**		all other flags are clear
RPL

**miscdoc+**************************************************
************************************************************
**
** System flag RPL number assignments
**
**   All states represented by multiple flags should
**   start on a flag number nibble boundary (e.g., 1, 5, ...)
**   for more efficient code.
**
**   All single-bit flags should by default be CLEAR.  For
**   example, the "last arguments" mode is enabled (the default)
**   when "fnLastArgs" is CLEAR.
**
************************************************************
**+miscdoc**************************************************

**
** Symbolic math system flags:
**
DEFINE fnSolutions	ONE		( solution mode )
DEFINE fnConstants	TWO		( constants mode )
DEFINE fnResults	THREE		( results mode )
DEFINE fnCareful	FOUR		( careful evaluation mode )

**
** Binary integer math system flags:
**
DEFINE fnBinWordS1	FIVE		( binary integer wordsize )
  ( must start on nibble boundary )
DEFINE fnBinWordS2	SIX
DEFINE fnBinWordS3	SEVEN
DEFINE fnBinWordS4	EIGHT
DEFINE fnBinWordS5	NINE
DEFINE fnBinWordS6	TEN
DEFINE fnBinBase1	ELEVEN		( binary integer base )
  ( must follow "fnBinWordS6" )
DEFINE fnBinBase2	TWELVE

**
** Floating-point math system flags:
**
DEFINE fnPmtMode	FOURTEEN	( financial BEGIN/END mode )
DEFINE fnComVecDi1	FIFTEEN		( complex number and vector
					mode )
DEFINE fnComVecDi2	SIXTEEN
DEFINE fnAngle1		SEVENTEEN	( angle mode )
  ( must start on a nibble boundary )
DEFINE fnAngle2		EIGHTEEN
DEFINE fnComplex2D	NINETEEN	( complex 2D mode )
DEFINE fnUnderfAct	TWENTY		( underflow action )
DEFINE fnOverfAct	TWENTYONE	( overflow action )
DEFINE fnInfResAct	TWENTYTWO	( infinite result action )
DEFINE fnUnderfNeg	TWENTYTHREE	( underflow-negative indicator )
DEFINE fnUnderfPos	TWENTYFOUR	( underflow-positive indicator )
DEFINE fnOverflow	TWENTYFIVE	( overflow indicator )
DEFINE fnInfResult	TWENTYSIX	( infinite result indicator )
DEFINE fnSymbCx         TWENTYSEVEN     ( symbolic-comples decompilation )
**
** Plotting, I/O, and printing system flags:
**
DEFINE fnSimuPlot	TWENTYEIGHT	( simultaneous plot mode )
DEFINE fnAxesPlot	TWENTYNINE	( axis drawing plot mode )

DEFINE fnConnectPt	THIRTYONE	( connect points mode )
DEFINE fnGCursor        THIRTYTWO	( graphics cursor type mode )
DEFINE fnIODevice	THIRTYTHREE	( I/O device )
DEFINE fnPrintDev	THIRTYFOUR	( print device )
DEFINE fnIODataFmt	THIRTYFIVE	( I/O data format )
DEFINE fnOverwrite      THIRTYSIX	( variable overwrite mode )
DEFINE fnDblSpace	THIRTYSEVEN	( double-space print mode )
DEFINE fnNoAutoCR	THIRTYEIGHT	( suppress auto CR mode )
DEFINE fnNoIOStsMsg	THIRTYNINE	( suppress I/O status messages )


**
** Time management system flags:
**
DEFINE fnClockOn	FORTY		( clock display mode )
DEFINE fnClockFmt	FORTYONE	( clock display format )
DEFINE fnDateFmt	FORTYTWO	( date format )
DEFINE fnResRepAlm	FORTYTHREE	( reschedule unacknowledged
					repeat alarms mode )
DEFINE fnDelNRAlm	FORTYFOUR	( delete acknowledged non-repeat
					alarms mode )

**
** Display format system flags:
**
DEFINE fnNumDigs1	FORTYFIVE	( number of decimal digits )
  ( must start on nibble boundary )
DEFINE fnNumDigs2	FORTYSIX
DEFINE fnNumDigs3	FORTYSEVEN
DEFINE fnNumDigs4	FORTYEIGHT
DEFINE fnNumDisp1	FORTYNINE	( number display format )
  ( must start on nibble boundary )
DEFINE fnNumDisp2	FIFTY
DEFINE fnRadix		FIFTYONE	( radix mark )
DEFINE fnMultiDisp	FIFTYTWO	( multi-line display mode )
DEFINE fnShowPrec	FIFTYTHREE	( show precedence mode )
DEFINE fnIgnoreTiny	FIFTYFOUR	( zero out tiny matrix elements )

**
** Miscellaneous system flags:
**
DEFINE fnLastArgs	FIFTYFIVE	( last arguments mode )
DEFINE fnErrorBeep	FIFTYSIX	( error beep mode )
DEFINE fnAlarmBeep	FIFTYSEVEN	( alarm beep mode )
DEFINE fnVerbose	FIFTYEIGHT	( verbose display mode )
DEFINE fnNameOnly	FIFTYNINE	( variable name only mode  )
DEFINE fnTriAlpha	SIXTY		( 3-way alpha mode )
DEFINE fnTriUser	SIXTYONE	( 3-way user keys mode )
DEFINE fnUserKeys	SIXTYTWO	( user keys mode )
DEFINE fnNoParse	SIXTYTHREE	( special parser mode )
DEFINE fnIndexWrap	SIXTYFOUR	( index wraparound indicator )

**miscdoc+**************************************************
************************************************************
**
** System flag assembly number assignments
**
**   See "System flag RPL number assignments" for flag 
**   descriptions
**
************************************************************
**+miscdoc**************************************************

ASSEMBLE
**
** Symbolic math system flags:
**
SolutionsFl  EQU 1
ConstantsFl  EQU 2
ResultsFl    EQU 3
CarefulFl    EQU 4

**
** Binary integer math system flags:
**
BinWordSFl1  EQU 5	must start on a nibble boundary
BinWordSBCt  EQU 6	number of bits
** Flag 2    EQU 6
** Flag 3    EQU 7
** Flag 4    EQU 8
** Flag 5    EQU 9
** Flag 6    EQU 10
BinBaseFl1   EQU 11	must follow "BinWordSFl6"
BinBaseBCt   EQU 2	number of bits
** Flag 2    EQU 12

**
** Floating-point math system flags:
**
ComVecDiFl1  EQU 15
ComVecDiBCt  EQU 2	number of bits
** Flag2     EQU 16
AngleFl1     EQU 17	must start on a nibble boundary
AngleBCt     EQU 2	number of bits
** Flag2     EQU 18
Complex2DFl  EQU 19
UnderfActFl  EQU 20
OverfActFl   EQU 21
InfResActFl  EQU 22
UnderfNegFl  EQU 23
UnderfPosFl  EQU 24
OverflowFl   EQU 25
InfResultFl  EQU 26

**
** Plotting, I/O, and printing system flags:
**
FunctPlotFl  EQU 30
ConnectPtFl  EQU 31
GCursorFl    EQU 32
IODeviceFl   EQU 33
PrintDevFl   EQU 34
IODataFmtFl  EQU 35
OverwriteFl  EQU 36
DblSpaceFl   EQU 37
NoAutoCRFl   EQU 38
NoIOStsMsgFl EQU 39

**
** Time management system flags:
**
ClockOnFl    EQU 40
ClockFmtFl   EQU 41
DateFmtFl    EQU 42
ResRepAlmFl  EQU 43
DelNRAlmFl   EQU 44

**
** Display format system flags:
**
NumDigsFl1   EQU 45	must start on a nibble boundary
NumDigsBCt   EQU 4	number of bits
** Flag2     EQU 46
** Flag3     EQU 47
** Flag4     EQU 48
NumDispFl1   EQU 49	must start on a nibble boundary
NumDispBCt   EQU 2	number of bits
** Flag2     EQU 50
RadixFl      EQU 51
MultiDispFl  EQU 52
ShowPrecFl   EQU 53

**
** Miscellaneous system flags:
**
LastArgsFl   EQU 55
ErrorBeepFl  EQU 56
AlarmBeepFl  EQU 57
VerboseFl    EQU 58
FastEqViewFl EQU 59
TriAlphaFl   EQU 60
TriUserFl    EQU 61
UserKeysFl   EQU 62
NoParseFl    EQU 63
IndexWrapFl  EQU 64


**miscdoc+**************************************************
************************************************************
**
**  System flag computed nibble and bit assignments
**
************************************************************
**+miscdoc**************************************************

AlarmBeepNib EQU ((AlarmBeepFl)-1)/4
AlarmBeepBit EQU ((AlarmBeepFl)-1)%4

AngleNib     EQU ((AngleFl1)-1)/4
AngleBit1    EQU ((AngleFl1)-1)%4
AngleBit2    EQU (AngleBit1)+1

BinBaseNib   EQU ((BinBaseFl1)-1)/4
BinBaseBit1  EQU ((BinBaseFl1)-1)%4

BinWordSNib  EQU ((BinWordSFl1)-1)/4
BinWordSBit1 EQU ((BinWordSFl1)-1)%4

CarefulNib   EQU ((CarefulFl)-1)/4
CarefulBit   EQU ((CarefulFl)-1)%4

ClockFmtNib  EQU ((ClockFmtFl)-1)/4
ClockFmtBit  EQU ((ClockFmtFl)-1)%4

ClockOnNib   EQU ((ClockOnFl)-1)/4
ClockOnBit   EQU ((ClockOnFl)-1)%4

Complex2DNib EQU ((Complex2DFl)-1)/4
Complex2DBit EQU ((Complex2DFl)-1)%4

ComVecDiNib  EQU ((ComVecDiFl1)-1)/4
ComVecDiBit1 EQU ((ComVecDiFl1)-1)%4

ConnectPtNib EQU ((ConnectPtFl)-1)/4
ConnectPtBit EQU ((ConnectPtFl)-1)%4

ConstantsNib EQU ((ConstantsFl)-1)/4
ConstantsBit EQU ((ConstantsFl)-1)%4

DateFmtNib   EQU ((DateFmtFl)-1)/4
DateFmtBit   EQU ((DateFmtFl)-1)%4

DblSpaceNib  EQU ((DblSpaceFl)-1)/4
DblSpaceBit  EQU ((DblSpaceFl)-1)%4

DelNRAlmNib  EQU ((DelNRAlmFl)-1)/4
DelNRAlmBit  EQU ((DelNRAlmFl)-1)%4

ErrorBeepNib EQU ((ErrorBeepFl)-1)/4
ErrorBeepBit EQU ((ErrorBeepFl)-1)%4

FastEViewNib EQU ((FastEqViewFl)-1)/4
FastEViewBit EQU ((FastEqViewFl)-1)%4

FunctPlotNib EQU ((FunctPlotFl)-1)/4
FunctPlotBit EQU ((FunctPlotFl)-1)%4

GCursorNib   EQU ((GCursorFl)-1)/4
GCursorBit   EQU ((GCursorFl)-1)%4

IndexWrapNib EQU ((IndexWrapFl)-1)/4
IndexWrapBit EQU ((IndexWrapFl)-1)%4

InfResActNib EQU ((InfResActFl)-1)/4
InfResActBit EQU ((InfResActFl)-1)%4

InfResultNib EQU ((InfResultFl)-1)/4
InfResultBit EQU ((InfResultFl)-1)%4

IODataFmtNib EQU ((IODataFmtFl)-1)/4
IODataFmtBit EQU ((IODataFmtFl)-1)%4

IODeviceNib  EQU ((IODeviceFl)-1)/4
IODeviceBit  EQU ((IODeviceFl)-1)%4

LastArgsNib  EQU ((LastArgsFl)-1)/4
LastArgsBit  EQU ((LastArgsFl)-1)%4

VerboseNib   EQU ((VerboseFl)-1)/4
VerboseBit   EQU ((VerboseFl)-1)%4

MultiDispNib EQU ((MultiDispFl)-1)/4
MultiDispBit EQU ((MultiDispFl)-1)%4

NoAutoCRNib  EQU ((NoAutoCRFl)-1)/4
NoAutoCRBit  EQU ((NoAutoCRFl)-1)%4

NoIOStMsgNib EQU ((NoIOStsMsgFl)-1)/4
NoIOStMsgBit EQU ((NoIOStsMsgFl)-1)%4

NoParseNib   EQU ((NoParseFl)-1)/4
NoParseBit   EQU ((NoParseFl)-1)%4

NumDigsNib   EQU ((NumDigsFl1)-1)/4
NumDigsBit1  EQU ((NumDigsFl1)-1)%4

NumDispNib   EQU ((NumDispFl1)-1)/4
NumDispBit1  EQU ((NumDispFl1)-1)%4

OverfActNib  EQU ((OverfActFl)-1)/4
OverfActBit  EQU ((OverfActFl)-1)%4

OverflowNib  EQU ((OverflowFl)-1)/4
OverflowBit  EQU ((OverflowFl)-1)%4

OverwriteNib EQU ((OverwriteFl)-1)/4
OverwriteBit EQU ((OverwriteFl)-1)%4

PrintDevNib  EQU ((PrintDevFl)-1)/4
PrintDevBit  EQU ((PrintDevFl)-1)%4

RadixNib     EQU ((RadixFl)-1)/4
RadixBit     EQU ((RadixFl)-1)%4

ResRepAlmNib EQU ((ResRepAlmFl)-1)/4
ResRepAlmBit EQU ((ResRepAlmFl)-1)%4

ResultsNib   EQU ((ResultsFl)-1)/4
ResultsBit   EQU ((ResultsFl)-1)%4

ShowPrecNib  EQU ((ShowPrecFl)-1)/4
ShowPrecBit  EQU ((ShowPrecFl)-1)%4

SolutionsNib EQU ((SolutionsFl)-1)/4
SolutionsBit EQU ((SolutionsFl)-1)%4

TriAlphaNib  EQU ((TriAlphaFl)-1)/4
TriAlphaBit  EQU ((TriAlphaFl)-1)%4

TriUserNib   EQU ((TriUserFl)-1)/4
TriUserBit   EQU ((TriUserFl)-1)%4

UnderfActNib EQU ((UnderfActFl)-1)/4
UnderfActBit EQU ((UnderfActFl)-1)%4

UnderfNegNib EQU ((UnderfNegFl)-1)/4
UnderfNegBit EQU ((UnderfNegFl)-1)%4

UnderfPosNib EQU ((UnderfPosFl)-1)/4
UnderfPosBit EQU ((UnderfPosFl)-1)%4

UserKeysNib  EQU ((UserKeysFl)-1)/4
UserKeysBit  EQU ((UserKeysFl)-1)%4

RPL
RPL		( insure RPL-mode exit )
** Non-Macro Property Lists Symbols 1.1
**miscdoc+**************************************************
************************************************************ 
**
** File:    PropList.h Version 1.1, 10/27/89
** Machine: Charlemagne
**
************************************************************
**+miscdoc**************************************************

**miscdoc+**************************************************
************************************************************ 
**
**	This file contains equates defining 
**	property-list bits and parse-data for non-macro 
**      romwords.  (Equates for macros are defined elsewhere.)
**
************************************************************
**
**  History:	6 JUL 88	Created by CP & MJ
**
************************************************************
**+miscdoc**************************************************

**miscdoc+**************************************************
************************************************************ 
**
**	Equates for Property-List Bits
**
**	These equates (and the implied order of the properties) 
**	must be consistent with the property-list bits for 
**	macros as defined elsewhere.
**
************************************************************
**+miscdoc**************************************************
ASSEMBLE

* most significant nibble equates:

nonALG EQU 8			not-allowed-in-algebraics flag 
hasHELP EQU 4			has-help-data flag
hasPROMPTM EQU 4		same as above
hasALIAS EQU 2			has-algebraic-alias flag
hasPDATA EQU 1			has-parse-data flag

* the remaining equates are only relevant for algebraic functions.
* next most significant nibble equates:

hasDER EQU 8			has-derivative flag
hasINV EQU 4			has-inverse flag
hasCOLCT EQU 2			has-COLCT-data flag
hasEXPND EQU 1			has-EXPND-data flag

* least significant nibble equates:

hasFORM EQU 8			has-FORM-menu flag
hasINTG EQU 4			has-Integral-data flag
hasWHERE EQU 2			has-WHERE-code flag
hasVUNS EQU 1			has-veryunsymin-code flag

**miscdoc+**************************************************
************************************************************ 
**
**	Equates for Parse-Data
**
**	Each equate name has the structure:
**
**		 pd<component abbreviation>
**
**	where the component abbreviation is that of the ERS
**	section on parsing symbolic objects.
**
************************************************************
**+miscdoc**************************************************

pdEX EQU #0		general expression
pdOP EQU #1		operator
pdQE EQU #2		quoted expression
pdQN EQU #3		quoted name
pdLP EQU #4		left parenthesis
pdRP EQU #5		right parenthesis
pdCM EQU #6		comma (non-radix)
pdEQ EQU #7		equal-sign separator
pdOS0 EQU #8		optional repeat 0
pdOS1 EQU #9		optional repeat 1
pdOS2 EQU #A		optional repeat 2
pdOS3 EQU #B		optional repeat 3
pdOS4 EQU #C		optional repeat 4
pdOS5 EQU #D		optional repeat 5
pdOS6 EQU #E		optional repeat 6
pdOS7 EQU #F		optional repeat 7

RPL
RPL		( insure RPL-mode exit )
**	TITLE Key Code and Plane Definitions 1.1
**miscdoc+*******************************************^******
************************************************************
**
** File:    KeyCodes.h Version 1.1, 10/27/89
** Machine: Charlemagne
**
************************************************************
**+miscdoc**************************************************

**miscdoc+**************************************************
************************************************************
**
** The key plane definitions here are listed in numerical
** order.  All names begin with "kp" (to indicate a "k"ey 
** "p"lane), and the names describe the key plane specified.
**
************************************************************
**+miscdoc**************************************************

DEFINE kpNoShift	ONE
DEFINE kpLeftShift	TWO
DEFINE kpRightShift	THREE
DEFINE kpANoShift	FOUR
DEFINE kpALeftShft	FIVE
DEFINE kpARightShft	SIX
DEFINE kpARightShift	SIX
DEFINE kpALeftShift	FIVE

**miscdoc+**************************************************
************************************************************
**
** The key code definitions here are listed in numerical
** order.  All names begin with "kc" (to indicate a "k"ey 
** "c"ode), and names are chosen to best describe the primary
** operation of the key.
**
************************************************************
**+miscdoc**************************************************

DEFINE kcMenuKey1	ONE
DEFINE kcMenuKey2	TWO
DEFINE kcMenuKey3	THREE
DEFINE kcMenuKey4	FOUR
DEFINE kcMenuKey5	FIVE
DEFINE kcMenuKey6	SIX

*
* these keys do not exit with VGER
*
*DEFINE kcMathMenu	SEVEN
*DEFINE kcPrgmMenu	EIGHT
*DEFINE kcCustomMenu	NINE

DEFINE kcAPPS		SEVEN
DEFINE kcMODE		EIGHT
DEFINE kcTOOLS		NINE
DEFINE kcUpArrow	TEN

DEFINE kcVarsMenu	ELEVEN
DEFINE kcSto		TWELVE
DEFINE kcNextRow	THIRTEEN
DEFINE kcLeftArrow	FOURTEEN
DEFINE kcDownArrow	FIFTEEN
DEFINE kcRightArrow	SIXTEEN

DEFINE kcHIST		SEVENTEEN
DEFINE kcCAT		EIGHTEEN
DEFINE kcEQW		NINETEEN
DEFINE kcSYMB		TWENTY
DEFINE kcBackspace	TWENTYONE

DEFINE kcPower		TWENTYTWO
DEFINE kcSqrt		TWENTYTHREE
DEFINE kcSin		TWENTYFOUR
DEFINE kcCos		TWENTYFIVE
DEFINE kcTan		TWENTYSIX

*DEFINE kcTick		THIRTEEN
*DEFINE kcSto		FOURTEEN
*DEFINE kcEval		FIFTEEN

DEFINE kcEnterExp	TWENTYSEVEN
DEFINE kcNegate		TWENTYEIGHT
DEFINE kcXTDELTA	TWENTYNINE
DEFINE kcInverse	THIRTY
DEFINE kcDivide		THIRTYONE

DEFINE kcAlpha		THIRTYTWO
DEFINE kc7		THIRTYTHREE
DEFINE kc8		THIRTYFOUR
DEFINE kc9		THIRTYFIVE
DEFINE kcMultiply	THIRTYSIX

DEFINE kcLeftShift	THIRTYSEVEN
DEFINE kc4		THIRTYEIGHT
DEFINE kc5		THIRTYNINE
DEFINE kc6		FORTY
DEFINE kcMinus		FORTYONE

DEFINE kcRightShift	FORTYTWO
DEFINE kc1		FORTYTHREE
DEFINE kc2		FORTYFOUR
DEFINE kc3		FORTYFIVE
DEFINE kcPlus		FORTYSIX

DEFINE kcOn		FORTYSEVEN
DEFINE kc0		FORTYEIGHT
DEFINE kcPeriod		FORTYNINE
DEFINE kcSpace		FIFTY

DEFINE kcEnter		FIFTYONE

DEFINE kcAlphaLeft	FIFTY
RPL		( insure RPL-mode exit )
** 	Charlemagne Equation Writer Constants 1.1
**miscdoc+**************************************************
************************************************************
**
** File:    EQW.h Version 1.1, 10/27/89
** Machine: Charlemagne
**
************************************************************
**+miscdoc**************************************************

** The current GBox number:
DEFINE CurrentGbox#	SEVEN
RPL		( insure RPL-mode exit )
**miscdoc+*******************************************^******
************************************************************
**
** File:    InputForm.h Version 1.25, 05/04/93
** Machine: Alcuin
**
** Input Form macros and equates
**
************************************************************
**+miscdoc**************************************************

**
** Input form event messages:
**
DEFINE IFM_DISPTITLE		ONE
DEFINE IFM_SETTITLEGROB	   	TWO
DEFINE IFM_SETTITLEDECOMP	THREE
DEFINE IFM_DISPCLIENT	    	FOUR
DEFINE IFM_SETCLIENTBACK	FIVE
DEFINE IFM_DISPLABEL		SIX
DEFINE IFM_DISPFIELD		SEVEN
DEFINE IFM_SETIFKEYOB	   	EIGHT
DEFINE IFM_SETFGROB	   	NINE
DEFINE IFM_SETFDECOMP	   	TEN
DEFINE IFM_DISPHELP		ELEVEN
DEFINE IFM_SETHELPGROB	   	TWELVE
DEFINE IFM_SETHELPDECOMP	THIRTEEN
DEFINE IFM_SETINITFOCUSFID	FOURTEEN
DEFINE IFM_SETINPFORMMENU	FIFTEEN
DEFINE IFM_SETAPPMENUKEYS	SIXTEEN
DEFINE IFM_POSTCREATE		SEVENTEEN
DEFINE IFM_SETKEYOB	   	EIGHTEEN
DEFINE IFM_LOSTFOCUS	 	NINETEEN
DEFINE IFM_GOTFOCUS	 	TWENTY
DEFINE IFM_UNSHOWSEL		TWENTYONE
DEFINE IFM_SHOWSEL		TWENTYTWO
DEFINE IFM_EDITFIELD	 	TWENTYTHREE
DEFINE IFM_PREPARSE	 	TWENTYFOUR
DEFINE IFM_POSTPARSE	   	TWENTYFIVE
DEFINE IFM_CHOOSE	 	TWENTYSIX
DEFINE IFM_CHECK	  	TWENTYSEVEN
DEFINE IFM_QUIT		 	TWENTYEIGHT
DEFINE IFM_DONE		 	TWENTYNINE
DEFINE IFM_CALC	   	  	THIRTY
DEFINE IFM_RESET	    	THIRTYONE
DEFINE IFM_SETRESETCHOICES	THIRTYTWO
DEFINE IFM_RESETFIELD	   	THIRTYTHREE
DEFINE IFM_RESETALL	    	THIRTYFOUR
DEFINE IFM_DISPOBTYPES	   	THIRTYFIVE
DEFINE IFM_SETOBTYPEDESCS    	THIRTYSIX
DEFINE IFM_GETCHOICE	   	THIRTYSEVEN
DEFINE IFM_CHOOSENEXT	  	THIRTYEIGHT
DEFINE IFM_CHOOSEBYCHR	 	THIRTYNINE
DEFINE IFM_SETCHOICES	 	FORTY
DEFINE IFM_SETUSERVALUE		FORTYONE
DEFINE IFM_SETEDLINEMENU    	FORTYTWO
DEFINE IFM_SETAPPEDLMENUKEYS	FORTYTHREE
DEFINE IFM_ENDEDIT&STO	    	FORTYFOUR
DEFINE IFM_CHKOBTYPE	   	FORTYFIVE
DEFINE IFM_CHKOBVALUE	   	FORTYSIX
DEFINE IFM_POSTCHANGE		FORTYSEVEN
DEFINE IFM_SETDOWNFID	   	FORTYEIGHT
DEFINE IFM_SETUPFID	   	FORTYNINE
DEFINE IFM_SETFARDOWNFID	FIFTY
DEFINE IFM_SETFARUPFID		FIFTYONE
DEFINE IFM_SETNEXTFID		FIFTYTWO
DEFINE IFM_SETPREVFID		FIFTYTHREE
DEFINE IFM_SETNEXTFOCUSFID   	FIFTYFOUR
DEFINE IFM_SETFOCUSOK?	   	FIFTYFIVE
DEFINE IFM_POSTDONE	   	FIFTYSIX

** 
** Input form display area management:
**
** Title=DA1 Client=DA2a Help=DA2b(no edit) Edit=DA2b(edit) Menu=DA3
**
DEFINE TitleOK?		DA1OK?
DEFINE ClientOK?	:: DA2aOK? DA2aLess1OK? ClrNewEditL OR ;
DEFINE EditOK?		:: NoEditLine? caseTRUE   DA2bOK? ;
DEFINE HelpOK?		:: EditLExists? caseTRUE  DA2bOK? ;
DEFINE MenuOK?		DA3OK?
DEFINE HelpTemp?	DA2bTemp?
DEFINE ClientBad?	DA2aBad?
DEFINE HelpBad?		DA2bBad?
DEFINE SetTValid	SetDA1Valid
DEFINE SetCValid	SetDA2aValid
DEFINE SetEValid	SetDA2bValid
DEFINE SetHValid	SetDA2bValid
DEFINE SetMValid	SetDA3Valid
DEFINE SetTNoCh		SetDA1NoCh
DEFINE SetCNoCh		SetDA2aNoCh
DEFINE SetENoCh		SetDA2bNoCh
DEFINE SetHNoCh		SetDA2bNoCh
DEFINE SetMNoCh		SetDA3NoCh
DEFINE SetCTemp		SetDA2aTemp
DEFINE SetETemp		SetDA2bTemp
DEFINE SetHTemp		SetDA2bTemp
DEFINE SetTBad		SetDA1Bad
DEFINE SetCBad		SetDA2aBad
DEFINE SetEBad		SetDA2bBad
DEFINE SetHBad		SetDA2bBad
DEFINE SetMBad		SetDA3Bad
**
DEFINE SetTCEMNoCh	:: SetTNoCh SetCNoCh SetENoCh SetMNoCh ;
DEFINE SetTCENoCh	:: SetTNoCh SetCNoCh SetENoCh ;
DEFINE SetTCHNoCh	:: SetTNoCh SetCNoCh SetHNoCh ;
DEFINE SetTCMNoCh	:: SetTNoCh SetCNoCh SetMNoCh ;
DEFINE SetTCNoCh	:: SetTNoCh SetCNoCh ;
DEFINE SetCMNoCh	:: SetCNoCh SetMNoCh ;
DEFINE SetTMNoCh	:: SetTNoCh SetMNoCh ;
DEFINE SetTHMNoCh	:: SetTNoCh SetHNoCh SetMNoCh ;
DEFINE SetAllNoCh	SetDAsNoCh
DEFINE SetCHMBad	:: SetCBad SetHBad SetMBad ;
DEFINE ClrAllOK		ClrDAsOK


**
** Input form field types:
**
DEFINE FTYPE_NA		ZERO

DEFINE FTYPE_TEXT	ONE
DEFINE FTYPE_TTAUTOALG  TWO
DEFINE FTYPE_ALGTEXT    THREE

DEFINE FTYPE_LIST	FOUR
DEFINE FTYPE_LTFIXED	EIGHT
DEFINE FTYPE_LTMEMOB	SIXTEEN
DEFINE FTYPE_FIXEDLIST	TWELVE
DEFINE FTYPE_MEMOBLIST	TWENTY

DEFINE FTYPE_CHECK	THIRTYTWO

DEFINE FTYPE_AT		THREE
DEFINE FTYPE_TL		FIVE
DEFINE FTYPE_ATL	SEVEN
DEFINE FTYPE_TFL	THIRTEEN
DEFINE FTYPE_TML	TWENTYONE
DEFINE FTYPE_ATML	TWENTYTHREE

DEFINE FTYPE_TLC	THIRTYSEVEN  ( for internal use only )

**
** Input form object types:
**
DEFINE OBTYPE_NA	MINUSONE

DEFINE OBTYPE_ANY	MINUSONE

DEFINE OBTYPE_REAL	ZERO
DEFINE OBTYPE_CMP	ONE
DEFINE OBTYPE_STR	TWO
DEFINE OBTYPE_RARRAY	THREE
DEFINE OBTYPE_CARRAY	FOUR
DEFINE OBTYPE_LIST	FIVE
DEFINE OBTYPE_ID	SIX
DEFINE OBTYPE_USERPRGM	EIGHT
DEFINE OBTYPE_SYMB	NINE
DEFINE OBTYPE_HXS	TEN
DEFINE OBTYPE_UNIT	THIRTEEN

**
** Input form decompile formats:
**
DEFINE FMT_NA		MINUSONE
DEFINE FMT_NONE		ONE
DEFINE FMT_DFLT		TWO
DEFINE FMT_STD		FOUR

DEFINE FMT_1STCHAR	EIGHT

DEFINE FMT_PART1	SIXTEEN
DEFINE FMT_PART2	THIRTYTWO

DEFINE FMT_NONE&1STCH	NINE
DEFINE FMT_P1&NONE	SEVENTEEN
DEFINE FMT_P1&DFLT	EIGHTEEN
DEFINE FMT_P1&STD	TWENTY
DEFINE FMT_P2&NONE	THIRTYTHREE
DEFINE FMT_P2&DFLT	THIRTYFOUR
DEFINE FMT_P2&STD	THIRTYSIX
DEFINE FMT_P1&NONE&1STCH  TWENTYFIVE

**
** Input form label and field standard rows and columns:
**
DEFINE LROW1		TEN
DEFINE LROW2		NINETEEN
DEFINE LROW3		TWENTYEIGHT
DEFINE LROW4		THIRTYSEVEN
DEFINE LROW5		FORTYSIX

DEFINE FROW1		EIGHT
DEFINE FROW2		SEVENTEEN
DEFINE FROW3		TWENTYSIX
DEFINE FROW4		THIRTYFIVE
DEFINE FROW5		FORTYFOUR

DEFINE COL1		ONE
DEFINE COL1+C		EIGHT
DEFINE COL1.5		FOUR
DEFINE COL1.5+C		ELEVEN
DEFINE COL2		SEVEN
DEFINE COL2+C		FOURTEEN
DEFINE COL2.5		TEN
DEFINE COL3		THIRTEEN
DEFINE COL3.5		SIXTEEN
DEFINE COL4		NINETEEN
DEFINE COL4.5		TWENTYTWO
DEFINE COL4.5+C		TWENTYNINE
DEFINE COL5		TWENTYFIVE
DEFINE COL5+C		THIRTYTWO
DEFINE COL5.5		TWENTYEIGHT
DEFINE COL6		THIRTYONE
DEFINE COL6.5		THIRTYFOUR
DEFINE COL7		THIRTYSEVEN
DEFINE COL7.5		FORTY
DEFINE COL7.5+C		FORTYSEVEN
DEFINE COL8		FORTYTHREE
DEFINE COL8+C		FIFTY
DEFINE COL8.5		FORTYSIX
DEFINE COL9		FORTYNINE
DEFINE COL9+C		FIFTYSIX
DEFINE COL9.5		FIFTYTWO
DEFINE COL10		FIFTYFIVE
DEFINE COL10+C		SIXTYTWO
DEFINE COL10.5		FIFTYEIGHT
DEFINE COL11		SIXTYONE
DEFINE COL11.5		SIXTYFOUR
DEFINE COL11.5+C	71
DEFINE COL12		FOURTHREE ( decimal 67 )
DEFINE COL12+C		SEVENTYFOUR
DEFINE COL12.5		SEVENTY
DEFINE COL13		73
DEFINE COL13+C		EIGHTY
DEFINE COL13.5		76
DEFINE COL14		SEVENTYNINE
DEFINE COL14+C		FIVESIX ( decimal 86 )
DEFINE COL14.5		LISTCMP ( decimal 82 )
DEFINE COL15		2LIST ( decimal 85 )
DEFINE COL15+C		92
DEFINE COL15.5		88
DEFINE COL15.5+C	95
DEFINE COL16		BINT_91d
DEFINE COL16+C		NINETYEIGHT
DEFINE COL16.5		94
DEFINE COL16.5+C	SIXFIVE ( decimal 101 )
DEFINE COL17		IDREAL ( decimal 97 )
DEFINE COL17+C		104
DEFINE COL17.5		IDARRY ( decimal 100 )
DEFINE COL17.5+C	107
DEFINE COL18		103
DEFINE COL18+C		110
DEFINE COL18.5		106
DEFINE COL18.5+C	LAMREAL ( decimal 113 )
DEFINE COL19		109
DEFINE COL19+C		BINT_116d
DEFINE COL19.5		lamany ( decimal 112 )
DEFINE COL19.5+C	119
DEFINE COL20		BINT_115d
DEFINE COL20+C		BINT_122d
DEFINE COL20.5		118
DEFINE COL21		121
DEFINE COL21.5		124
DEFINE COL22		127

**
** Input form standard field widths and heights:
**
DEFINE FWIDTH_C		SIX ( check width )
DEFINE CHECK_WIDTH+1	SEVEN
DEFINE FWIDTH_CHR	SIX ( field character width )

DEFINE FWIDTH1		SEVEN
DEFINE FWIDTH2		THIRTEEN
DEFINE FWIDTH3		NINETEEN
DEFINE FWIDTH4		TWENTYFIVE
DEFINE FWIDTH5		THIRTYONE
DEFINE FWIDTH6		THIRTYSEVEN
DEFINE FWIDTH7		FORTYTHREE
DEFINE FWIDTH8		FORTYNINE
DEFINE FWIDTH9		FIFTYFIVE
DEFINE FWIDTH10		SIXTYONE
DEFINE FWIDTH11		FOURTHREE ( decimal 67 )
DEFINE FWIDTH12		73
DEFINE FWIDTH13		SEVENTYNINE
DEFINE FWIDTH14		2LIST ( decimal 85 )
DEFINE FWIDTH15		BINT_91d
DEFINE FWIDTH16		IDREAL ( decimal 97 )
DEFINE FWIDTH17		103
DEFINE FWIDTH18		109
DEFINE FWIDTH19		BINT_115d
DEFINE FWIDTH20		121
DEFINE FWIDTH21		127

DEFINE FHEIGHT1		NINE
DEFINE FHEIGHT2		EIGHTEEN


**
** Input form display area metrics:
**
DEFINE HELP_AREA_TOP	FORTYSIX
DEFINE HELP_MSG_TOP	FIFTY
DEFINE HELP_BOTTOM	FIFTYFIVE
DEFINE HELP_HEIGHT	TEN

DEFINE CLIENT_TOP	SEVEN
DEFINE CLIENT_TOP+1	EIGHT
DEFINE CLIENT_HEIGHT	THIRTYNINE


**
** Miscellany:
**
DEFINE NULL		MINUSONE

DEFINE FVAL_NA		MINUSONE
DEFINE FVAL_NULL	MINUSONE
DEFINE FVALS_NULL	MINUSONE

DEFINE CHOICES_NULL	MINUSONE

DEFINE ID_NULL		MINUSONE

DEFINE OPTDATA_NULL	MINUSONE


*************************************************************************
*	
*	Simple DEFINEs to GETLAMs and PUTLAMs
*	
*************************************************************************

DEFINE GetTotalCount		1GETLAM
DEFINE GetFieldOffset		2GETLAM
DEFINE GetLabelOffset		3GETLAM
DEFINE GetMyFieldId		4GETLAM
DEFINE GetFocus			5GETLAM
DEFINE GetIFKeyOb		6GETLAM
DEFINE GetIFMenuRow		7GETLAM
DEFINE GetIFMenu		8GETLAM
DEFINE GetFAreaStates		9GETLAM
DEFINE GetClientBack		10GETLAM
DEFINE GetIFExit		11GETLAM
*
DEFINE GetFormProc		13GETLAM
DEFINE GetFieldCount		14GETLAM
DEFINE GetLabelCount		15GETLAM

DEFINE SetTotalCount		1PUTLAM
DEFINE SetFieldOffset		2PUTLAM
DEFINE SetLabelOffset		3PUTLAM
DEFINE SetMyFieldId		4PUTLAM
DEFINE SetFocus			5PUTLAM
DEFINE SetIFKeyOb		6PUTLAM
DEFINE SetIFMenuRow		7PUTLAM
DEFINE SetIFMenu		8PUTLAM
DEFINE SetFAreaStates		9PUTLAM
DEFINE SetClientBack		10PUTLAM
DEFINE SetIFExit		11PUTLAM
DEFINE SetTitle			12PUTLAM
DEFINE SetFormProc		13PUTLAM
DEFINE SetFieldCount		14PUTLAM
DEFINE SetLabelCount		15PUTLAM

*************************************************************************
*	
*	DEFINEs for secondaries with crunched names.
*	
*************************************************************************

DEFINE GetTitle			gFormTitle

DEFINE GetLabelText		gLblText
DEFINE GetLabelCol		gLblCol
DEFINE GetLabelRow		gLblRow
DEFINE GetLabelLoc		gLblLoc
DEFINE SetLabelText		sLblText
DEFINE SetLabelCol		sLblCol
DEFINE SetLabelRow		sLblRow
DEFINE SetLabelLoc		sLblLoc
DEFINE GetFieldProc		gFldProc
DEFINE GetFieldCol		gFldCol
DEFINE GetFieldRow		gFldRow
DEFINE GetFieldWidth		gFldWidth
DEFINE GetFieldHeight		gFldHeight
DEFINE GetFieldType		gFldType
DEFINE GetFieldObTypes		gFldObTypes
DEFINE GetFieldFormat		gFldFormat
DEFINE GetFieldHelp		gFldHelp
DEFINE GetFieldOptData1		gFldOptDat1
DEFINE GetFieldOptData2		gFldOptDat2
DEFINE GetFieldResetVal		gFldResetVal
DEFINE GetFieldVal		gFldVal
DEFINE GetFieldLoc		gFldLoc
DEFINE GetFieldSize		gFldSize
DEFINE SetFieldProc		sFldProc
DEFINE SetFieldCol		sFldCol
DEFINE SetFieldRow		sFldRow
DEFINE SetFieldWidth		sFldWidth
DEFINE SetFieldHeight		sFldHeight
DEFINE SetFieldType		sFldType
DEFINE SetFieldObTypes		sFldObTypes
DEFINE SetFieldFormat		sFldFormat
DEFINE SetFieldHelp		sFldHelp
DEFINE SetFieldOptData1		sFldOptDat1
DEFINE SetFieldOptData2		sFldOptDat2
DEFINE SetFieldResetVal		sFldResetVal
DEFINE SetFieldVal		sFldVal
DEFINE SetFieldLoc		sFldLoc
DEFINE SetFieldSize		sFldSize
RPL		( insure RPL-mode exit )
**miscdoc+*******************************************^******
************************************************************
**
** File:    Choose.h Version 1.15, 05/04/93
** Machine: Alcuin
**
************************************************************
**+miscdoc**************************************************

**
** Choose list event messages:
**
DEFINE LM_SETROWCOUNT		FIFTYSEVEN
DEFINE LM_SETROWHEIGHT		FIFTYEIGHT
DEFINE LM_SETROWWIDTH		FIFTYNINE
DEFINE LM_SETVIEWTYPE		SIXTY
DEFINE LM_SETPICKTYPE		SIXTYONE
DEFINE LM_SETITEMCOUNT		SIXTYTWO
DEFINE LM_SET1STROWXY		SIXTYTHREE
DEFINE LM_SETFOCUSPOS		SIXTYFOUR
DEFINE LM_DISPBORDER		BINT_65d
DEFINE LM_DISPPROMPT		FOURTWO  ( decimal 66 )
DEFINE LM_SETPROMPTGROB		FOURTHREE  ( decimal 67 )
DEFINE LM_SETMAXVIEWPROMPTGROB	SIXTYEIGHT
DEFINE LM_SETNORMVIEWPROMPTGROB	FOURFIVE ( decimal 69 )
DEFINE LM_SETPROMPTDECOMP	SEVENTY
DEFINE LM_DISPLIST		SEVENTYFOUR
DEFINE LM_DISPITEM		SEVENTYNINE
DEFINE LM_SETITEM		EIGHTY
DEFINE LM_SETITEMGROB		EIGHTYONE
DEFINE LM_SETITEMDECOMP		LISTCMP  ( decimal 82 )
DEFINE LM_SETMENU		FIVETHREE  ( decimal 83 )
DEFINE LM_SAVECOVWIND		FIVEFOUR  ( decimal 84 )
DEFINE LM_POSTCREATE		2LIST  ( decimal 85 )
DEFINE LM_PICK			FIVESIX  ( decimal 86 )
DEFINE LM_RESTCOVWIND		LISTLAM  ( decimal 87 )
DEFINE LM_QUIT			BINT_91d
DEFINE LM_DONE			BINT_96d

**
** Choose display area management:
**
** border=DA1; prompt line=DA2a; list area=DA2b
**
DEFINE BorderOK?		DA1OK?
DEFINE PromptOK?		DA2aOK?
DEFINE ListOK?			DA2bOK?
DEFINE ListBad?			DA2bBad?
DEFINE ClrPOK			ClrDA2aOK
DEFINE ClrLOK			ClrDA2bOK
DEFINE SetBValid		SetDA1Valid
DEFINE SetPValid		SetDA2aValid
DEFINE SetLValid		SetDA2bValid
DEFINE SetLNoCh			SetDA2bNoCh
DEFINE SetBBad			SetDA1Bad
DEFINE SetPBad			SetDA2aBad
DEFINE SetLBad			SetDA2bBad
DEFINE SetBPLNoCh		SetDA12NoCh
DEFINE SetB3NoCh		SetDA13NoCh
DEFINE SetBP3NoCh		SetDA12a3NCh

**
** Choose box metrics:
**
DEFINE DFLT_ROW_COUNT	FIVE 		( norm-view default visible row count )
DEFINE DFLT_1STROW_X    TWENTY 		( default first row X location )
DEFINE DFLT_1STROW_Y	FOURTEEN	( default first row Y location )
DEFINE DFLT_ROW_WIDTH   BINT_91d	( default row width )
DEFINE DFLT_ROW_HEIGHT  NINE		( default row height )

DEFINE MAXV_WIDTH	XHI		( max-view width )
DEFINE MAXV_HEIGHT	FIFTYSIX 	( max-view height )
DEFINE MAXV_DFLTROWCOUNT	SIX	( max-view default visible row count )

DEFINE PROMPT_HEIGHT 	EIGHT		( prompt area height )

DEFINE U/DWIDTH		SIX		( more-up/down icon width )

**
** Choose pick types:
**
DEFINE PICKTYPE_MULTI	TRUE
DEFINE PICKTYPE_SINGLE	FALSE

** Choose view types:
**
DEFINE VIEWTYPE_MAX	TRUE
DEFINE VIEWTYPE_NORM	FALSE

**
** Choose variable access:
**
DEFINE ChooseExit!	    	2PUTLAM
DEFINE ChooseExit@	    	2GETLAM
DEFINE DASpecFlags!		3PUTLAM
DEFINE DASpecFlags@		3GETLAM
DEFINE MenuWindow!		4PUTLAM
DEFINE MenuWindow@		4GETLAM
DEFINE Window!			5PUTLAM
DEFINE Window@			5GETLAM
DEFINE FocusPos!	    	6PUTLAM
DEFINE FocusPos@	    	6GETLAM
DEFINE RowHeight!	    	7PUTLAM
DEFINE RowHeight@	    	7GETLAM
DEFINE RowWidth!	    	8PUTLAM
DEFINE RowWidth@	    	8GETLAM
DEFINE 1stRowY!	    		9PUTLAM
DEFINE 1stRowY@	    		9GETLAM
DEFINE 1stRowX!	    		10PUTLAM
DEFINE 1stRowX@	    		10GETLAM
DEFINE RowCount!	   	11PUTLAM
DEFINE RowCount@ 	   	11GETLAM
DEFINE ItemCount!		12PUTLAM
DEFINE ItemCount@		12GETLAM
DEFINE ChooseMenu!		13PUTLAM
DEFINE ChooseMenu@		13GETLAM
DEFINE ViewType!	   	14PUTLAM
DEFINE ViewType@ 	   	14GETLAM
DEFINE IsMaxView? 	   	14GETLAM
DEFINE PickedItems!		15PUTLAM
DEFINE PickedItems@		15GETLAM
DEFINE PickType!		16PUTLAM
DEFINE PickType@		16GETLAM
DEFINE IsMultiPick?		16GETLAM
DEFINE ViewOnly!		17PUTLAM
DEFINE ViewOnly?		17GETLAM
DEFINE LFocus!	  	  	18PUTLAM
DEFINE LFocus@			18GETLAM
DEFINE List!	    		19PUTLAM
DEFINE List@	    		19GETLAM
DEFINE DecompFmt!		20PUTLAM
DEFINE DecompFmt@		20GETLAM
DEFINE Prompt!			21PUTLAM
DEFINE Prompt@			21GETLAM
DEFINE ChooseProc!		22PUTLAM
DEFINE ChooseProc@		22GETLAM
RPL		( insure RPL-mode exit )

** newcovered/test.a:

** newcovered/pramtest2.a:

** newcovered/nwsutl.a:

** CCVR/head.a:

** CCVR/link.a:

** CCVR/covINTG.s:
EXTERNAL INTGSIN
EXTERNAL I:-InvSin
EXTERNAL INTGCOS
EXTERNAL I:LnTan
EXTERNAL INTGTAN
EXTERNAL INTGASIN
EXTERNAL INTGACOS
EXTERNAL INTGATAN
EXTERNAL INTGSINH
EXTERNAL I:-InvSinh
EXTERNAL I:LnTanh
EXTERNAL INTGCOSH
EXTERNAL I:Tanh
EXTERNAL INTGTANH
EXTERNAL INTGEXPM
EXTERNAL INTGALOG
EXTERNAL INTGLN
EXTERNAL INTGLOG
EXTERNAL INTGINV
EXTERNAL I:Atan
EXTERNAL INTGSQ
EXTERNAL INTGSQRT
EXTERNAL I:Asinh
EXTERNAL I:Acosh
EXTERNAL INTGSIGN
EXTERNAL INTGDER

** CCVR/covmanip.s:
EXTERNAL mT->=
EXTERNAL m<-T=
EXTERNAL mAFlq
EXTERNAL mAFqq
EXTERNAL mAFrq
EXTERNAL m<->+
EXTERNAL m<->-
EXTERNAL m<->*
EXTERNAL m<->/
EXTERNAL m<-A-+
EXTERNAL m<-A--
EXTERNAL m<-A/*
EXTERNAL m<-A//
EXTERNAL m<-A^*
EXTERNAL mA->+-
EXTERNAL mA->--
EXTERNAL mA->*/
EXTERNAL mA->//
EXTERNAL mA->^^
EXTERNAL mD->/+
EXTERNAL mD->/-
EXTERNAL mD->^+
EXTERNAL mD->^-
EXTERNAL mD->E+
EXTERNAL mD->E-
EXTERNAL mD->L*
EXTERNAL mD->L/
EXTERNAL m[]CHS*
EXTERNAL m[]CHS/
EXTERNAL m[]CHSL
EXTERNAL m[]INV^
EXTERNAL m[]INVE
EXTERNAL m1/[]*
EXTERNAL m1/[]/
EXTERNAL m1/[]^
EXTERNAL m1/[]E
EXTERNAL m-[]L
EXTERNAL m-[]*
EXTERNAL m-[]/
EXTERNAL m-[]+
EXTERNAL m-[]-
EXTERNAL mE^*
EXTERNAL mE^/
EXTERNAL mE[]^
EXTERNAL mL*^
EXTERNAL mL[]*
EXTERNAL mL[]/
EXTERNAL m<-M+*
EXTERNAL m<-M-*
EXTERNAL adjdivsign
EXTERNAL adjsign
EXTERNAL adjdiv
EXTERNAL m<-M*^
EXTERNAL m<-M/^
EXTERNAL m<-M*E
EXTERNAL m<-M/E
EXTERNAL m<-M+L
EXTERNAL m<-M-L
EXTERNAL mM->op
EXTERNAL m<T>+
EXTERNAL m<T>*
EXTERNAL m<-T+-
EXTERNAL m<-T*/
EXTERNAL m<-[+-
EXTERNAL m<-[*/
EXTERNAL m]->+-
EXTERNAL m]->*/
EXTERNAL m->[]<-+-
EXTERNAL m->[]<-*/
EXTERNAL mCONJ[]
EXTERNAL mRE[]
EXTERNAL mIM[]
EXTERNAL REIM[]*
EXTERNAL m->TRG
EXTERNAL m->DEFSIN
EXTERNAL m->DEFCOS
EXTERNAL m->DEFTAN
EXTERNAL m->DEFASIN
EXTERNAL m->DEFACOS
EXTERNAL m->DEFATAN
EXTERNAL m->DEFSINH
EXTERNAL m->DEFCOSH
EXTERNAL m->DEFTANH
EXTERNAL m->DEFASINH
EXTERNAL m->DEFACOSH
EXTERNAL m->DEFATANH
EXTERNAL mSIN+
EXTERNAL mCOS+
EXTERNAL mTAN+
EXTERNAL mSINH+
EXTERNAL mCOSH+
EXTERNAL mTANH+
EXTERNAL covmanCOL

** CCVR/covWHERE.s:
EXTERNAL WHEREFCNAPPL
EXTERNAL WHEREDER
EXTERNAL WHEREIFTE
EXTERNAL WHEREWHERE
EXTERNAL covWSPLIT
EXTERNAL WHEREINTG
EXTERNAL WHERESUM

** CCVR/covports.s:
EXTERNAL XSTOCHECK
EXTERNAL XSTOCHECK10
EXTERNAL covLBSTO
EXTERNAL XEQXDPTCH
EXTERNAL Xcont
EXTERNAL CHECKEXISTS
EXTERNAL covIORESTORE
EXTERNAL covIOBACK
EXTERNAL covFREEPORT
EXTERNAL covmetaLIBS
EXTERNAL XRCLp?
EXTERNAL XRCLpNL
EXTERNAL XRCLpL
EXTERNAL XRCLp*
EXTERNAL XEVALp?
EXTERNAL XEVALp*
EXTERNAL XPURGEp?
EXTERNAL XPURGEp*
EXTERNAL convertaddrs
EXTERNAL XRCLp?acc>

** CCVR/covCOL.s:
EXTERNAL COLCTDER
EXTERNAL COLCTINTG
EXTERNAL COLCTSUM
EXTERNAL COLCTIFTE
EXTERNAL COLCTQUOTE
EXTERNAL COLCTFCNAP

** CCVR/covDIFS.s:
EXTERNAL covD/D*
EXTERNAL covD/D+
EXTERNAL covD/D-
EXTERNAL covD/D/
EXTERNAL covD/D=
EXTERNAL covD/Dalg=
EXTERNAL covD/DABS
EXTERNAL covD/DACOS
EXTERNAL covD/DACOSH
EXTERNAL covD/DALOG
EXTERNAL covD/DARG
EXTERNAL covD/DASIN
EXTERNAL covD/DASINH
EXTERNAL covD/DATAN
EXTERNAL covD/DATANH
EXTERNAL covD/DCOS
EXTERNAL covD/DCOSH
EXTERNAL covD/DEXP
EXTERNAL covD/DINV
EXTERNAL covD/DLN
EXTERNAL covD/DLNP1
EXTERNAL covD/DLOG
EXTERNAL covD/DIFTE
EXTERNAL covD/DSIN
EXTERNAL covD/DSINH
EXTERNAL covD/DSQ
EXTERNAL covD/DSQRT
EXTERNAL covD/DTAN
EXTERNAL covD/DTANH
EXTERNAL covD/D^
EXTERNAL covD/D^X
EXTERNAL covD/D^Y
EXTERNAL covD/DDER
EXTERNAL covD/DWHERE
EXTERNAL covD/DINTG
EXTERNAL covD/DSUM
EXTERNAL covD/DAPPLY

** CCVR/covForm.s:
EXTERNAL covMANMENU+-
EXTERNAL covMANMENU*/
EXTERNAL covMANMENU^
EXTERNAL covMANEXP
EXTERNAL covMANMENULN
EXTERNAL covMANCSIV
EXTERNAL covMANMENUEQ
EXTERNAL covMANMENUCX
EXTERNAL covMANTRG
EXTERNAL covMANATG

** CCVR/covINVS.s:
EXTERNAL covINV+
EXTERNAL covINV-
EXTERNAL covINV=
EXTERNAL covINV*
EXTERNAL covINV/
EXTERNAL covINV^
EXTERNAL covINV^X
EXTERNAL covINVEXP
EXTERNAL covINVSIN
EXTERNAL covINVCOS
EXTERNAL covINVTAN
EXTERNAL covINVSINH
EXTERNAL covINVCOSH
EXTERNAL covINVTANH
EXTERNAL covINVALOG
EXTERNAL covINVEXPM1

** CCVR/end.a:

** PolyN/head.a:

** PolyN/MesgPolyN.s:

** PolyN/ProotC.s:
FEXTERNAL proot_c

** PolyN/ProotR.s:
FEXTERNAL proot
FEXTERNAL proot_r

** PolyN/PolyNlink.a:

** PolyN/end.a:

** AS3DR/AS3DRHead.a:

** AS3DR/AS3DRHash.a:

** AS3DR/newptypes.s:
FEXTERNAL nFUNCTION
FEXTERNAL nCONIC
FEXTERNAL nPOLAR
FEXTERNAL nPARAMETRIC
FEXTERNAL nTRUTH
FEXTERNAL nSCATTER
FEXTERNAL nHISTOGRAM
FEXTERNAL nBAR
FEXTERNAL nPTYPE>PINF
FEXTERNAL ChangeParam
FEXTERNAL ChkDepnd
FEXTERNAL POINTDISP
FEXTERNAL POINTERR
FEXTERNAL POINTEXIT

** AS3DR/suite3d.s:
** EXTERNAL viewproj
** EXTERNAL SetWindow
** EXTERNAL WIREDRAW
*FEXTERNAL 3dvlist
*FEXTERNAL wiredrw01
*FEXTERNAL wiredrw02
*FEXTERNAL pl3dprep
** EXTERNAL WireClean
** EXTERNAL CrossBar
** EXTERNAL resetcbar
** EXTERNAL GetVPARS
*FEXTERNAL GetEQ&INDEPS
*FEXTERNAL GRIDDRAW
** EXTERNAL dogridmap
** EXTERNAL griddrw01
** EXTERNAL GridClean
*FEXTERNAL PSURFDRAW
** EXTERNAL psurfdrw01
** EXTERNAL PsurfClean
*FEXTERNAL YSLICEDRAW
** EXTERNAL yslicdrw01
** EXTERNAL YslicClean
** EXTERNAL SetUpFrames
** EXTERNAL SetNoFrames
** EXTERNAL NxtPrvFram
** EXTERNAL SLOPEDRAW
** EXTERNAL slopedrw01
** EXTERNAL slopetour
** EXTERNAL slopedrw02
** EXTERNAL slopedrw03
** EXTERNAL SlopeClean1
** EXTERNAL SlopeClean2
** EXTERNAL PCONTDRAW
** EXTERNAL pcontdrw01
** EXTERNAL enTic
** EXTERNAL slopeshow
** EXTERNAL GETLAMREL
** EXTERNAL PUTLAMREL
*FEXTERNAL AlNoFUNNoZM
** EXTERNAL Crunch3dOb
*FEXTERNAL TCoo3dUtl
** EXTERNAL Enter3dOut
** EXTERNAL Coord3dInp
** EXTERNAL Enter3dInp
*FEXTERNAL Enter3dUtl
*FEXTERNAL WireOutpt
*FEXTERNAL GridOutpt
*FEXTERNAL YslicOutpt
*FEXTERNAL SlopeOutpt
*FEXTERNAL PsurfOutpt
*FEXTERNAL PtourOutpt

** AS3DR/newptypes.s:

** AS3DR/AS3DREnd.a:

** MatrixEd/MEMisc.s:
EXTERNAL DOPINIT

** MatrixEd/TABLEEA.a:

** MatrixEd/MWend.a:

** LinAlg/head.a:

** LinAlg/Egv.s:
FEXTERNAL  laSRAD
FEXTERNAL  laVMAX%%
FEXTERNAL  laEGVL
FEXTERNAL  laEGVL%%
FEXTERNAL  laEGV
FEXTERNAL  laSCHUR
FEXTERNAL  laEgHF
*FEXTERNAL  laECQhQAQh
*FEXTERNAL  laEgQkHA
FEXTERNAL  laEgRSchur
FEXTERNAL  laEgIsoVal
*FEXTERNAL  laEgRQRI
*FEXTERNAL  laEgQRIk0
FEXTERNAL  laEgRQRIk1
*FEXTERNAL  laEgRWilk3
*FEXTERNAL  laEgM*RG3
*FEXTERNAL  laEgWilk2
*FEXTERNAL  laEgM*G2
*FEXTERNAL  laEgValr
*FEXTERNAL  laEgRotR
*FEXTERNAL  laSchur2
FEXTERNAL  laEgVecR
*FEXTERNAL  laEgVcSngl
*FEXTERNAL  laEgVcUrhs
*FEXTERNAL  laEgVcPair
FEXTERNAL  laEgSclCls
FEXTERNAL  laEgCSchur
*FEXTERNAL  laEgCQRI
*FEXTERNAL  laEgCQRIk1
FEXTERNAL  laEgVecC
FEXTERNAL  laEgPrep
FEXTERNAL  laFPMUTE
FEXTERNAL  laBPMUTE
FEXTERNAL  laFSCALE

** LinAlg/LeastSq.s:
FEXTERNAL  laLSQ
FEXTERNAL  laUserQR
FEXTERNAL  laUserLQ
FEXTERNAL  lauserQR
FEXTERNAL  laQRF
*FEXTERNAL  laQhA
FEXTERNAL  laQhB
FEXTERNAL  laSETDIAG
FEXTERNAL  laRQF
FEXTERNAL  laQ2hX
FEXTERNAL  laRSVF
FEXTERNAL  laQRrank
*FEXTERNAL  laQRSVecUp
*FEXTERNAL  laQRminSV
*FEXTERNAL  laQRmaxSV
FEXTERNAL  rMAKEPCOPY
FEXTERNAL  rPACKARRYD
FEXTERNAL  MAKEEPIDN

** LinAlg/Svd.s:
FEXTERNAL  laSNORM
FEXTERNAL  laSNORM%%
FEXTERNAL  laRANK
FEXTERNAL  laSVL
FEXTERNAL  laSVD
FEXTERNAL  laSvdUBD
FEXTERNAL  laSvdLtUBD
*FEXTERNAL  laSvdUQhQA
*FEXTERNAL  laSvdAPPhV
*FEXTERNAL  laSvdAPk
*FEXTERNAL  laSvdGPROT
FEXTERNAL  laSvdBDQR
*FEXTERNAL  laSvdQR2x2
*FEXTERNAL  laSvdFDirC
*FEXTERNAL  laSvdBDirC
*FEXTERNAL  laSvdGShft
*FEXTERNAL  laSvdQRSF
*FEXTERNAL  laSvdQRSB
FEXTERNAL  laSvdQRF
*FEXTERNAL  laSvdQRB
*FEXTERNAL  laSvdCROTR
*FEXTERNAL  laSvdCROTL
FEXTERNAL  laSvdPSort
FEXTERNAL  laSvdPrep

** LinAlg/SysSlv.s:
FEXTERNAL  laTRACE
FEXTERNAL  laCOND
*FEXTERNAL  laCONDdone
*FEXTERNAL  laVMAXJRP
FEXTERNAL  laUserLU
FEXTERNAL  laDT
FEXTERNAL  laRefineDT
FEXTERNAL  laSV
FEXTERNAL  laSVc
FEXTERNAL  laIV
FEXTERNAL  laIVc
FEXTERNAL  laIVF
*FEXTERNAL  laULHSVF
FEXTERNAL  laLsdScale
*FEXTERNAL  laScIntRnd
FEXTERNAL  laRREF
*FEXTERNAL  laRedRow
FEXTERNAL  laRedHere?
*FEXTERNAL  laEGetTiny

** LinAlg/LinAlglink.a:

** LinAlg/end.a:

** TVM/head.a:
FEXTERNAL DOAMRTTAG
FEXTERNAL TMMain
FEXTERNAL DOTVMROOT
FEXTERNAL SYMTVMROOT
FEXTERNAL DOAMRT

** TVM/TVMlink.a:

** TVM/end.a:

** EqnLib/ELhead.a:

** EqnLib/EqnLib.s:
EXTERNAL ELStoExtFlg
EXTERNAL ELStoTopTit
EXTERNAL ELStoTopDat
EXTERNAL ELStoEqnDat
EXTERNAL ELStoEqnNum
EXTERNAL ELStoEnFsRw
EXTERNAL ELStoTopNum
EXTERNAL ELStoTpFsRw
EXTERNAL ELStoVarNum
EXTERNAL ELStoVrFsRw
EXTERNAL ELStoMEqnNo
EXTERNAL ELStoEqnTyp
EXTERNAL ELmain
EXTERNAL ELRclExtFlg
EXTERNAL ELRclTopTit
EXTERNAL ELRclTopDat
EXTERNAL ELRclEqnDat
EXTERNAL ELRclEqnNum
EXTERNAL ELRclEnFsRw
EXTERNAL ELRclTopNum
EXTERNAL ELRclTpFsRw
EXTERNAL ELRclVarNum
EXTERNAL ELRclVrFsRw
EXTERNAL ELRclMEqnNo
EXTERNAL ELRclEqnTyp
EXTERNAL ELTopLev
EXTERNAL ELGetStrLst
EXTERNAL ELGetIdLst
EXTERNAL ELNthId
EXTERNAL ELTopMenu
EXTERNAL ELTopHKeys
EXTERNAL ELquit
EXTERNAL ELTopEntKey
EXTERNAL ELTopTitle
EXTERNAL ELTitleMenu
EXTERNAL ELTitHKeys
EXTERNAL ELTitEqnKey
EXTERNAL ELEqnStkT
EXTERNAL ELTitleSol
EXTERNAL ELSetEqn
EXTERNAL ELMongoPars
EXTERNAL ELTitleEnt
EXTERNAL ELTitleEqn
EXTERNAL ELTitleEE
EXTERNAL ELTitleVars
EXTERNAL ELTitlePic
EXTERNAL ELEqnMenu1
EXTERNAL ELEqnMenu
EXTERNAL ELEqnStkB
EXTERNAL ELDoNxtEqn
EXTERNAL ELDoPrvEqn
EXTERNAL ELEqnHKey1
EXTERNAL ELEqnHKeys
EXTERNAL ELVarsMenu
EXTERNAL ELVarsHKeys
EXTERNAL ELVarsEqn
EXTERNAL ELVarsVars
EXTERNAL ELVarsPic
EXTERNAL ELPicMenu
EXTERNAL ELPicHKeys
EXTERNAL ELBotExit
EXTERNAL ELBotSol
EXTERNAL ELBotEqn
EXTERNAL ELBotVars
EXTERNAL ELGoVars
EXTERNAL ELBotPic
EXTERNAL ELPoundVars
EXTERNAL ELLoadVars
EXTERNAL ELPurgeVars
EXTERNAL ELGoSolvrM
EXTERNAL ELGoSolvr
EXTERNAL ELBRexit
EXTERNAL ELdone
EXTERNAL ELGoBr1
EXTERNAL ELGoBrV
EXTERNAL ELUnpack

** EqnLib/EqnDisp.s:
EXTERNAL ENStoExtFlg
EXTERNAL ENStoHKDefs
EXTERNAL ENInitDisp
EXTERNAL ENRclHKDefs
EXTERNAL ENRclExtFlg
EXTERNAL ENEWDisp
EXTERNAL ENALDisp
EXTERNAL ENDoEqnNo
EXTERNAL ENdisplay
EXTERNAL ENdone
EXTERNAL ENkeysEW
EXTERNAL ENkeysAL
EXTERNAL ENNoShfAL
EXTERNAL ENNoShfEW
EXTERNAL ENRtShift
EXTERNAL ENEnter
EXTERNAL ENOn
EXTERNAL ENUp

** EqnLib/PicDisp.s:
EXTERNAL PCStoExtFlg
EXTERNAL PCStoHKDefs
EXTERNAL PCDisp
EXTERNAL PCRclHKDefs
EXTERNAL PCRclExtFlg
EXTERNAL PCunpack
EXTERNAL PCdisplay
EXTERNAL PCdone
EXTERNAL PCkeys
EXTERNAL PCNoShift
EXTERNAL PCRghtShift
EXTERNAL PCEnter
EXTERNAL PCOn
EXTERNAL ELPicPICT

** EqnLib/ELfcns.s:
EXTERNAL ELSolveEqn

** EqnLib/ELmsg.s:
EXTERNAL ELmsg

** EqnLib/TABLEE3.a:

** EqnLib/ELend.a:

** Mes/MShead.a:

** Mes/MultEqn.s:
EXTERNAL PRStoDispPg
EXTERNAL PRStoDispSt
EXTERNAL PRStoExtFlg
EXTERNAL MSStoTarget
EXTERNAL MSStoFnl
EXTERNAL MSStoNumVar
EXTERNAL MSStonf
EXTERNAL MSStotnf
EXTERNAL MSStoRNflg
EXTERNAL MSStoMflg
EXTERNAL MSStonftp
EXTERNAL MSELDoMES
EXTERNAL MESMenuDef
EXTERNAL MESLabelDef
EXTERNAL MESVarNum
EXTERNAL MESRclIdStat
EXTERNAL MESStoIdStat
EXTERNAL MESStoEqn
EXTERNAL MESRclEqn
EXTERNAL MESGetVars
EXTERNAL MESGetEqns
EXTERNAL MESGetTitle
EXTERNAL MESRclPrg
EXTERNAL MESStoPrg
EXTERNAL MESRclStatus
EXTERNAL MESStoStatus
EXTERNAL MESRevuVars
EXTERNAL MESMenuKyNS
EXTERNAL MESNSProc
EXTERNAL MESUtoM
EXTERNAL MESRtoN
EXTERNAL MESUNtoUR
EXTERNAL MESCircErr?
EXTERNAL MESMenuKyRS
EXTERNAL MESAll
EXTERNAL MESMenuKyLS
EXTERNAL MESDoLS
EXTERNAL MESDoMES
EXTERNAL MSRclTarget
EXTERNAL MSRclFnl
EXTERNAL MSRclnf
EXTERNAL MSRclNumVar
EXTERNAL MSRclnftp
EXTERNAL MSRcltnf
EXTERNAL MSRclRNflg
EXTERNAL MSRclMflg
EXTERNAL MSRclMsgFlg
EXTERNAL MESSolveIt
EXTERNAL MESTMUErr
EXTERNAL MESInMErr
EXTERNAL MESIDMErr
EXTERNAL MESAVKErr
EXTERNAL MESSEQErr
EXTERNAL MESEQIPErr
EXTERNAL MESSolvable?
EXTERNAL MESGetEqVars
EXTERNAL MESExtractV
EXTERNAL MESGetUVars
EXTERNAL MESDelListId
EXTERNAL MESPrgMen
EXTERNAL PRRclDispSt
EXTERNAL PRRclExtFlg
EXTERNAL PRPrgSec
EXTERNAL PRPrintPrg
EXTERNAL PRSoftKeys
EXTERNAL PRHardKeys
EXTERNAL MESDoMinit
EXTERNAL MESUserInfo

** Mes/MSfcns.s:
EXTERNAL MESIDUser
EXTERNAL MESIDCalc
EXTERNAL MES{}User
EXTERNAL MES{}Calc
EXTERNAL MES{}State
EXTERNAL MESState
EXTERNAL MES$User
EXTERNAL MES$Calc
EXTERNAL MES$State
EXTERNAL MESIDRoot
EXTERNAL MES$Root
EXTERNAL MESInMroot?

** Mes/MSmsg.s:
EXTERNAL MSPromptMsg
EXTERNAL MSmsg

** Mes/TABLEE4.a:

** Mes/MSend.a:

** Constants/COhead.a:

** Constants/COMain.s:
FEXTERNAL COmain
FEXTERNAL COSYMGET

** Constants/TABLEE1.a:

** Constants/COend.a:

** IFForms/head.a:

** IFForms/SolveIF.s:
FEXTERNAL DoSolveTask
FEXTERNAL DoIFIRoot
** EXTERNAL GetIRtFS&Vals
** EXTERNAL IRootCLEq
** EXTERNAL IRootCFEq
** EXTERNAL IRootFP
** EXTERNAL IRootMenuKeys
** EXTERNAL IRootEqFP
** EXTERNAL IRtFDfltFP
** EXTERNAL ?SetIRtKeyOb
** EXTERNAL DoIRt>Plot
** EXTERNAL DoKeyIRM/Vars
** EXTERNAL DoIFIRtVars
** EXTERNAL IRtVarsVarsFP
** EXTERNAL DoIRtMore
** EXTERNAL DoKeyIRtInfo
** EXTERNAL DoKeyIRtSolve
** EXTERNAL SetupIRtForm
** EXTERNAL Vars>Labels
** EXTERNAL MultiPgIRoot?
** EXTERNAL GetThisPgSet
** EXTERNAL SetIRtData
** EXTERNAL SetIRtDat.1
FEXTERNAL DoIFDiffEq
** EXTERNAL DiffEqFP
** EXTERNAL DiffEqKeys
** EXTERNAL DiffEqFDfltFP
** EXTERNAL ?SetDiffKeyOb
** EXTERNAL DoDiff>Plot
** EXTERNAL DoKeyDiffIni+
** EXTERNAL DoKeyDiffSolv
** EXTERNAL DiffEqCliBack
** EXTERNAL DiffEqDFuncFP
** EXTERNAL DiffEqSFuncFP
** EXTERNAL DiffEqFuncFP
** EXTERNAL DiffEqEdKeys
** EXTERNAL DiffEqSFinFP
** EXTERNAL EndEdDiscard
** EXTERNAL DiffEqStepFP
** EXTERNAL DiffEqStiffFP
** EXTERNAL SyncFuncs
** EXTERNAL UpdDiffEqCli
** EXTERNAL StiffDiff?
** EXTERNAL SetSoDiffStUV
FEXTERNAL DoIFPoly
** EXTERNAL PolyFP
** EXTERNAL PolyMenuKeys
** EXTERNAL DoKeyPolySymb
** EXTERNAL DoKeyPolySolv
** EXTERNAL ArrayFP
** EXTERNAL EditArray
FEXTERNAL DoIFLinSys
** EXTERNAL LinSysFP
** EXTERNAL LinSMenuKeys
** EXTERNAL DoKeyLinSSolv
** EXTERNAL LinSysAFP
FEXTERNAL DoIFFinance
** EXTERNAL GetFinaFVals
** EXTERNAL SetFinaData
** EXTERNAL FinanceFP
** EXTERNAL FinanceKeys
** EXTERNAL DoKeyFinaSolv
** EXTERNAL FinaNoSolvFP
** EXTERNAL DoIFAmortize
** EXTERNAL FinaAmortFP
** EXTERNAL FinaAmortKeys
** EXTERNAL DoKeyBal>PV
** EXTERNAL DoKeyAmortize
** EXTERNAL FinaNoChangFP
** 
** ** IFForms/PlotIF.s:
** EXTERNAL DoIFPlot
** EXTERNAL GetPlFS&Vals
** EXTERNAL GetPlotFVals
** EXTERNAL SetPlotData
** EXTERNAL PlFuncFS&Vals
** EXTERNAL PlFuncLPlType
** EXTERNAL PlFuncLAngle
** EXTERNAL PlFuncLFunc
** EXTERNAL PlFuncLIndep
** EXTERNAL PlFuncLHRange
** EXTERNAL PlFuncLAuto
** EXTERNAL PlFuncLVRange
** EXTERNAL PlFuncFPlType
** EXTERNAL PlFuncFAngle
** EXTERNAL PlFuncFFunc
** EXTERNAL PlFuncFIndep
** EXTERNAL PlFuncFHMin
** EXTERNAL PlFuncFHMax
** EXTERNAL PlFuncFAuto
** EXTERNAL PlFuncFVMin
** EXTERNAL PlFuncFVMax
** EXTERNAL PlFuncFVals
** EXTERNAL SetPlFuncData
** EXTERNAL PlFuncFP
** EXTERNAL PlFuncKeys
** EXTERNAL PlFuncAutoFP
** EXTERNAL DoIFPlotOpts
** EXTERNAL GetPOFS&Vals
** EXTERNAL GetPlOptFVals
** EXTERNAL SetPlOptsData
** EXTERNAL DoPlErase
** EXTERNAL DoPlDraw
** EXTERNAL PlFuncPlTypFP
** EXTERNAL PlFuncFuncFP
** EXTERNAL PlFuncDfltFP
** EXTERNAL PlConiFS&Vals
** EXTERNAL PlConiFFunc
** EXTERNAL PlConiFVals
** EXTERNAL PlConiFuncFP
** EXTERNAL SetPlConiData
** EXTERNAL PlTrutFS&Vals
** EXTERNAL UnUsedBW4
** EXTERNAL SetPlTrutData
** EXTERNAL PlParaFS&Vals
** EXTERNAL PlDiffFS&Vals
** EXTERNAL PlDiffFVals
** EXTERNAL SetPlDiffData
** EXTERNAL PlDiffFP
** EXTERNAL PlDiffCliBack
** EXTERNAL PlDiffDFuncFP
** EXTERNAL PlDiffSFuncFP
** EXTERNAL PlDiffFuncFP
** EXTERNAL PlDiffStiffFP
** EXTERNAL PlDiffSyncFu
** EXTERNAL UpdPlDiffCli
** EXTERNAL PlStiffDiff?
** EXTERNAL PlHistFS&Vals
** EXTERNAL PlHistLabels
** EXTERNAL PlHistLData
** EXTERNAL PlHistFData
** EXTERNAL PlHistFCol
** EXTERNAL PlHistFVals
** EXTERNAL SetPlHistData
** EXTERNAL PlHistFP
** EXTERNAL PlHistDataFP
** EXTERNAL PlHistWidFP
** EXTERNAL SetHisWidUVal
** EXTERNAL PlBarFS&Vals
** EXTERNAL PlBarWidFP
** EXTERNAL SetBarWidUVal
** EXTERNAL PlScatFS&Vals
** EXTERNAL PlScatFVals
** EXTERNAL SetPlScatData
** EXTERNAL POFuncFS&Vals
** EXTERNAL POFuncLabels
** EXTERNAL POFuncLIndep
** EXTERNAL POFuncLLo
** EXTERNAL POFuncLHi
** EXTERNAL POFuncLAxes
** EXTERNAL POFuncLSimult
** EXTERNAL POFuncLConnec
** EXTERNAL POFuncLStep
** EXTERNAL POFuncLSPix
** EXTERNAL POFuncLHTick
** EXTERNAL POFuncLVTick
** EXTERNAL POFuncLTPix
** EXTERNAL POFuncFIndep
** EXTERNAL POFuncFIMin
** EXTERNAL POFuncFIMax
** EXTERNAL POFuncFAxes
** EXTERNAL POFuncFConnec
** EXTERNAL POFuncFSimult
** EXTERNAL POFuncFStep
** EXTERNAL POFuncFSPix
** EXTERNAL POFuncFHTick
** EXTERNAL POFuncFVTick
** EXTERNAL POFuncFTPix
** EXTERNAL POFuncFVals
** EXTERNAL SetPOFuncData
** EXTERNAL POFuncIMinFP
** EXTERNAL FuncIMinUVal
** EXTERNAL FuncUpdIMax
** EXTERNAL POFuncIMaxFP
** EXTERNAL FuncIMaxUVal
** EXTERNAL FuncUpdIMin
** EXTERNAL POFuncStepFP
** EXTERNAL FuncStepUVal
** EXTERNAL POFuncDfltFP
** EXTERNAL POPolaFS&Vals
** EXTERNAL POPolaFVals
** EXTERNAL SetPOPolaData
** EXTERNAL POParaIMaxFP
** EXTERNAL POPolaStepFP
** EXTERNAL PolaStepUVal
** EXTERNAL POParaFS&Vals
** EXTERNAL POParaStepFP
** EXTERNAL ParaStepUVal
** EXTERNAL POConiFS&Vals
** EXTERNAL POConiFVals
** EXTERNAL SetPOConiData
** EXTERNAL POTrutFS&Vals
** EXTERNAL POTrutFVals
** EXTERNAL SetPOTrutData
** EXTERNAL POTrutDMinFP
** EXTERNAL TrutDMinUVal
** EXTERNAL TrutUpdDMax
** EXTERNAL POTrutDMaxFP
** EXTERNAL TrutDMaxUVal
** EXTERNAL TrutUpdDMin
** EXTERNAL PODiffFS&Vals
** EXTERNAL PODiffFVals
** EXTERNAL SetPODiffData
** EXTERNAL PODiffStepFP
** EXTERNAL SetDiStepUVal
** EXTERNAL PODiffHVVarFP
** EXTERNAL SetDiHVVarCh
** EXTERNAL DecompLHVVar
** EXTERNAL POHistFS&Vals
** EXTERNAL POHistFVals
** EXTERNAL SetPOHistData
FEXTERNAL DoIFPlotZoom
** EXTERNAL ChoosePlType
** EXTERNAL ChoosNexPlTyp
** EXTERNAL ChoosPlTypByC
** EXTERNAL ResetPlTypeF
** EXTERNAL SetVRngBad
** EXTERNAL ?SetPlKeyOb
** EXTERNAL DoPl>Pict
** EXTERNAL DoPl>Solve
** EXTERNAL DoPl>IRoot
** EXTERNAL DoPl>DiffEq
** EXTERNAL SetPlResets
** EXTERNAL ResetPlPlot
** EXTERNAL SetPOResets
** EXTERNAL ResetPOPlot
** EXTERNAL DecompStep
** EXTERNAL DecompVMin
** EXTERNAL DecompVMax
** EXTERNAL PlEdLineKeys
** EXTERNAL PlXEdLineKeys
** EXTERNAL ?MoveInitFoc
** 
** ** IFForms/Plot3dIF.s:
** EXTERNAL PlSlopFS&Vals
** EXTERNAL PlSlopFVals
** EXTERNAL SetPlSlopData
** EXTERNAL PlSlopFP
** EXTERNAL PlSlopFuncFP
** EXTERNAL Pl2EdLineKeys
** EXTERNAL POSlopFS&Vals
** EXTERNAL POSlopLXLeft
** EXTERNAL POSlopLXRight
** EXTERNAL POSlopLYNear
** EXTERNAL POSlopLYFar
** EXTERNAL POSlopFXLeft
** EXTERNAL POSlopFXRight
** EXTERNAL POSlopFYNear
** EXTERNAL POSlopFYFar
** EXTERNAL POSlopFVals
** EXTERNAL SetPOSlopData
** EXTERNAL POWireFS&Vals
** EXTERNAL POWireLabels
** EXTERNAL POWireLZLow
** EXTERNAL POWireLZHigh
** EXTERNAL POWireLXE
** EXTERNAL POWireLYE
** EXTERNAL POWireLZE
** EXTERNAL POWireFields
** EXTERNAL POWireFZLow
** EXTERNAL POWireFZHigh
** EXTERNAL POWireFXE
** EXTERNAL POWireFYE
** EXTERNAL POWireFZE
** EXTERNAL POWireFVals
** EXTERNAL SetPOWireData
** EXTERNAL POYSliFS&Vals
** EXTERNAL POYSliFVals
** EXTERNAL SetPOYSliData
** EXTERNAL POGridFS&Vals
** EXTERNAL POGridFVals
** EXTERNAL SetPOGridData
** EXTERNAL POPSurFS&Vals
** EXTERNAL POPSurFP
** EXTERNAL POPSurKeys
** EXTERNAL DoIFPSurXXYY
** EXTERNAL PSXXYYFS&Vals
** EXTERNAL PSXXYYFVals
** EXTERNAL SetPSXXYYData
** 
** ** IFForms/SymbIF.s:
** EXTERNAL DoSymbTask
** EXTERNAL DoIFIntegrate
** EXTERNAL IntegLExpr
** EXTERNAL IntegLVar
** EXTERNAL IntegLResult
** EXTERNAL IntegFExpr
** EXTERNAL IntegFVar
** EXTERNAL IntegFP
** EXTERNAL IntegCliBack
** EXTERNAL IntegResultFP
** EXTERNAL IntegNumFmtFP
** EXTERNAL IntegPlacesFP
** EXTERNAL UpdateInteCli
** EXTERNAL IntegNumRes?
** EXTERNAL IntegDiFmStd?
** EXTERNAL DoIFDifferent
** EXTERNAL DifferFP
** EXTERNAL DifferKeys
** EXTERNAL DoKeyStepDiff
** EXTERNAL DifferCliBack
** EXTERNAL DifferResulFP
** EXTERNAL UpdDifferCli
** EXTERNAL DifferValFP
** EXTERNAL DifferNumRes?
** EXTERNAL DoIFTaylor
** EXTERNAL TaylorFResult
** EXTERNAL DoIFIsolate
** EXTERNAL IsolLPrinc
** EXTERNAL IsolFPrinc
** EXTERNAL DoIFQuadratic
** EXTERNAL DoIFManipExpr
** EXTERNAL ManipExprFP
** EXTERNAL ManipExprKeys
** EXTERNAL DoKeyManColct
** EXTERNAL DoKeyManExpnd
** EXTERNAL DoIFManipRepl
** 
** ** IFForms/TimeIF.s:
** EXTERNAL DoTimeTask
** EXTERNAL DoIFSetAlarm
** EXTERNAL DoIFSetAlm.1
** EXTERNAL SetTimeLTime
** EXTERNAL SetTimeL:1
** EXTERNAL SetTimeL:2
** EXTERNAL SetTimeLDate
** EXTERNAL SetTimeLRept
** EXTERNAL SetTimeL/1
** EXTERNAL SetTimeL/2
** EXTERNAL SetTimeL.1
** EXTERNAL SetTimeL.2
** EXTERNAL SetTimeFHour
** EXTERNAL SetTimeFMin
** EXTERNAL SetTimeFSec
** EXTERNAL SetTimeFTPost
** EXTERNAL SetTimFMDYM
** EXTERNAL SetTimFMDYD
** EXTERNAL SetTimFDMYD
** EXTERNAL SetTimFDMYM
** EXTERNAL SetTimeFYear
** EXTERNAL GetSetAlFVals
** EXTERNAL SetSetAlData
** EXTERNAL SetAlarmFP
** EXTERNAL SetAlaCliBack
** EXTERNAL SetTimeMinFP
** EXTERNAL SetTimeSecFP
** EXTERNAL SetTimeMDYMFP
** EXTERNAL SetTimeDMYMFP
** EXTERNAL SetTimeMonFP
** EXTERNAL SetTimeMDYDFP
** EXTERNAL SetTimeDMYDFP
** EXTERNAL SetTimeDayFP
** EXTERNAL SetTimeYrFP
** EXTERNAL SetAlarmReVFP
** EXTERNAL SetAlarmReUFP
** EXTERNAL DoIFSetTime&D
** EXTERNAL GetSetTDFVals
** EXTERNAL SetSetTDData
** EXTERNAL SetTimeFP
** EXTERNAL SetTimCliBack
** EXTERNAL SetTimDaFmtFP
** EXTERNAL UpdSetTimeCli
** EXTERNAL Choose&StoP2
** EXTERNAL ChooseNextMon
** EXTERNAL ChooseNextDay
** EXTERNAL TimeDaFmtDMY?
** EXTERNAL RepeatAlm?
** EXTERNAL DecompMinute
** EXTERNAL DecompSeconds
** EXTERNAL DecompHour
** EXTERNAL DecompMonth
** EXTERNAL DecompDay
** EXTERNAL DecompReptVal
** EXTERNAL DecompRepUnit
** 
** ** IFForms/AlarmBr.s:
FEXTERNAL BrowseAlarms
** EXTERNAL AlarmsCP
** EXTERNAL SetAlarmGrob
** EXTERNAL AlarmBrMenu
** EXTERNAL DoKeyEditAlm
** EXTERNAL DoKeySetAlm
** EXTERNAL DoKeyPurgeAlm
** 
** ** IFForms/StatIF.s:
FEXTERNAL DoStatTask
FEXTERNAL DoIFStat1Var
** EXTERNAL StatLSDat
** EXTERNAL StatLCol
** EXTERNAL StatFSmSDat
** EXTERNAL StatFCol
** EXTERNAL Set1VarData
** EXTERNAL Calc1VarStats
FEXTERNAL DoIFStatFreq
** EXTERNAL SetFreqData
FEXTERNAL DoIFStatFit
** EXTERNAL StatLXCol
** EXTERNAL StatLYCol
** EXTERNAL StatLModel
** EXTERNAL StatFBigSDat
** EXTERNAL StatFX&YCols
** EXTERNAL StatFModel
** EXTERNAL SetStFitData
** EXTERNAL StatFitFP
** EXTERNAL StatFitKeys
** EXTERNAL DoKeyStatPred
** EXTERNAL GetStFitFVals
** EXTERNAL DoIFStatPred
** EXTERNAL StatPredFP
** EXTERNAL StatPredKeys
** EXTERNAL DoKeyCalcPred
FEXTERNAL DoIFStatSum
** EXTERNAL SetStSumData
** EXTERNAL CalcStSumStat
** 
** ** IFForms/IOIF.s:
** EXTERNAL DoIOTask
** EXTERNAL DoIFSendTo48
** EXTERNAL SendTo48FP
** EXTERNAL SendTo48Keys
** EXTERNAL DoKeySendTo48
** EXTERNAL DoIFPrintOb
** EXTERNAL XferLPort
** EXTERNAL XferLXlat
** EXTERNAL XferLBaud
** EXTERNAL XferLParity
** EXTERNAL XferFBaud
** EXTERNAL GetPrObFVals
** EXTERNAL SetPrObData
** EXTERNAL PrintObFP
** EXTERNAL PrintObKeys
** EXTERNAL DoKeyPrObPrin
** EXTERNAL PrObCliBack
** EXTERNAL PrintObPortFP
** EXTERNAL UpdatePrObCli
** EXTERNAL XferInfraFP
** EXTERNAL XferWireFP
** EXTERNAL XferInfrared?
** EXTERNAL DoIFXferVar
** EXTERNAL GetXfVarFVals
** EXTERNAL SetXfVarData
** EXTERNAL XferVarFP
** EXTERNAL XferVarKeys
** EXTERNAL DoKeyXfVaKRec
** EXTERNAL DoKeyXfVaGet
** EXTERNAL DoKeyXfVaSend
** EXTERNAL XfVarCliBack
** EXTERNAL XferVarPortFP
** EXTERNAL XferVarTypeFP
** EXTERNAL UpdateXfVaCli
** EXTERNAL XferVarNameFP
** EXTERNAL ChLoc/RemVars
** EXTERNAL ChooseLocVars
** EXTERNAL ChooseRemVars
** EXTERNAL ChRemVarsCP
** EXTERNAL SetRemDirProm
** EXTERNAL RemVarMenu
** EXTERNAL DoIFChRemDir
** EXTERNAL ChRemDirNamFP
** EXTERNAL ChRemDirEKeys
** EXTERNAL XferVarKeWiFP
** EXTERNAL XferVarKermFP
** EXTERNAL XferTypeKerm?
** 
** ** IFForms/ModesIF.s:
** EXTERNAL DoIFModes
** EXTERNAL GetModesFVals
** EXTERNAL SetModesData
** EXTERNAL ModesFP
** EXTERNAL ModesMenuKeys
** EXTERNAL DoKeyBrFlags
** EXTERNAL ModesDisFmtFP
** EXTERNAL UpdModesCli
** EXTERNAL ModesPlacesFP
** EXTERNAL ModesFDfltFP
** EXTERNAL ?SetModeKeyOb
** EXTERNAL ToggleAngle
** EXTERNAL TogglCoordSys
** EXTERNAL DispFmtStd?
** 
** ** IFForms/FlagBr.s:
FEXTERNAL BrowseFlags
** *EXTERNAL FlagsCP
** *EXTERNAL UnUsedBW3
** *EXTERNAL SetFlagGrob
** *EXTERNAL FlagBrMenu
** *EXTERNAL DoKeyTogFlag
** *EXTERNAL GetFlagState
** *EXTERNAL SetFlagState
** 
** ** IFForms/MemBr.s:
** EXTERNAL BrowseMem
FEXTERNAL BrowseMem.1
** EXTERNAL MemBrCP
** EXTERNAL SetDirPrompt
** EXTERNAL DOTCVARS
** EXTERNAL MemBrNormMenu
** EXTERNAL MemBrMaxMenu
** EXTERNAL DoKeyEditVar
** EXTERNAL DoIFEditVar
** EXTERNAL DoKeyChoosDir
** EXTERNAL ChooseDir
** EXTERNAL ChooseDirCP
** EXTERNAL GetDir
** EXTERNAL SetVarItem
** EXTERNAL DoKeyNewVar
** EXTERNAL DoIFNewVar
** EXTERNAL NewVarFP
** EXTERNAL NewVarCliBack
** EXTERNAL NewVarObFP
** EXTERNAL NewVarDirFP
** EXTERNAL UpdNewVarCli
** EXTERNAL NewVarDir?
** EXTERNAL DoKeyRclVar
** EXTERNAL DoKeyCopyVar
** EXTERNAL DoIFCopyVar
** EXTERNAL CopyVarFDest
** EXTERNAL CopyVarFP
** EXTERNAL CopyVarVarFP
** EXTERNAL DoKeyMoveVar
** EXTERNAL DoIFMoveVar
** EXTERNAL MoveVarFP
** EXTERNAL DoKeyPurgeVar
** EXTERNAL DoKeySizeVar
** 
** ** IFForms/DefectFix.s:
** EXTERNAL SetDiffEqData
** EXTERNAL IRtVarFP
** EXTERNAL ?TogPlAngle
** 
** ** IFForms/link.a:
** 
** ** IFForms/end.a:
** 
** ** IFXlats/head.a:
** 
** ** IFXlats/SolvIFXlat.s:
** EXTERNAL GetIRootFunc
** EXTERNAL SetIRootFunc
** EXTERNAL CalcIRootVars
** EXTERNAL CalcIRootSolv
** EXTERNAL CalcIRootExpr
** EXTERNAL GetIRtVarVal
** EXTERNAL SetIRtVarVal
** EXTERNAL CalcPolyCSymb
** EXTERNAL FvalNullErr
** EXTERNAL CalcPolyRSymb
** EXTERNAL CalcPolyCoeff
** EXTERNAL CalcPolyRoots
** EXTERNAL DoArrayEdit
** EXTERNAL CalcLinSysX
** EXTERNAL CalcLinSysB
** EXTERNAL GetFinaN
** EXTERNAL SetFinaN
** EXTERNAL FvalNullDrop
** EXTERNAL GetFinaI%/YR
** EXTERNAL SetFinaI%/YR
** EXTERNAL GetFinaPV
** EXTERNAL SetFinaPV
** EXTERNAL GetFinaPMT
** EXTERNAL SetFinaPMT
** EXTERNAL GetFinaFV
** EXTERNAL SetFinaFV
** EXTERNAL GetFinaP/YR
** EXTERNAL SetFinaP/YR
** EXTERNAL GetFinaPmtMod
** EXTERNAL SetFinaPmtMod
** EXTERNAL CalcFinaN
** EXTERNAL CalcFinaI%/YR
** EXTERNAL CalcFinaPV
** EXTERNAL CalcFinaPMT
** EXTERNAL CalcFinaFV
** EXTERNAL CalcFinaAmort
** EXTERNAL DecompCurrenc
** EXTERNAL FinPayTimes
** EXTERNAL PCFinanceBeg
** EXTERNAL PCFinanceEnd
** 
** ** IFXlats/PlotIFXlat.s:
** EXTERNAL GetFuncFuncs
** EXTERNAL SetFuncFuncs
** EXTERNAL GetDiffFunc
** EXTERNAL Get1stFunc
** EXTERNAL GetDiffSFuncs
** EXTERNAL SetDiffSFuncs
** EXTERNAL UnUsedBW6
** EXTERNAL SetFuncIndep
** EXTERNAL FuncIRange
** EXTERNAL PolaIRange
** EXTERNAL DiffIRange
** EXTERNAL SetFuncIRange
** EXTERNAL SetPolaIRange
** EXTERNAL SetDiffIRange
** EXTERNAL GetFuncHRange
** EXTERNAL UnUsedBW8
** EXTERNAL UnUsedBW9
** EXTERNAL SetConiDep
** EXTERNAL TrutDRange
** EXTERNAL SetTrutDRange
** EXTERNAL GetFuncVRange
** EXTERNAL UnUsedBW10
** EXTERNAL FuncStep
** EXTERNAL SetFuncStep
** EXTERNAL CalcFuncStep
** EXTERNAL Xratio
** EXTERNAL CalcParaStep
** EXTERNAL CalcPolaStep
** EXTERNAL UnUsedBW5
** EXTERNAL SetDiffStep
** EXTERNAL UnUsedBW11
** EXTERNAL CalcHistWid
** EXTERNAL UnUsedBW12
** EXTERNAL GetHistData
FEXTERNAL SetHistData
** EXTERNAL UnUsedBW13
** EXTERNAL UnUsedBW14
** EXTERNAL UnUsedBW15
** EXTERNAL UnUsedBW16
** EXTERNAL GetTCPlotType
** EXTERNAL PlotTypes
** EXTERNAL TCFunc
** EXTERNAL TCPolar
** EXTERNAL TCConic
** EXTERNAL TCTruth
** EXTERNAL TCParam
** EXTERNAL TCDiffEq
** EXTERNAL TCHist
** EXTERNAL TCBar
** EXTERNAL TCScatter
** EXTERNAL TCSlopefield
** EXTERNAL TCWireframe
** EXTERNAL TCPContour
** EXTERNAL TCYSlice
** EXTERNAL TCGridmap
** EXTERNAL TCParSurface
** EXTERNAL GetFuncConnec
** EXTERNAL SetFuncConnec
** EXTERNAL GetFuncSimult
** EXTERNAL SetFuncSimult
** EXTERNAL DiffSInit
** EXTERNAL SetDiffSInit
** EXTERNAL CalcDiffSFin
** EXTERNAL CalcSDiffSFin
** EXTERNAL DiffErrTol
** EXTERNAL SetDiffErrTol
** EXTERNAL FuncTicks
** EXTERNAL SetFuncTicks
** EXTERNAL GetFuncLabels
** EXTERNAL SetFuncLabels
** EXTERNAL GetFuncOrigin
** EXTERNAL SetFuncOrigin
** EXTERNAL GetFuncAxes
** EXTERNAL SetFuncAxes
** EXTERNAL GetDiffVars
** EXTERNAL $>%
** EXTERNAL SetDiffVars
** EXTERNAL GetZoomSpecs
** EXTERNAL SetZoomSpecs
** EXTERNAL DoResetPlot
FEXTERNAL DoErase
FEXTERNAL DoDraw
FEXTERNAL DIFFEQPLOT
** EXTERNAL RP>EQUALLooku
** 
** ** IFXlats/Pl3dIFXlat.s:
** EXTERNAL GetSlopIStep
FEXTERNAL SetSlopIStep
** EXTERNAL GetSlopDStep
FEXTERNAL SetSlopDStep
** EXTERNAL GetSlopXRange
FEXTERNAL SetSlopXRange
** EXTERNAL GetSlopYRange
FEXTERNAL SetSlopYRange
** EXTERNAL GetWireZRange
FEXTERNAL SetWireZRange
** EXTERNAL GetWireXYZE
FEXTERNAL SetWireXYZE
** EXTERNAL GetGridXXRng
FEXTERNAL SetGridXXRng
** EXTERNAL GetGridYYRng
FEXTERNAL SetGridYYRng
FEXTERNAL CkVPARS
FEXTERNAL CkVPErr
*FEXTERNAL StdVPAR
** EXTERNAL GetVPARels
** EXTERNAL PutVPARels
FEXTERNAL StoVPAR
** 
** ** IFXlats/SymbIFXlat.s:
** EXTERNAL GetSymbExpr
** EXTERNAL SetSymbExpr
** EXTERNAL GetSymbSymRes
** EXTERNAL GetSymbPriSol
** EXTERNAL SetSymbPriSol
** EXTERNAL CalcIntegrate
** EXTERNAL CalcDifferent
** EXTERNAL CalcStepDiff
** EXTERNAL CalcTaylor
** EXTERNAL CalcIsolate
** EXTERNAL CalcQuadratic
** EXTERNAL CalcManColct
** EXTERNAL CalcManExpnd
** EXTERNAL CalcManipRepl
** EXTERNAL ResultTypes
** EXTERNAL RCSymbResult
** EXTERNAL RCNumResult
** 
** ** IFXlats/TimeIFXlat.s:
** EXTERNAL GetTimeTime
** EXTERNAL XlatTime
** EXTERNAL SetTimeTime
** EXTERNAL GetTimeDate
** EXTERNAL XlatDate
** EXTERNAL SetTimeDate
** EXTERNAL CalcLastDay
FEXTERNAL #YR>%
** EXTERNAL CalcDayOfWeek
** EXTERNAL SetTimeAlarm
** EXTERNAL SetTimeTimFmt
** EXTERNAL GetTimeDatFmt
** EXTERNAL SetTimeDatFmt
** EXTERNAL MonthOfDays
** EXTERNAL 5Years
** EXTERNAL %0To%59
** EXTERNAL %1To%10
** EXTERNAL TimeHours
** EXTERNAL TimePostfixes
** EXTERNAL PCPostfixAM
** EXTERNAL PCPostfixPM
** EXTERNAL PCPostfix24
** EXTERNAL TimeMonths
** EXTERNAL MCJan
** EXTERNAL MCFeb
** EXTERNAL MCMar
** EXTERNAL MCApr
** EXTERNAL MCMay
** EXTERNAL MCJun
** EXTERNAL MCJul
** EXTERNAL MCAug
** EXTERNAL MCSep
** EXTERNAL MCOct
** EXTERNAL MCNov
** EXTERNAL MCDec
** EXTERNAL TimeRepUnits
** EXTERNAL RCReptWeek
** EXTERNAL %WeekTicks
** EXTERNAL RCReptDay
** EXTERNAL %DayTicks
** EXTERNAL RCReptHour
** EXTERNAL %HourTicks
** EXTERNAL RCReptMin
** EXTERNAL %MinTicks
** EXTERNAL RCReptSec
** EXTERNAL %SecTicks
** EXTERNAL TimeRePlUnits
** EXTERNAL TimeDateFmts
** EXTERNAL DCDateM/D/Y
** EXTERNAL DCDateD.M.Y
** 
** ** IFXlats/AlarBrXlat.s:
** EXTERNAL GetAlarmCount
** EXTERNAL GetAlarm
** EXTERNAL DecompAlarm
** EXTERNAL GetAlarmMsg
** EXTERNAL GetAlarmTime
** EXTERNAL GetAlarmDate
** EXTERNAL GetAlarmRept
** EXTERNAL PurgeAlarm
** 
** ** IFXlats/StatIFXlat.s:
** EXTERNAL GetStatSDat
** EXTERNAL SetStatSDat
** EXTERNAL GetStatModel
** EXTERNAL GetStatCols
** EXTERNAL SetStatCols
** EXTERNAL Calc1VarMean
** EXTERNAL Calc1VarSDev
** EXTERNAL Calc1VarVar
** EXTERNAL Calc1VarTot
** EXTERNAL Calc1VarMax
** EXTERNAL Calc1VarMin
** EXTERNAL CalcFreqStats
** EXTERNAL CalcStatFit
** EXTERNAL CalcStatXPred
** EXTERNAL CalcStatYPred
** EXTERNAL CalcStatXSum
** EXTERNAL CalcStatYSum
** EXTERNAL CalcStatX2Sum
** EXTERNAL CalcStatY2Sum
** EXTERNAL CalcStatXYSum
** EXTERNAL CalcStatN
** EXTERNAL 1VarStatTypes
** EXTERNAL SCSampleStat
** EXTERNAL SCPopulStat
** EXTERNAL StatModels
** EXTERNAL MCStatLin
** EXTERNAL MCStatLog
** EXTERNAL MCStatExp
** EXTERNAL MCStatPower
** EXTERNAL MCStatBest
** 
** ** IFXlats/IOIFXlat.s:
** EXTERNAL DoIOSendTo48
** EXTERNAL IOIRsetup
** EXTERNAL IOIRrestore
** EXTERNAL FvalNullChk
** EXTERNAL DoIOGetVar
** EXTERNAL GetPrObPort
** EXTERNAL SetPrObPort
** EXTERNAL SetPrObDelay
** EXTERNAL GetDlyLinLen
** EXTERNAL GetXferLinefd
** EXTERNAL SetXferLinefd
** EXTERNAL SetXferLinLen
** EXTERNAL DoIOPrintOb
** EXTERNAL GetXferPort
** EXTERNAL SetXferPort
** EXTERNAL GetXferFormat
** EXTERNAL SetXferFormat
** EXTERNAL GetXlCkBdPar
** EXTERNAL SetXlCkBdPar
** EXTERNAL GetXferOverwr
** EXTERNAL SetXferOverwr
** EXTERNAL GetXferRemD&F
** EXTERNAL CalcIORemFile
** EXTERNAL CalcIORemDirs
** EXTERNAL FilterDirs
** EXTERNAL DupRemDir?
** EXTERNAL DoQuietPkt
** EXTERNAL DoIOChRemDir
** EXTERNAL DoIOKGetVar
** EXTERNAL DoIOKRecvVar
** EXTERNAL DoIOXVar
** EXTERNAL DoIOKSendVar
** EXTERNAL StoSysFlag
** EXTERNAL IOgetPRTPAR
** EXTERNAL IOnewPRTPAR
** EXTERNAL IOgetIOPAR
** EXTERNAL XferPorts
** EXTERNAL XCInfrared
** EXTERNAL XCWire
** EXTERNAL XferTypes
** EXTERNAL TCKermit
** EXTERNAL TCXModem
** EXTERNAL XferBauds
** EXTERNAL XferParities
** EXTERNAL PCNone
** EXTERNAL PCOdd
** EXTERNAL PCEven
** EXTERNAL PCMark
** EXTERNAL PCSpace
** EXTERNAL XferFormats
** EXTERNAL FCAscii
** EXTERNAL FCBinary
** EXTERNAL XferXlats
** EXTERNAL XCNone
** EXTERNAL XCNewline
** EXTERNAL XCUpperLo
** EXTERNAL XCUpperAll
** EXTERNAL XferChecksums
** EXTERNAL CCCksum1
** EXTERNAL CCCksum2
** EXTERNAL CCCksum3
** 
** ** IFXlats/ModeIFXlat.s:
** EXTERNAL GetModeDisFmt
** EXTERNAL GetNumDigs
** EXTERNAL GetModeAngle
** EXTERNAL GetModeCoord
** EXTERNAL GetModeBeeper
** EXTERNAL SetModeBeeper
** EXTERNAL GetModeClock
** EXTERNAL SetModeClock
** EXTERNAL GetModeFComma
** EXTERNAL SetModeFComma
** EXTERNAL ModeAngSetup
** EXTERNAL DispFormats
** EXTERNAL FCStd
** EXTERNAL FCFix
** EXTERNAL FCSci
** EXTERNAL FCEng
** EXTERNAL DecPlaces
** EXTERNAL AngleMeasures
** EXTERNAL ACDegrees
** EXTERNAL ACRadians
** EXTERNAL ACGrads
** EXTERNAL CoordSystems
** EXTERNAL CCRect
** EXTERNAL CCPolar
** EXTERNAL CCSphere
** EXTERNAL SetCoordRect
** EXTERNAL SetCoordPolar
** EXTERNAL SetCoordSpher
** 
** ** IFXlats/FlagBrXlat.s:
** *EXTERNAL FlagList
** *EXTERNAL GetFlagCount
** *EXTERNAL GetFlag
** *EXTERNAL DecompFlag
** *EXTERNAL GetFlagNum
** 
** ** IFXlats/MemBrXlat.s:
** EXTERNAL GetVarCount
** EXTERNAL VType#Test
** EXTERNAL UnusedTB1
** EXTERNAL SetVarOb
** EXTERNAL DecompVar
** EXTERNAL GetCurDir&Num
** EXTERNAL GetNextDir
** EXTERNAL GetNextDir?
** EXTERNAL GetPrevDir
** EXTERNAL CreateDir
** EXTERNAL DecompDir
** EXTERNAL CopyVar
** EXTERNAL MoveCopyVar
** EXTERNAL CheckPathObj
** EXTERNAL MoveVar
** EXTERNAL PurgeVar
** EXTERNAL GetVarSize
** EXTERNAL GetAvMemSize
** 
** ** IFXlats/link.a:
** 
** ** IFXlats/end.a:
** 
** ** Choose/head.a:
** 
** Choose/ChooseMain.s:
EXTERNAL Choose
* EXTERNAL ChooseDisp
* EXTERNAL ?DispBorder
* EXTERNAL ?DispPrompt
* EXTERNAL ?DispList
* EXTERNAL ChooseMenu0
* EXTERNAL ChooseMenu1
* EXTERNAL ChooseMenu2
* EXTERNAL ChooseKeys
* EXTERNAL ChooseKeyNS
* EXTERNAL ChooseKeyLS
* EXTERNAL ChooseKeyRS
* EXTERNAL ChooseKeyANS
* EXTERNAL ChooseKeyALS
* EXTERNAL ChooseKeyARS
* EXTERNAL ?DoAccKeyOb
* EXTERNAL >AccKeyObT
* EXTERNAL AccessByChr
* EXTERNAL CHR>UCaseCHR
* EXTERNAL 1stAlphaChr
* EXTERNAL AlphaNumeric?
* EXTERNAL AdjLFoc&Pos
* EXTERNAL ScrLUp&Disp
* EXTERNAL ScrLDown&Disp
* EXTERNAL MoveHighlight
* EXTERNAL ?AdjFocusPos
* EXTERNAL SelLUp&Rep
* EXTERNAL SelLUp
* EXTERNAL SelLDown&Rep
* EXTERNAL SelLDown
* EXTERNAL SelLPgUp
* EXTERNAL SelLPgDown
* EXTERNAL SelLFarUp
* EXTERNAL SelLFarDown
* EXTERNAL LEPostCreate
* EXTERNAL LESetRowCount
* EXTERNAL LESetRowHeigh
* EXTERNAL LESet1stRowXY
* EXTERNAL LESetRowWidth
* EXTERNAL LESetFocusPos
* EXTERNAL LEDone
* EXTERNAL LEQuit
FEXTERNAL DoCKeyCheck
FEXTERNAL DoCKeyChAll
FEXTERNAL DoCKeyUnChAll
FEXTERNAL DoCKeyCancel
FEXTERNAL DoCKeyOK
* EXTERNAL LEDispBorder
FEXTERNAL LEDispPrompt
* EXTERNAL LESetPGrob
* EXTERNAL LESetMaxPGro
* EXTERNAL LESetNormPGro
* EXTERNAL LESetPDecomp
FEXTERNAL LEDispList
FEXTERNAL LEDispItem
* EXTERNAL LESetIGrob
* EXTERNAL LESetIDecomp
* EXTERNAL LESaveCovWind
* EXTERNAL LERestCovWind
* EXTERNAL LESetPickType
* EXTERNAL LESetViewType
* EXTERNAL LESetMenu
* EXTERNAL LESetItemCt
* EXTERNAL LESetItem
* EXTERNAL LEPick
* EXTERNAL DefaultSize?
* EXTERNAL DispDfltBord
* EXTERNAL GetPromptLoc
* EXTERNAL ?PHeight+
* EXTERNAL ?PHeight-
* EXTERNAL ?U/DWidth+
* EXTERNAL ?U/DWidth-
* EXTERNAL MoreU/D?
* EXTERNAL BlankPrompt
* EXTERNAL InitLFoc&Pick
* EXTERNAL IsPickedItem?
* EXTERNAL DispPBorder
* EXTERNAL LHighlight
* EXTERNAL LUnHighlight
* EXTERNAL ?DispMoreU/D
* EXTERNAL MoreUp?
* EXTERNAL MoreDown?
* EXTERNAL grobMoreUp
* EXTERNAL grobMoreDown
* EXTERNAL grobNoMore
* EXTERNAL EvChooseProc
* EXTERNAL DoPrompt?
* EXTERNAL GetDASpecFlag
* EXTERNAL PutDASpecFlag
* EXTERNAL ?FocusAtBot
* EXTERNAL ?FocusAtTop
* EXTERNAL EmptyList?
* EXTERNAL grobPOBox2
* EXTERNAL grobPOBox3
* EXTERNAL grobPOBox4
* EXTERNAL grobPOBox5
* EXTERNAL grobPOBoxP2
* EXTERNAL grobPOBoxP3
* EXTERNAL grobPOBoxP4

** Choose/CustChoose.s:
FEXTERNAL Ck&DoChoose
** EXTERNAL NotUsed
** EXTERNAL UChooseFmt
EXTERNAL ChooseSimple
FEXTERNAL DoError
FEXTERNAL DoErrorBox

** Choose/link.a:

** Choose/end.a:

** AUFR/head.a:

** AUFR/AUFRpl3d.s:
EXTERNAL xXVOL
EXTERNAL xYVOL
EXTERNAL xZVOL
EXTERNAL xXXRNG
EXTERNAL xYYRNG
EXTERNAL xEYEPT
EXTERNAL xNUMX
EXTERNAL xNUMY
EXTERNAL xWIREFRAME
EXTERNAL xPARSURFACE
EXTERNAL xGRIDMAP
EXTERNAL xYSLICE
EXTERNAL xSLOPEFIELD
EXTERNAL xPCONTOUR
EXTERNAL xDIFFEQ
EXTERNAL xVERSION

** 
** ** AUFR/AUFRMisc.s:
EXTERNAL xATICK
EXTERNAL xTEACH
EXTERNAL xCLTEACH
EXTERNAL xRECT
EXTERNAL xCYLIN
EXTERNAL xSPHERE
EXTERNAL xMERGE1
EXTERNAL xFREE1
EXTERNAL xANIMATE
FEXTERNAL GoDoAnimate
FEXTERNAL DOPLAYMOV
FEXTERNAL DoPlayMov
EXTERNAL xLININ
FEXTERNAL XEQSYMLIN
** 
** ** AUFR/AUFRBrowse.s:
EXTERNAL xLIBEVAL
FEXTERNAL DoLibEval
** 
** ** AUFR/AUFRConst.s:
EXTERNAL xCONLIB
EXTERNAL xCONST

** AUFR/AUFREqlib.s:
EXTERNAL xEQNLIB
EXTERNAL xSOLVEQN
** 
** ** AUFR/AUFRDft.s:
EXTERNAL xFFT
EXTERNAL xIFFT
EXTERNAL xNDIST
EXTERNAL xPSDEV
EXTERNAL xPVAR
EXTERNAL xPCOV
** 
** ** AUFR/AUFRDifeq.s:
EXTERNAL xRKF
EXTERNAL xRKFSTEP
EXTERNAL xRKFERR
EXTERNAL xRRK
EXTERNAL xRRKSTEP
EXTERNAL xRSBERR
** 
** ** AUFR/AUFRLinAlg.s:
EXTERNAL xCOND
EXTERNAL xTRACE
EXTERNAL xSRAD
EXTERNAL xSNRM
EXTERNAL xRANK
EXTERNAL xLSQ
EXTERNAL xEGV
EXTERNAL xEGVL
EXTERNAL xSVD
EXTERNAL xSVL
EXTERNAL xLU
EXTERNAL xQR
EXTERNAL xLQ
EXTERNAL xSCHUR
EXTERNAL xRREF

FEXTERNAL SWAPROWS

** 
** ** AUFR/AUFRMManp.s:
EXTERNAL xRANM
EXTERNAL x>ROW
EXTERNAL xROW>
EXTERNAL x>COL
EXTERNAL xCOL>
EXTERNAL x>DIAG
EXTERNAL xDIAG>
EXTERNAL xROW-
EXTERNAL xROW+
EXTERNAL xCOL-
EXTERNAL xCOL+
EXTERNAL xRSWP
EXTERNAL xCSWP
EXTERNAL xRCI
EXTERNAL xRCIJ
FEXTERNAL XEQDIAG>L
FEXTERNAL XEQDIAG>R
FEXTERNAL XEQRANM
** 
** ** AUFR/AUFRPolyN.s:
EXTERNAL xPROOT
EXTERNAL xPCOEF
EXTERNAL xPEVAL
** 
** ** AUFR/AUFRTVM.s:
EXTERNAL xTVM
EXTERNAL xTVMBEG
EXTERNAL xTVMEND
EXTERNAL xTVMROOT
EXTERNAL xAMORT
** 
** ** AUFR/AUFRIF.s:
EXTERNAL xINFORM
EXTERNAL xCHOOSE
EXTERNAL xMSGBOX

** ** AUFR/AUFRXmodem.s:
EXTERNAL xXSEND
EXTERNAL xXRECV
** 
** ** AUFR/AUFRList.s:
EXTERNAL xHEAD
EXTERNAL xTAIL
EXTERNAL xSEQ
EXTERNAL xDOSUBS
EXTERNAL x\9BLIST
EXTERNAL xNSUB
EXTERNAL xENDSUB
EXTERNAL xSTREAM
EXTERNAL x\85LIST
EXTERNAL ChkDaList
EXTERNAL x\9CLIST
EXTERNAL xDOLIST
EXTERNAL xADD
EXTERNAL xREVLIST
EXTERNAL xSORT
** 
** ** AUFR/AUFRMes.s:
EXTERNAL xMSOLVR
EXTERNAL xMINIT
EXTERNAL xMITM
EXTERNAL xMUSER
EXTERNAL xMCALC
EXTERNAL xMROOT
** 
** ** AUFR/AUFRUtil.s:
EXTERNAL xMINEHUNT
EXTERNAL xZFACTOR
EXTERNAL xFANNING
EXTERNAL xDARCY
EXTERNAL xF0lambda
EXTERNAL xSIDENS
EXTERNAL xTDELTA
EXTERNAL xTINC
EXTERNAL xgmol
EXTERNAL xlbmol
EXTERNAL xrpm
EXTERNAL xdB
** 
** ** AUFR/AUFRMisc2.s:
EXTERNAL xPINIT
** 
** ** AUFR/TABLEAB.a:
** 
** ** AUFR/end.a:
** 
** ** MenuTabs/head.a:
** 
** MenuTabs/Tables.s:
EXTERNAL LastMenu
EXTERNAL CustomMenu
EXTERNAL VarMenu
EXTERNAL MathMenu
EXTERNAL VectorMenu
EXTERNAL MatrixMenu
EXTERNAL MxMkMenu
EXTERNAL NormMenu
EXTERNAL FactrMenu
EXTERNAL ColMenu
EXTERNAL RowMenu
EXTERNAL List1Menu
EXTERNAL HypMenu
EXTERNAL ProbMenu
EXTERNAL RealMenu
EXTERNAL BaseMenu
EXTERNAL LogicMenu
EXTERNAL BitMenu
EXTERNAL ByteMenu
EXTERNAL FftMenu
EXTERNAL CmplxMenu
EXTERNAL ConstMenu
EXTERNAL ProgMenu
EXTERNAL BrchMenu
EXTERNAL IfMenu
EXTERNAL CaseMenu
EXTERNAL StrtMenu
EXTERNAL ForMenu
EXTERNAL GXEditMenu
EXTERNAL DoMenu
EXTERNAL Solvr1Menu
EXTERNAL WhileMenu
EXTERNAL TestMenu
EXTERNAL TypeMenu
EXTERNAL List2Menu
EXTERNAL ElemMenu
EXTERNAL ProcMenu
EXTERNAL GrobMenu
EXTERNAL PictMenu
EXTERNAL InMenu
EXTERNAL OutMenu
EXTERNAL RunMenu
EXTERNAL UCatMenu
EXTERNAL ULengthMenu
EXTERNAL UAreaMenu
EXTERNAL UVolumeMenu
EXTERNAL UTimeMenu
EXTERNAL USpeedMenu
EXTERNAL UMassMenu
EXTERNAL UForceMenu
EXTERNAL UEnergyMenu
EXTERNAL UPowerMenu
EXTERNAL UPressMenu
EXTERNAL UTempMenu
EXTERNAL UElecMenu
EXTERNAL UAngleMenu
EXTERNAL ULightMenu
EXTERNAL URadiumMenu
EXTERNAL UViscMenu
EXTERNAL UComMenu
EXTERNAL IfErrMenu
EXTERNAL ErrorMenu
EXTERNAL CharMenu
EXTERNAL ModesMenu
EXTERNAL FmtMenu
EXTERNAL AngleMenu
EXTERNAL FlagMenu
EXTERNAL KeysMenu
EXTERNAL MenuMenu
EXTERNAL MiscMenu
EXTERNAL MemMenu
EXTERNAL DirMenu
EXTERNAL ArithMenu
EXTERNAL StackMenu
EXTERNAL SolveMenu
EXTERNAL RootMenu
EXTERNAL DifeqMenu
EXTERNAL PolyMenu
EXTERNAL SysMenu
EXTERNAL TvmMenu
EXTERNAL Solvr2Menu
EXTERNAL PlotMenu
EXTERNAL PT1Menu
EXTERNAL PparMenu
EXTERNAL 3dMenu
EXTERNAL PT2Menu
EXTERNAL VparMenu
EXTERNAL PlStMenu
EXTERNAL PT3Menu1
EXTERNAL SparMenu1
EXTERNAL ModlMenu1
EXTERNAL SdatMenu1
EXTERNAL PlFlMenu
EXTERNAL SymbMenu
EXTERNAL TimeMenu
EXTERNAL AlarmMenu
EXTERNAL StatMenu
EXTERNAL DataMenu
EXTERNAL SparMenu2
EXTERNAL ModlMenu2
EXTERNAL 1VarMenu
EXTERNAL StPlMenu
EXTERNAL FitMenu
EXTERNAL SumsMenu
EXTERNAL IOMenu
EXTERNAL ServrMenu
EXTERNAL IOparMenu
EXTERNAL PrintMenu
EXTERNAL PRparMenu
EXTERNAL SerlMenu
EXTERNAL LibComMenu
EXTERNAL PortCatMenu
EXTERNAL LibCatMenu
EXTERNAL EqLibMenu
EXTERNAL EqLibMenu2
EXTERNAL CoLibMenu
EXTERNAL MesMenu
EXTERNAL UtilsMenu

** MenuTabs/link.a:

** MenuTabs/end.a:

** MenuTabs2/head.a:

** MenuTabs2/Tables2.s:
EXTERNAL PlotArry
EXTERNAL PT1Arry
EXTERNAL PparArry
EXTERNAL PT2Arry
EXTERNAL VparArry
EXTERNAL PT3Arry1
EXTERNAL SparArry1
EXTERNAL ModlArry1
EXTERNAL SparArry2
EXTERNAL ModlArry2
EXTERNAL IOparArry
EXTERNAL PRparArry

** MenuTabs2/link.a:

** MenuTabs2/end.a:

** MenuKeys/head.a:

** MenuKeys/Keys.s:
EXTERNAL BadMenuKey
EXTERNAL EqKey
EXTERNAL SparKey
EXTERNAL SdatKey
EXTERNAL InfoKey
EXTERNAL RectKey
EXTERNAL CylinKey
EXTERNAL SphereKey
EXTERNAL ToMxMkMenu
EXTERNAL ToNormMenu
EXTERNAL ToFctrMenu
EXTERNAL ToColMenu
EXTERNAL ToRowMenu
EXTERNAL ToMatrxMenu
EXTERNAL HexKey
EXTERNAL DecKey
EXTERNAL OctKey
EXTERNAL BinKey
EXTERNAL ToLogicMenu
EXTERNAL ToBitMenu
EXTERNAL ToByteMenu
EXTERNAL ToBase.2Menu
EXTERNAL IfKey
EXTERNAL CaseKey
EXTERNAL StartKey
EXTERNAL ForKey
EXTERNAL DoKey
EXTERNAL WhileKey
EXTERNAL ToBrchMenu
EXTERNAL ToElemMenu
EXTERNAL ToProcMenu
EXTERNAL ToList2Menu
EXTERNAL DbugKey
EXTERNAL SstKey
EXTERNAL SstNxKey
EXTERNAL Sst?Key
EXTERNAL IfErrKey
EXTERNAL ToErrorMenu
EXTERNAL ToFmtMenu
EXTERNAL ToAngleMenu
EXTERNAL ToFlagMenu
EXTERNAL ToKeysMenu
EXTERNAL ToMenuMenu
EXTERNAL ToMiscMenu
EXTERNAL ToModesMenu
EXTERNAL StdKey
EXTERNAL FixKey
EXTERNAL SciKey
EXTERNAL EngKey
EXTERNAL DecPtTogKey
EXTERNAL MLTogKey
EXTERNAL DegKey
EXTERNAL RadKey
EXTERNAL GradKey
EXTERNAL FlagResetKy
EXTERNAL Id_CST
EXTERNAL Beep?Key
EXTERNAL Clock?Key
EXTERNAL Sym?Key
EXTERNAL LstStk?Key
EXTERNAL LstArg?Key
EXTERNAL LstCmd?Key
EXTERNAL Info?Key
EXTERNAL ToDirMenu
EXTERNAL ToArithMenu
EXTERNAL ToMemMenu
EXTERNAL DropNKey
EXTERNAL ToSolveMenu
EXTERNAL ToSolvr1Menu
EXTERNAL ToSolvr2Menu
EXTERNAL AmortKey
EXTERNAL PyrKey
EXTERNAL Beg?Key
EXTERNAL ToPT1Menu
EXTERNAL ToPparMenu
EXTERNAL DrawKey
EXTERNAL To3dMenu
EXTERNAL ToPlStMenu
EXTERNAL ToPlFlMenu
EXTERNAL ToPlotMenu
EXTERNAL ToPlot.2Menu
EXTERNAL ToPlot?Menu
EXTERNAL PparResetKy
EXTERNAL PparKey
EXTERNAL ToPT2Menu
EXTERNAL ToVparMenu
EXTERNAL To3d?Menu
EXTERNAL VparKey
EXTERNAL VparResetKy
EXTERNAL ToPT3Menu1
EXTERNAL ToSdatMenu1
EXTERNAL ToSparMenu1
EXTERNAL ToPlSt?Menu
EXTERNAL ToModlMenu1
EXTERNAL SparResetKy
EXTERNAL ToSpr?Menu1
EXTERNAL Axes?Key
EXTERNAL Cnct?Key
EXTERNAL Simu?Key
EXTERNAL ToAlarmMenu
EXTERNAL ToTimeMenu
EXTERNAL ToDataMenu
EXTERNAL ToSparMenu2
EXTERNAL To1VarMenu
EXTERNAL ToStPlMenu
EXTERNAL ToFitMenu
EXTERNAL ToSumsMenu
EXTERNAL ToStatMenu
EXTERNAL BarpKey
EXTERNAL HistKey
EXTERNAL ScatKey
EXTERNAL ToLCDKey
EXTERNAL CLLCDKey
EXTERNAL ToModlMenu2
EXTERNAL ToSpr?Menu2
EXTERNAL ToServrMenu
EXTERNAL ToIOparMenu
EXTERNAL ToPrintMenu
EXTERNAL ToSerlMenu
EXTERNAL ToIOMenu
EXTERNAL ToIO.2Menu
EXTERNAL IR?Key
EXTERNAL ASCII?Key
EXTERNAL IOparKey
EXTERNAL IOResetKey
EXTERNAL ToPRparMenu
EXTERNAL PRparKey
EXTERNAL PRResetKey
EXTERNAL ToPortMenu
EXTERNAL ToEqLibMenu

** MenuKeys/link.a:

** MenuKeys/end.a:

** Difeq/head.a:

** Difeq/Plot.s:
FEXTERNAL p_rkf
FEXTERNAL p_rkfx
FEXTERNAL gdes_prep
FEXTERNAL p_rsb
FEXTERNAL p_rsbx

** Difeq/RKF.s:
FEXTERNAL rkfe
FEXTERNAL rkfErrorH
FEXTERNAL rkfex
FEXTERNAL rkferx
FEXTERNAL rkfeax
FEXTERNAL rkfs
FEXTERNAL rkfsx
FEXTERNAL rkf_reso
*FEXTERNAL do_rkfs
FEXTERNAL rkf
FEXTERNAL rkfx
FEXTERNAL rkfx_init
FEXTERNAL rkfGetVars
FEXTERNAL rkfGetTolH

** Difeq/RSB.s:
FEXTERNAL rsbe
FEXTERNAL rsbErrorH
FEXTERNAL rsbex
FEXTERNAL rsberx
FEXTERNAL rsbeax
FEXTERNAL rsbs
FEXTERNAL rsbsx
FEXTERNAL rsb_reso
FEXTERNAL do_rrkfs
FEXTERNAL rsbsx_done
FEXTERNAL rsb
FEXTERNAL rsbx
FEXTERNAL rsbGetVars
FEXTERNAL IncAUnits?
FEXTERNAL AngleFactor%%
FEXTERNAL AngleUnit?

** Difeq/Difeqlink.a:

** Difeq/end.a:

** DFT/head.a:

** DFT/Dft.s:
FEXTERNAL fft
*EXTERNAL prepfft
FEXTERNAL ifft
*EXTERNAL dimspwr2?
*EXTERNAL !fftc

** DFT/Ndist.s:
FEXTERNAL statNDIST
FEXTERNAL STATPSTDEV
FEXTERNAL STATPVAR
FEXTERNAL STATPCOV

** DFT/Pcoef.s:
FEXTERNAL pcoef
*EXTERNAL pcoefacc1
*EXTERNAL pcoefacc2
*EXTERNAL PolyNSymbP
*EXTERNAL PolyNSymbF

** DFT/Peval.s:
*EXTERNAL peval

** DFT/DFTlink.a:

** DFT/end.a:

** MManp/head.a:

** MManp/Manip.s:
FEXTERNAL laRANM
FEXTERNAL laRanInt
FEXTERNAL laRSWP
FEXTERNAL laRSWP2
FEXTERNAL laCSWP
FEXTERNAL laRCI
FEXTERNAL laRCIJ
FEXTERNAL la-ROW
FEXTERNAL laVec-
FEXTERNAL la-COL
FEXTERNAL la+ROW
FEXTERNAL la+ROWs
FEXTERNAL la+RCsLP
FEXTERNAL la+COL
FEXTERNAL la+COLs
FEXTERNAL la+ELEMr
FEXTERNAL la+ELEMc
FEXTERNAL la+ELEM
FEXTERNAL la>ROW
FEXTERNAL la>ELEM
FEXTERNAL la>COL
FEXTERNAL laROW>
FEXTERNAL laCOL>
FEXTERNAL la>DIAG
FEXTERNAL laDIAG>
FEXTERNAL laDELROW
FEXTERNAL laINSROW
FEXTERNAL laGPROW

** MManp/MManplink.a:

** MManp/end.a:

** Utils/UThead.a:

** Utils/UTfcns.s:
EXTERNAL UTUNITZ
EXTERNAL UT%Z
EXTERNAL UTUNDRESERR
EXTERNAL UTUNITFF
EXTERNAL UT%FF
EXTERNAL UT%LOG
EXTERNAL UTBADATERR
EXTERNAL UTBADAVERR
EXTERNAL UTUNITDF
EXTERNAL UT%DF
EXTERNAL UTUNITF0
EXTERNAL UT%F0
EXTERNAL UT%SI
EXTERNAL UTUNITSI
EXTERNAL UTUNITTD
EXTERNAL UTUNITTI
EXTERNAL UTINCUNERR
EXTERNAL UTVUNS1Arg
EXTERNAL UTDoVUNS1
EXTERNAL UT1ArgQN?

** Utils/UTmsg.s:
EXTERNAL UTmsg

** Utils/UTsymfcns.s:
EXTERNAL UTnsSYMZ
EXTERNAL UTsnSYMZ
EXTERNAL UTssSYMZ
EXTERNAL UTnsSYMFF
EXTERNAL UTsnSYMFF
EXTERNAL UTssSYMFF
EXTERNAL UTnsSYMDF
EXTERNAL UTsnSYMDF
EXTERNAL UTssSYMDF
EXTERNAL UTnsSYMF0
EXTERNAL UTsnSYMF0
EXTERNAL UTssSYMF0
EXTERNAL UTnsSYMTD
EXTERNAL UTsnSYMTD
EXTERNAL UTssSYMTD
EXTERNAL UTnsSYMTI
EXTERNAL UTsnSYMTI
EXTERNAL UTssSYMTI
EXTERNAL UTSYMSI
EXTERNAL UTxSYM1
EXTERNAL UT1GETLAMS1
EXTERNAL UTxnsSYM2
EXTERNAL UTxsnSYM2
EXTERNAL UTxssSYM2
EXTERNAL UT1GETLAMS2

** Utils/Mine.s:
EXTERNAL MFStoExtFlg
EXTERNAL MFStoCellX
EXTERNAL MFStoCellY
EXTERNAL MFStoData
EXTERNAL MFStoScore
EXTERNAL MFmain
EXTERNAL MFRclScore
EXTERNAL MFRclData
EXTERNAL MFRclCellY
EXTERNAL MFRclCellX
EXTERNAL MFRclExtFlg
EXTERNAL MFReward
EXTERNAL MFDeath
EXTERNAL MFShowMines
EXTERNAL MFShowGrid
EXTERNAL MFCellToPix
EXTERNAL MFSetCellXY
EXTERNAL MFCursorXY
EXTERNAL MFIncrScore
EXTERNAL MFDoScore
EXTERNAL MFKeys
EXTERNAL MFAbort
EXTERNAL MFup
EXTERNAL MFleft
EXTERNAL MFdown
EXTERNAL MFul
EXTERNAL MFur
EXTERNAL MFdl
EXTERNAL MFdr
EXTERNAL MFright
EXTERNAL MFattn
EXTERNAL MFGetXYData
EXTERNAL MFPutXYData
EXTERNAL MFPutChr
EXTERNAL MFCross
EXTERNAL MFDest
EXTERNAL MFBang
EXTERNAL MFWin
EXTERNAL MFStoMHpar
EXTERNAL MFRclMHpar
EXTERNAL UTTYPEEXT0?

** Utils/TABLEE7.a:

** Utils/UTend.a:

** Browser/BRhead.a:

** Browser/BRMain.s:
* EXTERNAL BRStoFstRow
* EXTERNAL BRStoLstRow
* EXTERNAL BRStoCurRow
* EXTERNAL BRStoC1
* EXTERNAL BRStoLenC1
* EXTERNAL BRStoBotPix
* EXTERNAL BRStoTopPix
* EXTERNAL BRStoRowOff
* EXTERNAL BRStoExtFlg
* EXTERNAL BRStoHKDefs
* EXTERNAL BRStoC1Sec
* EXTERNAL BRStoAphOld
* EXTERNAL BRStoAphNew
* EXTERNAL BRStoNumRow
* EXTERNAL BRStoSpeed
* EXTERNAL BRStoSfKeys
EXTERNAL BRbrowse
FEXTERNAL RunBRbrowse

* EXTERNAL BRdisplay
EXTERNAL BRoutput
FEXTERNAL BRdone
* EXTERNAL BRInit
* EXTERNAL BRRclHKDefs
* EXTERNAL BRRclFstRow
EXTERNAL BRRclCurRow
* EXTERNAL BRRclC1
* EXTERNAL BRRclC1Sec
* EXTERNAL BRRclSpeed
* EXTERNAL BRRclSfKeys
* EXTERNAL BRRclLstRow
* EXTERNAL BRRclLenC1
* EXTERNAL BRRclBotPix
* EXTERNAL BRRclTopPix
* EXTERNAL BRRclRowOff
* EXTERNAL BRRclExtFlg
* EXTERNAL BRRclAphOld
* EXTERNAL BRRclAphNew
* EXTERNAL BRRclNumRow
* 
* ** Browser/BRKeyDefs.s:
* EXTERNAL BRkeys
* EXTERNAL BRNoShift
* EXTERNAL BRLeftShift
* EXTERNAL BRRghtShift
* EXTERNAL BRANoShift
* EXTERNAL BRALftShift
* EXTERNAL BRARhtShift
* EXTERNAL BRCharChk
* EXTERNAL BRNextRow
* EXTERNAL BRPrevRow
* EXTERNAL BRFirstRow
* 
* ** Browser/BRArwKey.s:
* EXTERNAL BRUpKey
* EXTERNAL BRDownKey
* EXTERNAL BRup
* EXTERNAL BRdown
* EXTERNAL BRpgUp
* EXTERNAL BRpgDown
* EXTERNAL BRtop
* EXTERNAL BRbottom
* 
* ** Browser/BRUsrKey.s:
* EXTERNAL BRenter
* EXTERNAL BROn
* 
* ** Browser/BRAphKey.s:
* EXTERNAL BRDoAlpha
* EXTERNAL BRNewChr
* EXTERNAL BRSameChr
* EXTERNAL BRColSrh
* EXTERNAL BRGenColSrh
* EXTERNAL BRMovNewScn
* EXTERNAL BRMovNewRow
* EXTERNAL BRSetAlpha
* EXTERNAL BRClrAlpha
* EXTERNAL BRChkAlpha
* 
* ** Browser/BRDisplay.s:
* EXTERNAL BRDispTitle
FEXTERNAL BRDispItems
* EXTERNAL BRDispRow
* EXTERNAL BRDispItem
* EXTERNAL BRPutArrows
FEXTERNAL BRinverse
* EXTERNAL BRCpDown
* EXTERNAL BRBlankLine
* EXTERNAL BRCpUp
* EXTERNAL BRMovCur
* EXTERNAL BRPutCur
* EXTERNAL BRSetCur
* EXTERNAL BRTopLft
* EXTERNAL BRRowBound
FEXTERNAL BRViewItem
* 
* ** Browser/BRUtils.s:
FEXTERNAL BRGetItem
* 
* ** Browser/BRGrobs.s:
* EXTERNAL BRUpGrob
* EXTERNAL BRDownGrob
* EXTERNAL BRBlankGrob
* 
* ** Browser/TABLEE0.a:
* 
** Browser/BRend.a:

** Llib/LIhead.a:

** Llib/LIMain.s:
EXTERNAL doseq
EXTERNAL dosecntuple
EXTERNAL dontuple
EXTERNAL dontuple#
EXTERNAL doidseqn
EXTERNAL seqid
EXTERNAL ::args
EXTERNAL ptrargs
EXTERNAL dosecseqn
EXTERNAL udfargs
EXTERNAL doptrseqn
EXTERNAL doseqn
EXTERNAL doseqn#
EXTERNAL docmdlist
EXTERNAL seqnargs
EXTERNAL dolatorre
EXTERNAL dolatorre+
EXTERNAL dolatorre2
EXTERNAL lolatorre
EXTERNAL ollatorre
EXTERNAL ollatorre+
EXTERNAL dolist+
EXTERNAL dosort
EXTERNAL {id}>{$}
EXTERNAL {lam}>{$}
EXTERNAL {$}>{id}
EXTERNAL {$}>{lam}
EXTERNAL DoNumeric:
EXTERNAL UseHidden{}:
EXTERNAL NotHidden
EXTERNAL INTEMPOB?
EXTERNAL moresub
EXTERNAL morerepl
EXTERNAL mrepln
EXTERNAL mrepll
EXTERNAL mrepll+
EXTERNAL msubln
EXTERNAL msubnl
EXTERNAL msubll
EXTERNAL msubll+
EXTERNAL msubnn
EXTERNAL copysub
EXTERNAL arryspec
EXTERNAL etorc

** Llib/LITeach.s:
EXTERNAL LIDoClTeach
EXTERNAL LIDoTeach
EXTERNAL t%TILE
EXTERNAL tSLICE
EXTERNAL tWIRE
EXTERNAL tPSUR
EXTERNAL tGRID
EXTERNAL tPSCN
EXTERNAL tSPFLD
EXTERNAL tDEQ
EXTERNAL tPTRN
EXTERNAL tROSE
EXTERNAL tLISSA
EXTERNAL tELLIP
EXTERNAL tXSIN
EXTERNAL t>RPN
EXTERNAL tAPLY
EXTERNAL tFIBON
EXTERNAL tMEDIAN
EXTERNAL LIDoAtick

** Llib/LIXmodem.s:
EXTERNAL LIXSend
EXTERNAL LIXRecv
EXTERNAL LIXModem

** Llib/TABLEE8.a:

** Llib/LIend.a:

** IFCore/head.a:

** IFCore/IFMain.s:
** EXTERNAL InpFormErr
** EXTERNAL ?DispTitle
** EXTERNAL ?DispClient
** EXTERNAL ?DispBadFlds
** EXTERNAL IFMenu
** EXTERNAL IFMenuRow1
** EXTERNAL IFMenuRow2
** EXTERNAL IFEdLineMenu
** EXTERNAL IFEdLMenuEnd
** 
** ** IFCore/IFEvents.s:
** EXTERNAL IFESetIFMenu
** EXTERNAL IFESetAppMenu
** EXTERNAL IFEPostCreate
** EXTERNAL IFEDispClient
** EXTERNAL DispSmClient
** EXTERNAL IFESetCliBack
** EXTERNAL IFEDispTitle
** EXTERNAL IFESetTtlGrob
** EXTERNAL IFESetTDecomp
** EXTERNAL IFEDispLabel
FEXTERNAL IFEDispField
** EXTERNAL IFEUnShowSel
** EXTERNAL IFEShowSel
** EXTERNAL InvertField
** EXTERNAL IFEDispHelp
** EXTERNAL IFESetHGrob
** EXTERNAL IFESetHDecomp
** EXTERNAL IFEReset
** EXTERNAL IFESetResetCh
** EXTERNAL ResetSelField
** EXTERNAL ResetAll
** EXTERNAL IFEResetAll
** EXTERNAL IFEResetField
** EXTERNAL IFESetIFocFId
** EXTERNAL IFELostFocus
** EXTERNAL IFEGotFocus
** EXTERNAL IFESetFocOK?
** EXTERNAL IFESetNFocFId
** EXTERNAL IFESetNextFId
** EXTERNAL IFESetPrevFId
** EXTERNAL IFESetDownFId
** EXTERNAL IFESetUpFId
** EXTERNAL IFESetFarDnF
** EXTERNAL IFESetFarUpF
** EXTERNAL IFESetChoices
** EXTERNAL IFEEditField
** EXTERNAL IFESetEdLMenu
** EXTERNAL IFESetAppEMen
** EXTERNAL IFEChoose
** EXTERNAL IFEGetChoice
** EXTERNAL IFECheck
** EXTERNAL IFEDispOTypes
** EXTERNAL DispObTypesCP
** EXTERNAL ObTypesMenu
** EXTERNAL IFESetObTypeD
** EXTERNAL IFEQuit
** EXTERNAL IFEDone
** EXTERNAL IFECalc
** EXTERNAL IFEEndEd&Sto
** EXTERNAL EndEditFail
** EXTERNAL EndEditResetF
** EXTERNAL ?AdjParsed
** EXTERNAL IFEChooseNext
** EXTERNAL IFEChoosByChr
** EXTERNAL IFEPreParse
** EXTERNAL IFEPostParse
** EXTERNAL IFEPostChange
** EXTERNAL IFEChkObType
** EXTERNAL IFEChkObValue
** EXTERNAL IFESetFGrob
** EXTERNAL IFESetFDecomp
** EXTERNAL IFESetUserVal
** 
** ** IFCore/IFKeys.s:
** EXTERNAL InpFormKeyLS
** EXTERNAL InpFormKeyRS
** EXTERNAL InpFormKeANS
** EXTERNAL InpFormKeALS
** EXTERNAL InpFormKeARS
** EXTERNAL DoAutoAlgKey
** EXTERNAL kpLIFESetKeyO
** EXTERNAL kpRIFESetKeyO
** EXTERNAL kpAIFESetKeyO
** EXTERNAL kpALIFESetKey
** EXTERNAL kpARIFESetKey
** EXTERNAL ?DoChoiceKeyO
** EXTERNAL >ChooseKeyObT
** EXTERNAL DoKeyEqWrite
** EXTERNAL DoKeyMatWrite
FEXTERNAL DoKeyEdit
FEXTERNAL DoKeyChoose
FEXTERNAL DoKeyCheck
FEXTERNAL DoKeyCancel
FEXTERNAL DoKeyOK
FEXTERNAL DoKeyReset
FEXTERNAL DoKeyCalc
FEXTERNAL DoKeyTypes
** EXTERNAL InpFormUpArr
** EXTERNAL InpFormDnArr
** EXTERNAL InpFormFarUp
** EXTERNAL InpFormFarDn
** EXTERNAL InpFormFarLft
** EXTERNAL InpFormFarRt
** EXTERNAL SelUpF&Rep
** EXTERNAL SelDownF&Rep
** EXTERNAL SelNextF&Rep
** EXTERNAL SelNextField
** EXTERNAL SelPrevF&Rep
** EXTERNAL SelPrevField
** EXTERNAL SelNextC&Rep
** 
** ** IFCore/IFUtil.s:
FEXTERNAL ChangeFocus
** EXTERNAL Sel&DispNextF
** EXTERNAL FindCurrNum
** EXTERNAL IsIFMenu?
** EXTERNAL FitLeftSmF
** EXTERNAL FitRightSmF
** EXTERNAL WidthSmF
** EXTERNAL GetNextFId
** EXTERNAL GetPrevFId
** EXTERNAL DecompOb
** EXTERNAL StdDecompNoNL
** EXTERNAL DecompNoNL
** EXTERNAL GetMOBrSpecs
** EXTERNAL RclFieldVal
** EXTERNAL IsNullField?
** EXTERNAL ?GetFObTypes
** EXTERNAL GetChoiceList
** EXTERNAL GetChoiceFmt
** EXTERNAL RclResetVal
** EXTERNAL grobCheck
** EXTERNAL grobCheckX
** EXTERNAL grobInvChk
** EXTERNAL grobInvChkX
** EXTERNAL grobUnCheckX
** EXTERNAL grobInvUnChkX
** EXTERNAL grobInvNoChk
** EXTERNAL grobAlertIcon
** EXTERNAL grobCheckKey
** EXTERNAL grobTitleBar
** EXTERNAL FTypeText?
** EXTERNAL FTypeAutoAlT?
** EXTERNAL FTypeList?
** EXTERNAL FTypeFixedL?
** EXTERNAL FTypeMemObL?
** EXTERNAL FTypeCheck?
** EXTERNAL DoObTypeAlert
** EXTERNAL ObTypeAMenu
** EXTERNAL DoObValAlert
FEXTERNAL DoAlert
** EXTERNAL DoSpecAlert
** EXTERNAL BlankClient
** EXTERNAL BlankHelp
** EXTERNAL GtoField
** EXTERNAL ?SetFieldVal
** EXTERNAL MakeCliBack
** EXTERNAL GetPart1
** EXTERNAL GetPart2
** EXTERNAL GetPart3
** EXTERNAL EvalPart1
** EXTERNAL EvalPart2
** EXTERNAL EvalPart3
** EXTERNAL FindItemByChr
** EXTERNAL FAreaBad?
** EXTERNAL AnyFAreaBad?
** EXTERNAL SetFAreaOK
** EXTERNAL SetFAreaBad
** EXTERNAL SetFAreasOK
** EXTERNAL SetFAreasBad
FEXTERNAL MakeTitleBar
** EXTERNAL ?FixFieldKeys
** EXTERNAL StartIFMenu
** EXTERNAL StartIFEdMenu
** EXTERNAL Choose&DoTask
** EXTERNAL PlaceFVals
** EXTERNAL IFActive?BadK
** EXTERNAL IFActive?
** EXTERNAL Done?CkNoNul:
** 
** ** IFCore/GetAndSet.s:
** EXTERNAL gFormTitle
** EXTERNAL LabelRowPos
** EXTERNAL gLblText
** EXTERNAL gLblCol
** EXTERNAL gLblRow
** EXTERNAL gLblLoc
** EXTERNAL sLblText
** EXTERNAL sLblCol
** EXTERNAL sLblRow
** EXTERNAL sLblLoc
** EXTERNAL FieldValPos
** EXTERNAL gFldProc
** EXTERNAL gFldCol
** EXTERNAL gFldRow
** EXTERNAL gFldWidth
** EXTERNAL gFldHeight
** EXTERNAL gFldType
** EXTERNAL gFldObTypes
** EXTERNAL gFldFormat
** EXTERNAL gFldHelp
** EXTERNAL gFldOptDat1
** EXTERNAL gFldOptDat2
** EXTERNAL gFldResetVal
EXTERNAL gFldVal
** EXTERNAL gFldLoc
** EXTERNAL gFldSize
FEXTERNAL GetFieldVals
** EXTERNAL sFldProc
** EXTERNAL sFldCol
** EXTERNAL sFldRow
** EXTERNAL sFldWidth
** EXTERNAL sFldHeight
** EXTERNAL sFldType
** EXTERNAL sFldObTypes
** EXTERNAL sFldFormat
** EXTERNAL sFldHelp
** EXTERNAL sFldOptDat1
** EXTERNAL sFldOptDat2
** EXTERNAL sFldResetVal
EXTERNAL sFldVal
** EXTERNAL sFldLoc
** EXTERNAL sFldSize
** EXTERNAL SetFieldVals
** EXTERNAL Get2Lams
** EXTERNAL Put2Lams
** EXTERNAL nNullBind
** 
** ** IFCore/link.a:
** 
** ** IFCore/end.a:
** 
** ** IFMisc/head.a:
** 
** ** IFMisc/GetCmdLine.s:
FEXTERNAL GetCmdLine
** 
** ** IFMisc/CharMap.s:
** EXTERNAL DoCharMap
** EXTERNAL DoCharMap.1
** EXTERNAL CharsFS
** EXTERNAL CharsFP
** EXTERNAL MakeCharsTtl
** EXTERNAL CharsCharsFP
** EXTERNAL DispCharMap
** EXTERNAL DispCharHelp
** EXTERNAL $>grobKey
** EXTERNAL SetCharsKeyOb
** EXTERNAL CharsKeyNS
** EXTERNAL CharsKeyLS
** EXTERNAL CharsKeyRS
** EXTERNAL CharDown&Rep
** EXTERNAL CharDown
** EXTERNAL CharFarDown
** EXTERNAL CharUp&Rep
** EXTERNAL CharUp
** EXTERNAL CharFarUp
** EXTERNAL CharRight&Rep
** EXTERNAL CharRight
** EXTERNAL CharFarRight
** EXTERNAL CharLeft&Rep
** EXTERNAL CharLeft
** EXTERNAL CharFarLeft
** EXTERNAL CharsMenu
** EXTERNAL DoKeyMinus64
** EXTERNAL DoKeyBegChars
** EXTERNAL DoKeyPlus64
** EXTERNAL DoKeyEndChars
** EXTERNAL DoKeyEcho
** EXTERNAL ShowSelChar
** EXTERNAL UnShowSelChar
** EXTERNAL grobSmLeftSh
** EXTERNAL grobSmRightSh
** EXTERNAL grobSmSqRoot
** EXTERNAL grobSmBackSp
** EXTERNAL grobSmYHatX
** EXTERNAL grobSmDivide
** EXTERNAL grobSmTimes
** EXTERNAL grobSmMinus
** EXTERNAL grobSmPlus
** EXTERNAL grobChMap1
** EXTERNAL grobChMap2
** EXTERNAL grobChMap3
** EXTERNAL grobChMap4
** EXTERNAL CharKeyArray
** 
** ** IFMisc/link.a:
** 
** ** IFMisc/end.a:
** 
** ** IFSupport/head.a:
** 
** IFSupport/MsgBox.s:
EXTERNAL DoMsgBox
*EXTERNAL MsgBoxDisp
EXTERNAL MsgBoxMenu
*EXTERNAL MsgBoxKeys
*EXTERNAL MsgBoxKeyNS
*EXTERNAL MsgBoxKeyLS
*EXTERNAL MsgBoxKeyRS
*EXTERNAL MsgBoxKeyANS
*EXTERNAL DispMsgBox
FEXTERNAL DoMKeyOK
*EXTERNAL NextTextLine
*EXTERNAL CountMsgLines
*EXTERNAL SaveMCovWind
*EXTERNAL RestMCovWind
FEXTERNAL Ck&DoMsgBox

** IFSupport/CStack.s:
** EXTERNAL DoCStack
** EXTERNAL CStackDisp
** EXTERNAL ?DispCStatus
** EXTERNAL DispCStatus
** EXTERNAL IsCStackMenu?
** EXTERNAL CStackMenu
** EXTERNAL CStackKeys
** EXTERNAL CStackKeyNS
** EXTERNAL CStackKeyLS
** EXTERNAL DoCStackMenu
** EXTERNAL DoCSKeyTogSts
** EXTERNAL DoCSKeyCancel
** EXTERNAL DoCSKeyOK
** 
** ** IFSupport/CustomIF.s:
FEXTERNAL Ck&DoInForm
** EXTERNAL CkFObTypes
** EXTERNAL LS&FMetrics
** EXTERNAL UnusedTB2
** EXTERNAL LeftTab
** EXTERNAL RightTab
** EXTERNAL CFS>FormSpecs

** IFSupport/link.a:

** IFSupport/end.a:

** SolvIFMsg/head.a:

** SolvIFMsg/SolveMsg.s:
EXTERNAL SolveIFMsg

** SolvIFMsg/link.a:

** SolvIFMsg/end.a:

** PlotIFMsg/head.a:

** PlotIFMsg/PlotMsg.s:
EXTERNAL PlotIFMsg

** PlotIFMsg/link.a:

** PlotIFMsg/end.a:

** SymbIFMsg/head.a:

** SymbIFMsg/SymbMsg.s:
EXTERNAL SymbIFMsg

** SymbIFMsg/link.a:

** SymbIFMsg/end.a:

** TimeIFMsg/head.a:

** TimeIFMsg/TimeMsg.s:
EXTERNAL TimeIFMsg

** TimeIFMsg/link.a:

** TimeIFMsg/end.a:

** StatIFMsg/head.a:

** StatIFMsg/StatMsg.s:
EXTERNAL StatIFMsg

** StatIFMsg/link.a:

** StatIFMsg/end.a:

** IOIFMsg/head.a:

** IOIFMsg/IOMsg.s:
EXTERNAL IOIFMsg

** IOIFMsg/link.a:

** IOIFMsg/end.a:

** MiscIFMsg/head.a:

** MiscIFMsg/MiscMsg.s:
EXTERNAL MiscIFMsg

** MiscIFMsg/link.a:

** MiscIFMsg/end.a:

** EqnData/EDhead.a:

** EqnData/EDcfg.s:

** EqnData/EDhash.a:

** EqnData/EqnData.s:
EXTERNAL EDsubjects
EXTERNAL EDNULLGROB

** EqnData/EDPCBCA.s:
EXTERNAL EDPCBCA

** EqnData/EDPCBSI.s:
EXTERNAL EDPCBSI

** EqnData/EDPCBEB.s:
EXTERNAL EDPCBEB

** EqnData/EDPCBEC.s:
EXTERNAL EDPCBEC

** EqnData/EDPELVD.s:
EXTERNAL EDPELVD

** EqnData/EDPELCD.s:
EXTERNAL EDPELCD

** EqnData/EDPELSR.s:
EXTERNAL EDPELSR

** EqnData/EDPELSC.s:
EXTERNAL EDPELSC

** EqnData/EDPELSL.s:
EXTERNAL EDPELSL

** EqnData/EDPELRP.s:
EXTERNAL EDPELRP

** EqnData/EDPELRC.s:
EXTERNAL EDPELRC

** EqnData/EDPELRL.s:
EXTERNAL EDPELRL

** EqnData/EDPELPC.s:
EXTERNAL EDPELPC

** EqnData/EDPELCC.s:
EXTERNAL EDPELCC

** EqnData/EDPELSI.s:
EXTERNAL EDPELSI

** EqnData/EDPELTI.s:
EXTERNAL EDPELTI

** EqnData/EDPFFPD.s:
EXTERNAL EDPFFPD

** EqnData/EDPFFBE.s:
EXTERNAL EDPFFBE

** EqnData/EDPFFFL.s:
EXTERNAL EDPFFFL

** EqnData/EDPFFCF.s:
EXTERNAL EDPFFCF

** EqnData/EDPFEHL.s:
EXTERNAL EDPFEHL

** EqnData/EDPFEOD.s:
EXTERNAL EDPFEOD

** EqnData/EDPGAIF.s:
EXTERNAL EDPGAIF

** EqnData/EDPHTTE.s:
EXTERNAL EDPHTTE

** EqnData/EDPHTCD.s:
EXTERNAL EDPHTCD

** EqnData/EDPHTCV.s:
EXTERNAL EDPHTCV

** EqnData/EDPHTCC.s:
EXTERNAL EDPHTCC

** EqnData/EDPHTBB.s:
EXTERNAL EDPHTBB

** EqnData/EDPMASW.s:
EXTERNAL EDPMASW

** EqnData/EDPMAFW.s:
EXTERNAL EDPMAFW

** EqnData/EDPMABS.s:
EXTERNAL EDPMABS

** EqnData/EDPMABT.s:
EXTERNAL EDPMABT

** EqnData/EDPMOPM.s:
EXTERNAL EDPMOPM

** EqnData/EDPOPLR.s:
EXTERNAL EDPOPLR

** EqnData/EDPOPCA.s:
EXTERNAL EDPOPCA

** EqnData/EDPOPBL.s:
EXTERNAL EDPOPBL

** EqnData/EDPOPSL.s:
EXTERNAL EDPOPSL

** EqnData/EDPOPSR.s:
EXTERNAL EDPOPSR

** EqnData/EDPOPTL.s:
EXTERNAL EDPOPTL

** EqnData/EDPOSMS1.s:
EXTERNAL EDPOSMS1

** EqnData/EDPOSMS2.s:
EXTERNAL EDPOSMS2

** EqnData/EDPOSMS3.s:
EXTERNAL EDPOSMS3

** EqnData/EDPOSSP.s:
EXTERNAL EDPOSSP

** EqnData/EDPOSCP.s:
EXTERNAL EDPOSCP

** EqnData/EDPOSTP.s:
EXTERNAL EDPOSTP

** EqnData/EDPPGCI.s:
EXTERNAL EDPPGCI

** EqnData/EDPPGEL.s:
EXTERNAL EDPPGEL

** EqnData/EDPPGRE.s:
EXTERNAL EDPPGRE

** EqnData/EDPPGRP.s:
EXTERNAL EDPPGRP

** EqnData/EDPPGCR.s:
EXTERNAL EDPPGCR

** EqnData/EDPPGTR.s:
EXTERNAL EDPPGTR

** EqnData/EDPSGCO.s:
EXTERNAL EDPSGCO

** EqnData/EDPSGCY.s:
EXTERNAL EDPSGCY

** EqnData/EDPSGPA.s:
EXTERNAL EDPSGPA

** EqnData/EDPSGSP.s:
EXTERNAL EDPSGSP

** EqnData/EDPSSPN.s:
EXTERNAL EDPSSPN

** EqnData/EDPSSMT.s:
EXTERNAL EDPSSMT

** EqnData/EDPSSBT.s:
EXTERNAL EDPSSBT

** EqnData/EDPSSJF.s:
EXTERNAL EDPSSJF

** EqnData/EDPSANS.s:
EXTERNAL EDPSANS

** EqnData/EDPSASS.s:
EXTERNAL EDPSASS

** EqnData/EDPSASE.s:
EXTERNAL EDPSASE

** EqnData/EDPSAMC.s:
EXTERNAL EDPSAMC

** EqnData/EDend.a:

** Header.h:

** IFMsg.h:
RPL		( insure RPL-mode exit )
* Turn On Assembly Listing 1.1
**miscdoc+*******************************************^******
************************************************************
**
** File:    OnList.h Version 1.1, 10/27/89
** Machine: Charlemagne
**
************************************************************
**+miscdoc**************************************************

**miscdoc+**************************************************
************************************************************
**
**  This file turns on the assembly listing after the 
**  contents of "Header.h".
**
**  The first file in "Header.h" should be "OffList.h", to 
**  turn off the assembly listing.
**
************************************************************
**+miscdoc**************************************************

**
** MetaKernel System Flags
**
DEFINE fnMultiLine		BINT65
DEFINE fnMultiLineStrings	BINT66
DEFINE fnDigitalClock		BINT67
DEFINE fnCmdAutoIndent		BINT68
DEFINE fnFullScreenEdit		BINT69
DEFINE fnMultiLine2GROB		BINT70
DEFINE fnDesasmWithAdr		BINT71
DEFINE fnBigFontStack		BINT72
DEFINE fnBigFontCmd		BINT73
DEFINE fnRightJustifiedStack	BINT74
DEFINE fnKeystrokeBeep		BINT75
DEFINE fnFilerConfirmation	BINT76
DEFINE fnFilerConfirm		BINT77
DEFINE fnKernelParam		BINT78
DEFINE fnPrettyPrint		BINT79
DEFINE fnSmallFontEQWStack	BINT80
DEFINE fnSmallFontEQWGrob	BINT81
DEFINE fnSmallFontEQWEdit	BINT82
DEFINE fnGrobDisplay		BINT83
DEFINE fnMKSmallFontMenu	BINT84
DEFINE fnSystemRPLStack		BINT85
DEFINE fnMASDDecompiler		BINT86
DEFINE fnRecursiveStack		BINT87
DEFINE fnRecursiveEdit		BINT88
DEFINE fnAddressesCLE		BINT89
DEFINE fnSmallFontChoose	BINT90
DEFINE fnArrayOnly		BINT91
DEFINE fnMLMASDMode		BINT92
DEFINE fnErableHeader		BINT93
DEFINE fnAutoSave		BINT94
DEFINE fnAlgebraicMode		BINT95
DEFINE fnMenuOn			BINT96
DEFINE fnVerticalList		BINT97
DEFINE fnVerticalVector		BINT98

* Erable Flags
DEFINE fnVerboseCAS	BINT99		( set for informations )
DEFINE fnStep		BINT100  	( set for step by step mode on )
DEFINE fnVXXL		BINT101		( internal use: true if VXXL success )
DEFINE fnPgcd		BINT102		( set for no gcd computations )
DEFINE fnComplex	BINT103		( set for complex mode )
DEFINE fnInvLN		BINT104		( internal use:	LN->-INV[-LN]] )
DEFINE fnExact		BINT105		( set for approx mode )
DEFINE fnTSIMP		BINT106		( set for TSIMP call inside SERIES )
DEFINE fnModular	BINT107  	( internal use:	modular computation )
DEFINE fnDivTest	BINT108 	( internal use:	testing remainder=0 )
DEFINE fnNumFactor	BINT109 	( set to allow numeric factorization )
DEFINE fnBigData	BINT110		( set for large matrices )
DEFINE fnRecurse	BINT111  	( set: don't simplify inside non rational operation )
DEFINE fniIsIrrq	BINT112  	( set to see i as an irrquad c=-1 )
DEFINE fnpfexpa		BINT113    	( set to disable linearity simplif. )
DEFINE fnIncreasePower	BINT114   	( set for increasing power x+1 -> 1+x )
DEFINE fnSqrt		BINT115   	( internal use:	sqrt not as irrquad )
DEFINE fnPreferSin	BINT116  	( set if sin are prefered to cos )
DEFINE fnChooseMenu	BINT117    	( set for menu as choosebox )
DEFINE fnKeepInt	BINT118    	( set if xINT is not simplified ) 
DEFINE fnNoCare		BINT119   	( set if non rigourous mode )
DEFINE fnSilent		BINT120		( set to allow silent mode switch )
DEFINE fnLNABS		BINT121  	( set if xLN returns LN[ABS[]] )


ASSEMBLE

MultiLineFl	EQU	65
MultiLineNib	EQU	((MultiLineFl)-1)/4
MultiLineBit	EQU	((MultiLineFl)-1)%4
MultiLineStringsFl	EQU	66
MultiLineStringsNib	EQU	((MultiLineStringsFl)-1)/4
MultiLineStringsBit	EQU	((MultiLineStringsFl)-1)%4
DigitalClockFl	EQU	67
DigitalClockNib	EQU	((DigitalClockFl)-1)/4
DigitalClockBit	EQU	((DigitalClockFl)-1)%4
CmdAutoIndentFl	EQU	68
CmdAutoIndentNib	EQU	((CmdAutoIndentFl)-1)/4
CmdAutoIndentBit	EQU	((CmdAutoIndentFl)-1)%4
FullScreenEditFl	EQU	69
FullScreenEditNib	EQU	((FullScreenEditFl)-1)/4
FullScreenEditBit	EQU	((FullScreenEditFl)-1)%4
MultiLine2GROBFl	EQU	70
MultiLine2GROBNib	EQU	((MultiLine2GROBFl)-1)/4
MultiLine2GROBBit	EQU	((MultiLine2GROBFl)-1)%4
DesasmWithAdrFl	EQU	71
DesasmWithAdrNib	EQU	((DesasmWithAdrFl)-1)/4
DesasmWithAdrBit	EQU	((DesasmWithAdrFl)-1)%4
BigFontStackFl	EQU	72
BigFontStackNib	EQU	((BigFontStackFl)-1)/4
BigFontStackBit	EQU	((BigFontStackFl)-1)%4
BigFontCmdFl	EQU	73
BigFontCmdNib	EQU	((BigFontCmdFl)-1)/4
BigFontCmdBit	EQU	((BigFontCmdFl)-1)%4
RightJustifiedStackFl	EQU	74
RightJustifiedStackNib	EQU	((RightJustifiedStackFl)-1)/4
RightJustifiedStackBit	EQU	((RightJustifiedStackFl)-1)%4
KeystrokeBeepFl	EQU	75
KeystrokeBeepNib	EQU	((KeystrokeBeepFl)-1)/4
KeystrokeBeepBit	EQU	((KeystrokeBeepFl)-1)%4
FilerConfirmationFl	EQU	76
FilerConfirmationNib	EQU	((FilerConfirmationFl)-1)/4
FilerConfirmationBit	EQU	((FilerConfirmationFl)-1)%4
FilerConfirmFl	EQU	77
FilerConfirmNib	EQU	((FilerConfirmFl)-1)/4
FilerConfirmBit	EQU	((FilerConfirmFl)-1)%4
KernelParamFl	EQU	78
KernelParamNib	EQU	((KernelParamFl)-1)/4
KernelParamBit	EQU	((KernelParamFl)-1)%4
PrettyPrintFl	EQU	79
PrettyPrintNib	EQU	((PrettyPrintFl)-1)/4
PrettyPrintBit	EQU	((PrettyPrintFl)-1)%4
SmallFontEQWStackFl	EQU	80
SmallFontEQWStackNib	EQU	((SmallFontEQWStackFl)-1)/4
SmallFontEQWStackBit	EQU	((SmallFontEQWStackFl)-1)%4
SmallFontEQWGrobFl	EQU	81
SmallFontEQWGrobNib	EQU	((SmallFontEQWGrobFl)-1)/4
SmallFontEQWGrobBit	EQU	((SmallFontEQWGrobFl)-1)%4
SmallFontEQWEditFl	EQU	82
SmallFontEQWEditNib	EQU	((SmallFontEQWEditFl)-1)/4
SmallFontEQWEditBit	EQU	((SmallFontEQWEditFl)-1)%4
GrobDisplayFl	EQU	83
GrobDisplayNib	EQU	((GrobDisplayFl)-1)/4
GrobDisplayBit	EQU	((GrobDisplayFl)-1)%4
MKSmallFontMenuFl	EQU	84
MKSmallFontMenuNib	EQU	((MKSmallFontMenuFl)-1)/4
MKSmallFontMenuBit	EQU	((MKSmallFontMenuFl)-1)%4
SystemRPLStackFl	EQU	85
SystemRPLStackNib	EQU	((SystemRPLStackFl)-1)/4
SystemRPLStackBit	EQU	((SystemRPLStackFl)-1)%4
MASDDecompilerFl	EQU	86
MASDDecompilerNib	EQU	((MASDDecompilerFl)-1)/4
MASDDecompilerBit	EQU	((MASDDecompilerFl)-1)%4
RecursiveStackFl	EQU	87
RecursiveStackNib	EQU	((RecursiveStackFl)-1)/4
RecursiveStackBit	EQU	((RecursiveStackFl)-1)%4
RecursiveEditFl	EQU	88
RecursiveEditNib	EQU	((RecursiveEditFl)-1)/4
RecursiveEditBit	EQU	((RecursiveEditFl)-1)%4
AddressesCLEFl	EQU	89
AddressesCLENib	EQU	((AddressesCLEFl)-1)/4
AddressesCLEBit	EQU	((AddressesCLEFl)-1)%4
SmallFontChooseFl	EQU	90
SmallFontChooseNib	EQU	((SmallFontChooseFl)-1)/4
SmallFontChooseBit	EQU	((SmallFontChooseFl)-1)%4
ArrayOnlyFl	EQU	91
ArrayOnlyNib	EQU	((ArrayOnlyFl)-1)/4
ArrayOnlyBit	EQU	((ArrayOnlyFl)-1)%4
MLMASDModeFl	EQU	92
MLMASDModeNib	EQU	((MLMASDModeFl)-1)/4
MLMASDModeBit	EQU	((MLMASDModeFl)-1)%4
ErableHeaderFl	EQU	93
ErableHeaderNib	EQU	((ErableHeaderFl)-1)/4
ErableHeaderBit	EQU	((ErableHeaderFl)-1)%4
AutoSaveFl	EQU	94
AutoSaveNib	EQU	((AutoSaveFl)-1)/4
AutoSaveBit	EQU	((AutoSaveFl)-1)%4
AlgebraicModeFl	EQU	95
AlgebraicModeNib	EQU	((AlgebraicModeFl)-1)/4
AlgebraicModeBit	EQU	((AlgebraicModeFl)-1)%4
MenuOnFl	EQU	96
MenuOnNib	EQU	((MenuOnFl)-1)/4
MenuOnBit	EQU	((MenuOnFl)-1)%4
VerticalListFl	EQU	97
VerticalListNib	EQU	((VerticalListFl)-1)/4
VerticalListBit	EQU	((VerticalListFl)-1)%4
VerticalVectorFl	EQU	98
VerticalVectorNib	EQU	((VerticalVectorFl)-1)/4
VerticalVectorBit	EQU	((VerticalVectorFl)-1)%4


** Erable ML Flags
ComplexFl	EQU	103
ComplexNib	EQU	((ComplexFl)-1)/4
ComplexBit	EQU	((ComplexFl)-1)%4


ExactModeFl	EQU	105
ExactModeNib	EQU	((ExactModeFl)-1)/4
ExactModeBit	EQU	((ExactModeFl)-1)%4


RPL

** Flash Pointer object
FEXTERNAL FSTR1
FEXTERNAL FSTR2
FEXTERNAL FSTR3
FEXTERNAL FSTR4
FEXTERNAL FSTR5
FEXTERNAL FSTR6
FEXTERNAL FSTR7
FEXTERNAL FSTR8
FEXTERNAL FSTR9
FEXTERNAL FSTR10
FEXTERNAL FSTR11
FEXTERNAL FSTR12
FEXTERNAL FSTR13


ASSEMBLE
	SETLIST CODE, INCLUDE, PSEUDO
RPL
FEXTERNAL xEXPAND
FEXTERNAL xFACTOR
FEXTERNAL xSUBST
FEXTERNAL xDERVX
FEXTERNAL xINTVX
FEXTERNAL xLIMIT
FEXTERNAL xTAYLOR0
FEXTERNAL xSERIES
FEXTERNAL xSOLVEVX
FEXTERNAL xPLOT
FEXTERNAL xPLOTADD
FEXTERNAL xIBP
FEXTERNAL xPREVAL
FEXTERNAL xRISCH
FEXTERNAL xDERIV
FEXTERNAL xDESOLVE
FEXTERNAL xLAP
FEXTERNAL xILAP
FEXTERNAL xLDEC
FEXTERNAL xTEXPAND
FEXTERNAL xLIN
FEXTERNAL xTSIMP
FEXTERNAL xLNCOLLECT
FEXTERNAL xEXPLN
FEXTERNAL xSINCOS
FEXTERNAL xTLIN
FEXTERNAL xTCOLLECT
FEXTERNAL xTRIG
FEXTERNAL xTRIGCOS
FEXTERNAL xTRIGSIN
FEXTERNAL xTRIGTAN
FEXTERNAL xTAN2SC
FEXTERNAL xHALFTAN
FEXTERNAL xTAN2SC2
FEXTERNAL xATAN2S
FEXTERNAL xASIN2T
FEXTERNAL xASIN2C
FEXTERNAL xACOS2S
FEXTERNAL xDIV2
FEXTERNAL xIDIV2
FEXTERNAL xQUOT
FEXTERNAL xIQUOT
FEXTERNAL xREMAINDER
FEXTERNAL xIREMAINDER
FEXTERNAL xGCD
FEXTERNAL xLCM
FEXTERNAL xEGCD
FEXTERNAL xIEGCD
FEXTERNAL xABCUV
FEXTERNAL xIABCUV
FEXTERNAL xLGCD
FEXTERNAL xSIMP2
FEXTERNAL xPARTFRAC
FEXTERNAL xPROPFRAC
FEXTERNAL xPTAYL
FEXTERNAL xHORNER
FEXTERNAL xEULER
FEXTERNAL xPA2B2
FEXTERNAL xCHINREM
FEXTERNAL xICHINREM
FEXTERNAL xISPRIME?
FEXTERNAL xNEXTPRIME
FEXTERNAL xPREVPRIME
FEXTERNAL xSOLVE
FEXTERNAL xZEROS
FEXTERNAL xFCOEF
FEXTERNAL xFROOTS
FEXTERNAL xFACTORS
FEXTERNAL xDIVIS
FEXTERNAL xTRAN
FEXTERNAL xSTUDMULT
FEXTERNAL xrref
FEXTERNAL xREF
FEXTERNAL xAXM
FEXTERNAL xAXL
FEXTERNAL xQXA
FEXTERNAL xAXQ
FEXTERNAL xGAUSS
FEXTERNAL xSYLVESTER
FEXTERNAL xPCAR
FEXTERNAL xJORDAN
FEXTERNAL xMAD
FEXTERNAL xLINSOLVE
FEXTERNAL xVANDERMONDE
FEXTERNAL xHILBERT
FEXTERNAL xLCXM
FEXTERNAL xDIV
FEXTERNAL xCURL
FEXTERNAL xLAPL
FEXTERNAL xHESS
FEXTERNAL xLEGENDRE
FEXTERNAL xTCHEBYCHEFF
FEXTERNAL xHERMITE
FEXTERNAL xLAGRANGE
FEXTERNAL xFOURIER
FEXTERNAL xSIGNTAB
FEXTERNAL xTABVAR
FEXTERNAL xTABVAL
FEXTERNAL xDIVPC
FEXTERNAL xTRUNC
FEXTERNAL xSEVAL
FEXTERNAL xTEVAL
FEXTERNAL xMAP
FEXTERNAL xXNUM
FEXTERNAL xXQ
FEXTERNAL xREORDER
FEXTERNAL xLVAR
FEXTERNAL xFXND
FEXTERNAL xEXLR
FEXTERNAL xLNAME
FEXTERNAL xADDTMOD
FEXTERNAL xSUBTMOD
FEXTERNAL xMULTMOD
FEXTERNAL xDIVMOD
FEXTERNAL xDIV2MOD
FEXTERNAL xPOWMOD
FEXTERNAL xINVMOD
FEXTERNAL xGCDMOD
FEXTERNAL xEXPANDMOD
FEXTERNAL xFACTORMOD
FEXTERNAL xRREFMOD
FEXTERNAL xMODSTO
FEXTERNAL xMENUXY
FEXTERNAL xKEYEVAL
FEXTERNAL xGROBADD
FEXTERNAL xSCROLL
FEXTERNAL xCASCFG
FEXTERNAL xMAIN
FEXTERNAL xBASE
FEXTERNAL xCMPLX
FEXTERNAL xTRIGO
FEXTERNAL xMATR
FEXTERNAL xDIFF
FEXTERNAL xARIT
FEXTERNAL xSOLVER
FEXTERNAL xEXP&LN
FEXTERNAL xEPSX0
FEXTERNAL x?
FEXTERNAL x\9F
FEXTERNAL xPROMPTSTO
FEXTERNAL xVER
FEXTERNAL BerlekampP
FEXTERNAL Berlekamp
FEXTERNAL ErrInfRes
FEXTERNAL ErrUndefRes
FEXTERNAL ErrBadDim
FEXTERNAL ALG48MSOLV
FEXTERNAL GMSOLV
FEXTERNAL GBASIS
FEXTERNAL GSOLVE
FEXTERNAL GFACTOR
FEXTERNAL GREDUCE
FEXTERNAL REDUCE
FEXTERNAL FASTREDUCE
FEXTERNAL ONE{}POLY
FEXTERNAL TWO{}POLY
FEXTERNAL THREE{}POLY
FEXTERNAL TWO::POLY
FEXTERNAL ::POLY
FEXTERNAL {}POLY
FEXTERNAL >TPOLY
FEXTERNAL >HPOLY
FEXTERNAL >TPOLYN
FEXTERNAL >HPOLYN
FEXTERNAL MKPOLY
FEXTERNAL ONE>POLY
FEXTERNAL >POLY
FEXTERNAL ALG48FCTR?
FEXTERNAL MFactTriv
FEXTERNAL CheckPNoExt
FEXTERNAL PPP
FEXTERNAL PFactor
FEXTERNAL PSqff
FEXTERNAL PHFctr
FEXTERNAL PHFctr1
FEXTERNAL PHFctr0
FEXTERNAL DeCntMulti
FEXTERNAL DoLS
FEXTERNAL PNFctr
FEXTERNAL PSQFF
FEXTERNAL LiftZAdic
FEXTERNAL LFCProd
FEXTERNAL UFactor
FEXTERNAL UFactor1
FEXTERNAL MonicLf
FEXTERNAL DemonicLf
FEXTERNAL LiftLinear
FEXTERNAL LiftGeneral
FEXTERNAL UFactorDeg2
FEXTERNAL CombineFac
FEXTERNAL CombProd
FEXTERNAL CombInit
FEXTERNAL CombNext
FEXTERNAL RmCombNext
FEXTERNAL PFactTriv
FEXTERNAL VarFactor
FEXTERNAL PFactPowCnt
FEXTERNAL PDivLk
FEXTERNAL Prime+
FEXTERNAL Prime-
FEXTERNAL ZFactor
FEXTERNAL NFactor
FEXTERNAL NFactorSpc
FEXTERNAL DupTypeS?
FEXTERNAL SFactor
FEXTERNAL SPollard
FEXTERNAL BFactor
FEXTERNAL BrentPow
FEXTERNAL ZPrime?
FEXTERNAL ZIsPrime?
FEXTERNAL SIsPrime?
FEXTERNAL BIsPrime?
FEXTERNAL BRabin
FEXTERNAL ZTrialDiv2
FEXTERNAL ZTrialPrime?
FEXTERNAL ZTrialDiv
FEXTERNAL QMod
FEXTERNAL QMODSYMext
FEXTERNAL ModPow
FEXTERNAL ZQUOText
FEXTERNAL ZMod
FEXTERNAL ZDIVext
FEXTERNAL QRoot
FEXTERNAL ZSQRT
FEXTERNAL PEvalMod
FEXTERNAL QAddMod
FEXTERNAL QSubMod
FEXTERNAL QMulMod
FEXTERNAL QDivMod
FEXTERNAL QInvMod
FEXTERNAL QGcdMod
FEXTERNAL QGcdExMod
FEXTERNAL IsV>V?
FEXTERNAL PEvalFast?
FEXTERNAL PZadic
FEXTERNAL GCDHEUext
FEXTERNAL H>Z
FEXTERNAL #>Z
FEXTERNAL Z2BIN
FEXTERNAL COERCE2Z
FEXTERNAL Z>S
FEXTERNAL S>Z
FEXTERNAL S>Z?
FEXTERNAL Z>ZH
FEXTERNAL R>Z
FEXTERNAL Z>R
FEXTERNAL DupQIsZero?
FEXTERNAL QIsZero?
FEXTERNAL DupZIsOne?
FEXTERNAL ZIsOne?
FEXTERNAL DupZIsNeg?
FEXTERNAL ZIsNeg?
FEXTERNAL ListPos
FEXTERNAL AppendList
FEXTERNAL Contains?
FEXTERNAL SortList
FEXTERNAL ZTrim
FEXTERNAL ZAbs
FEXTERNAL PNMax
FEXTERNAL LISTMAXext
FEXTERNAL ZNMax
FEXTERNAL ZNMin
FEXTERNAL ZNLT?
FEXTERNAL DISTDIVext
FEXTERNAL DupZIsTwo?
FEXTERNAL DupZIsEven?
FEXTERNAL Univar?
FEXTERNAL SUnivar?
FEXTERNAL ZBits
FEXTERNAL ZBit?
FEXTERNAL LOPMext
FEXTERNAL SWAPRMULT
FEXTERNAL QMul
FEXTERNAL RMULText
FEXTERNAL RASOP
FEXTERNAL SWAPRSUB
FEXTERNAL QSub
FEXTERNAL RSUBext
FEXTERNAL SWAPRADD
FEXTERNAL QAdd
FEXTERNAL RADDext
FEXTERNAL SWAPRDIV
FEXTERNAL RDIVext
FEXTERNAL QDiv
FEXTERNAL R15SIMP
FEXTERNAL PPow#
FEXTERNAL RP#
FEXTERNAL MPext
FEXTERNAL MP0
FEXTERNAL MPEXEC
FEXTERNAL RPext
FEXTERNAL PREPARext
FEXTERNAL x+ext
FEXTERNAL x-ext
FEXTERNAL x*ext
FEXTERNAL x=ext
FEXTERNAL x/ext
FEXTERNAL 2SYMBINCOMP
FEXTERNAL x^ext
FEXTERNAL EXPAND^
FEXTERNAL addtXROOT
FEXTERNAL xssSYMXROOT
FEXTERNAL addtMIN
FEXTERNAL xssSYMMIN
FEXTERNAL addtMAX
FEXTERNAL xssSYMMAX
FEXTERNAL addt<
FEXTERNAL xssSYM<?
FEXTERNAL addt<=
FEXTERNAL xssSYM<=?
FEXTERNAL addt>
FEXTERNAL xssSYM>?
FEXTERNAL addt>=
FEXTERNAL xssSYM>=?
FEXTERNAL addt==
FEXTERNAL xssSYM=?
FEXTERNAL addt!=
FEXTERNAL xssSYM#?
FEXTERNAL addt%
FEXTERNAL xssSYM%
FEXTERNAL addt%CH
FEXTERNAL xssSYM%CH
FEXTERNAL addt%T
FEXTERNAL xssSYM%T
FEXTERNAL addtMOD
FEXTERNAL xssSYMMOD
FEXTERNAL addtTRNC
FEXTERNAL xssSYMTRCXY
FEXTERNAL addtRND
FEXTERNAL xssSYMRNDXY
FEXTERNAL addtCOMB
FEXTERNAL xssSYMCOMB
FEXTERNAL addtPERM
FEXTERNAL xssSYMPERM
FEXTERNAL addtOR
FEXTERNAL xssSYMOR
FEXTERNAL addtAND
FEXTERNAL xssSYMAND
FEXTERNAL addtXOR
FEXTERNAL xssSYMXOR
FEXTERNAL 2LAMBIND
FEXTERNAL 3LAMBIND
FEXTERNAL SYMBINCOMP
FEXTERNAL CKINNERCOMP
FEXTERNAL DUPCKLEN{}
FEXTERNAL CKCARCOMP
FEXTERNAL CARCOMPext
FEXTERNAL RISCH13
FEXTERNAL CXRIext
FEXTERNAL RIXCext
FEXTERNAL IRXCext
FEXTERNAL IRXC2
FEXTERNAL SWAPNDXF
FEXTERNAL NDXFext
FEXTERNAL SWAPFXND
FEXTERNAL FXNDext
FEXTERNAL QXNDext
FEXTERNAL NDXQext
FEXTERNAL TYPEIRRQ?
FEXTERNAL DTYPEIRRQ?
FEXTERNAL BESTMATRIXTYPE
FEXTERNAL {}TO[]
FEXTERNAL []TO{}
FEXTERNAL DUPNULL[]?
FEXTERNAL MDIMS
FEXTERNAL DIMLIMITS
FEXTERNAL CKSAMESIZE
FEXTERNAL DTYPENDO?
FEXTERNAL DTYPFMAT?
FEXTERNAL CKNUMARRY
FEXTERNAL 2DMATRIX?
FEXTERNAL MATRIXDIM
FEXTERNAL SAMEMATRIX
FEXTERNAL SAMEMATSCTYPE
FEXTERNAL CKMATRIXELEM
FEXTERNAL MATRIX2ARRAY
FEXTERNAL MATRIX2LIST
FEXTERNAL LIST2MATRIX
FEXTERNAL LENMATRIX
FEXTERNAL XEQARRY>
FEXTERNAL MATEXPLODE
FEXTERNAL ARRAY2MATRIX
FEXTERNAL XEQ>ARRY
FEXTERNAL XEQ>ARRAY1
FEXTERNAL CKALG
FEXTERNAL TYPEZ?
FEXTERNAL DUPTYPEZ?
FEXTERNAL CK1Z
FEXTERNAL CK2Z
FEXTERNAL CK3Z
FEXTERNAL CK1Cext
FEXTERNAL C2C%%
FEXTERNAL ZZ2C%%ext
FEXTERNAL Z2%%
FEXTERNAL C%>C%%
FEXTERNAL E%%>C%%
FEXTERNAL R2Zext
FEXTERNAL Z2Sext
FEXTERNAL CKFPOLYext
FEXTERNAL CK2FPOLY
FEXTERNAL IDNTLAM?
FEXTERNAL FLOAT?
FEXTERNAL TYPEIDNTLAM?
FEXTERNAL REAL?
FEXTERNAL TYPEREALZINT?
FEXTERNAL OBJ2REAL
FEXTERNAL METAINT?
FEXTERNAL METAPOSINT?
FEXTERNAL OBJINT?
FEXTERNAL OBJPOSINT?
FEXTERNAL CKINT>0
FEXTERNAL Z>#
FEXTERNAL CLEANIDLAM
FEXTERNAL ssSYMDER
FEXTERNAL SYMDER
FEXTERNAL DERIVext
FEXTERNAL siSYMDER
FEXTERNAL DERIVIDNT
FEXTERNAL DERIVIDNT1
FEXTERNAL DERIV
FEXTERNAL METADERIV
FEXTERNAL METADEROP
FEXTERNAL METADER+
FEXTERNAL METADER-
FEXTERNAL METADER*
FEXTERNAL METADER/
FEXTERNAL METADER^
FEXTERNAL METADERFCN
FEXTERNAL METADERDER
FEXTERNAL METADERI4
FEXTERNAL METADERI3
FEXTERNAL METADERIFTE
FEXTERNAL DERARG
FEXTERNAL METADEREXP
FEXTERNAL METADERLN
FEXTERNAL METADERLNP1
FEXTERNAL METADERLOG
FEXTERNAL METADERALOG
FEXTERNAL METADERABS
FEXTERNAL METADERINV
FEXTERNAL METADERNEG
FEXTERNAL METADERSQRT
FEXTERNAL METADER&NEG
FEXTERNAL METADERSQ
FEXTERNAL METADERSIN
FEXTERNAL METADERCOS
FEXTERNAL METADERTAN
FEXTERNAL METADERSINH
FEXTERNAL METADERCOSH
FEXTERNAL METADERTANH
FEXTERNAL METADERASIN
FEXTERNAL METADERACOS
FEXTERNAL METADERATAN
FEXTERNAL METADERASH
FEXTERNAL METADERACH
FEXTERNAL METADERATH
FEXTERNAL pshder*
FEXTERNAL SQRTINVpshd*
FEXTERNAL ckaddt*
FEXTERNAL ckaddt+
FEXTERNAL ckaddt-
FEXTERNAL VERNUMext
FEXTERNAL MENUXYext
FEXTERNAL SAVECASFLAGS
FEXTERNAL RESTORECASFLAGS
FEXTERNAL CASFLAGEVAL
FEXTERNAL FLAGEXPAND
FEXTERNAL EXPANDBOTH
FEXTERNAL FLAGFACTOR
FEXTERNAL FLAGLISTEXEC
FEXTERNAL FLAGSYMBEXEC
FEXTERNAL FLAGIDNTEXEC
FEXTERNAL FLAGINTVX
FEXTERNAL DERVX
FEXTERNAL SOLVEXFLOAT
FEXTERNAL SYMLIMIT
FEXTERNAL FLAGMATRIXLIMIT
FEXTERNAL TAYLOR0
FEXTERNAL FLAGSERIES
FEXTERNAL PLOTSTK
FEXTERNAL PLOTADD
FEXTERNAL FLAGIBP
FEXTERNAL FLAGPREVAL
FEXTERNAL MATRIXRISCH
FEXTERNAL FLAGRISCH
FEXTERNAL FLAGDERIV
FEXTERNAL FLAGLAP
FEXTERNAL FLAGILAP
FEXTERNAL FLAGDESOLVE
FEXTERNAL FLAGLDSSOLV
FEXTERNAL FLAGLDECSOLV
FEXTERNAL FLAGTEXPAND
FEXTERNAL FLAGLIN
FEXTERNAL FLAGTSIMP
FEXTERNAL FLAGLNCOLLECT
FEXTERNAL FLAGEXPLN
FEXTERNAL FLAGSINCOS
FEXTERNAL FLAGTLIN
FEXTERNAL FLAGTCOLLECT
FEXTERNAL FLAGTRIG
FEXTERNAL FLAGTRIGCOS
FEXTERNAL FLAGTRIGSIN
FEXTERNAL FLAGTRIGTAN
FEXTERNAL FLAGTAN2SC
FEXTERNAL FLAGHALFTAN
FEXTERNAL FLAGTAN2SC2
FEXTERNAL FLAGATAN2S
FEXTERNAL FLAGASIN2T
FEXTERNAL FLAGASIN2C
FEXTERNAL FLAGACOS2S
FEXTERNAL STEPIDIV2
FEXTERNAL FLAGDIV2
FEXTERNAL FLAGGCD
FEXTERNAL PEGCD
FEXTERNAL IEGCD
FEXTERNAL ABCUV
FEXTERNAL IABCUV
FEXTERNAL FLAGLGCD
FEXTERNAL FLAGLCM
FEXTERNAL FLAGSIMP2
FEXTERNAL FLAGPARTFRAC
FEXTERNAL FLAGPROPFRAC
FEXTERNAL FLAGPTAYL
FEXTERNAL FLAGHORNER
FEXTERNAL EULER
FEXTERNAL PA2B2
FEXTERNAL FLAGCHINREM
FEXTERNAL ICHINREM
FEXTERNAL ISPRIME
FEXTERNAL SOLVE1EQ
FEXTERNAL SOLVEMANYEQ
FEXTERNAL ZEROS1EQ
FEXTERNAL ZEROSMANYEQ
FEXTERNAL FCOEF
FEXTERNAL FROOTS
FEXTERNAL FACTORS
FEXTERNAL DIVIS
FEXTERNAL STUDMULT
FEXTERNAL STUDDIV
FEXTERNAL rref
FEXTERNAL FLAGQXA
FEXTERNAL FLAGAXQ
FEXTERNAL FLAGGAUSS
FEXTERNAL FLAGSYLVESTER
FEXTERNAL PCAR
FEXTERNAL MADNOCK
FEXTERNAL SYSTEM
FEXTERNAL VANDERMONDE
FEXTERNAL HILBERTNOCK
FEXTERNAL FLAGJORDAN
FEXTERNAL CURL
FEXTERNAL DIVERGENCE
FEXTERNAL LAPLACIAN
FEXTERNAL HESSIAN
FEXTERNAL HERMITE
FEXTERNAL TCHEBNOCK
FEXTERNAL LEGENDRE
FEXTERNAL LAGRANGE
FEXTERNAL FOURIER
FEXTERNAL SIGNE
FEXTERNAL TABVAR
FEXTERNAL FLAGDIVPC
FEXTERNAL FLAGTRUNC
FEXTERNAL FLAGSEVAL
FEXTERNAL XNUM
FEXTERNAL REORDER
FEXTERNAL USERLVAR
FEXTERNAL USERLIDNT
FEXTERNAL EXLR
FEXTERNAL ADDTMOD
FEXTERNAL MADDTMOD
FEXTERNAL SUBTMOD
FEXTERNAL MSUBTMOD
FEXTERNAL MULTMOD
FEXTERNAL MAT*SCMOD
FEXTERNAL SC*MATMOD
FEXTERNAL MAT*MATMOD
FEXTERNAL DIVMOD
FEXTERNAL GCD1MOD
FEXTERNAL INVMOD
FEXTERNAL MINVMOD
FEXTERNAL FLAGDIV2MOD
FEXTERNAL FLAGPOWMOD
FEXTERNAL FLAGMPOWMOD
FEXTERNAL EXPAMOD
FEXTERNAL FLAGEXPAMOD
FEXTERNAL FLAGFACTORMOD
FEXTERNAL MFACTORMOD
FEXTERNAL RREFMOD
FEXTERNAL KEYEVAL
FEXTERNAL LIFCext
FEXTERNAL EvalNoCKx*
FEXTERNAL EvalNoCKx+
FEXTERNAL EvalNoCKx-
FEXTERNAL EvalNoCKx/
FEXTERNAL EvalNoCKx^
FEXTERNAL EvalNoCKxCHS
FEXTERNAL EvalNoCKxINV
FEXTERNAL EvalNoCKxMOD
FEXTERNAL EvalNoCKxPERM
FEXTERNAL EvalNoCKxCOMB
FEXTERNAL EvalNoCKxOR
FEXTERNAL EvalNoCKxAND
FEXTERNAL EvalNoCKxXOR
FEXTERNAL EvalNoCKxXROOT
FEXTERNAL TABVALext
FEXTERNAL TOLISText
FEXTERNAL FROMLISText
FEXTERNAL PFEXECext
FEXTERNAL LOP1ext
FEXTERNAL LOPAext
FEXTERNAL LISTSECOext
FEXTERNAL rpnQOBJext
FEXTERNAL CK1TONOext
FEXTERNAL COLCext
FEXTERNAL SYMCOLCT
FEXTERNAL COLC1
FEXTERNAL COLC2
FEXTERNAL MULMULText
FEXTERNAL METAMULMULT
FEXTERNAL METAMM2
FEXTERNAL COMPLISText
FEXTERNAL METACOMPRIM
FEXTERNAL METACOMP0
FEXTERNAL METACOMP1
FEXTERNAL ADDLISText
FEXTERNAL DIVISext
FEXTERNAL FACT1ext
FEXTERNAL FACTOext
FEXTERNAL ZFACTO
FEXTERNAL SOLVext
FEXTERNAL FRND
FEXTERNAL BICARREE?
FEXTERNAL REALBICAR
FEXTERNAL FEVIDENText
FEXTERNAL EVIDENText
FEXTERNAL EVIDSOLV
FEXTERNAL DEG2ext
FEXTERNAL METADEG2
FEXTERNAL METADEG1
FEXTERNAL DEG1
FEXTERNAL FDEG2ext
FEXTERNAL PIext
FEXTERNAL RACTOFACext
FEXTERNAL FACTORACext
FEXTERNAL RFACText
FEXTERNAL RFACT2ext
FEXTERNAL RFACTSTEP3
FEXTERNAL RFACTSTEP5
FEXTERNAL METASOLV
FEXTERNAL METASOLVOUT
FEXTERNAL METASOLV2
FEXTERNAL METASOLV4
FEXTERNAL ADDMULTIPL
FEXTERNAL FACTOOBJext
FEXTERNAL SLVARext
FEXTERNAL SIMPLIFY
FEXTERNAL SIMP1ext
FEXTERNAL SYMEXPAN
FEXTERNAL SIMPVAR
FEXTERNAL ID>DERext
FEXTERNAL SIMPIDNT
FEXTERNAL RCLALLIDNT
FEXTERNAL RCL1IDNT
FEXTERNAL SIMPSYMBS
FEXTERNAL SYMINTEGRAL
FEXTERNAL SIMPUSERFCN
FEXTERNAL EVALUSERFCN
FEXTERNAL SIMP|
FEXTERNAL DENOLCMext
FEXTERNAL METADENOLCM
FEXTERNAL SWPSIMPNDXF
FEXTERNAL SIMPNDXFext
FEXTERNAL SIMPext
FEXTERNAL SIMPEXTOK
FEXTERNAL MAKEPROFOND
FEXTERNAL SLOWSIMP2L
FEXTERNAL SIMPGCDext
FEXTERNAL SIMP3ext
FEXTERNAL SIMP3LISText
FEXTERNAL SIMP3LSTSLOW
FEXTERNAL LPGCDext
FEXTERNAL SLOWGCDext
FEXTERNAL QGcd
FEXTERNAL GCDext
FEXTERNAL CGCDext
FEXTERNAL CMODext
FEXTERNAL ZGCDext
FEXTERNAL ZGcd
FEXTERNAL TSIMP2ext
FEXTERNAL TSIMPext
FEXTERNAL TSIMP3ext
FEXTERNAL LASTCOMP
FEXTERNAL SQFF2ext
FEXTERNAL PPZ
FEXTERNAL PZHSTR
FEXTERNAL HORNER1ext
FEXTERNAL PEval
FEXTERNAL RISCHext
FEXTERNAL risch/
FEXTERNAL rischABS
FEXTERNAL IBP
FEXTERNAL SQRT_IN?
FEXTERNAL IS_SQRT?
FEXTERNAL XROOT_IN?
FEXTERNAL IS_XROOT?
FEXTERNAL STOPRIMIT
FEXTERNAL CONTAINS_LN?
FEXTERNAL ISNT_IDNT?
FEXTERNAL RISCHPF
FEXTERNAL RISCHRAT
FEXTERNAL rischlogpart
FEXTERNAL PREVALext
FEXTERNAL WARNSING
FEXTERNAL INText
FEXTERNAL INT3
FEXTERNAL FOURIERext
FEXTERNAL 3DUP
FEXTERNAL #3+ROLL
FEXTERNAL 2DROPTRUE
FEXTERNAL IRRQ#ULTIMATE
FEXTERNAL LESSCOMPLEX?
FEXTERNAL LISTIRRQ
FEXTERNAL LIST1i-1-i
FEXTERNAL LIST10-10
FEXTERNAL TABLECOSext
FEXTERNAL TABLETANext
FEXTERNAL DROPZ1
FEXTERNAL DROPZ0
FEXTERNAL TESTINFINI
FEXTERNAL INFINIext
FEXTERNAL MINUSINFext
FEXTERNAL PLUSINFext
FEXTERNAL ?ext
FEXTERNAL POSINFext
FEXTERNAL POSUNDEFext
FEXTERNAL pisur2
FEXTERNAL pisur-2
FEXTERNAL pi
FEXTERNAL metapi
FEXTERNAL 'xPI
FEXTERNAL metai
FEXTERNAL 'xi
FEXTERNAL ipi
FEXTERNAL metaipi
FEXTERNAL meta-pi
FEXTERNAL metapi/2
FEXTERNAL metapi/4
FEXTERNAL meta-pi/2
FEXTERNAL meta-pi/4
FEXTERNAL pifois2
FEXTERNAL deuxipi
FEXTERNAL metapi*2
FEXTERNAL base_ln
FEXTERNAL meta_e
FEXTERNAL NEXTPext
FEXTERNAL INSERT{}N
FEXTERNAL COMPRIMext
FEXTERNAL TCOLLECT
FEXTERNAL SIGMAEXPext
FEXTERNAL LINEXPext
FEXTERNAL SIGMAEXP2ext
FEXTERNAL TCHEBext
FEXTERNAL SINEXPA
FEXTERNAL METASINEXPA
FEXTERNAL SINEXPA+
FEXTERNAL SINEXPA-
FEXTERNAL SINEXPA*
FEXTERNAL SINEXPA*1
FEXTERNAL COSEXPA
FEXTERNAL METACOSEXPA
FEXTERNAL COSEXPA+
FEXTERNAL COSEXPA-
FEXTERNAL COSEXPA*
FEXTERNAL COSEXPA*1
FEXTERNAL EXPEXPA
FEXTERNAL METAEXPEXPA
FEXTERNAL EXPEXPA+
FEXTERNAL EXPEXPA-
FEXTERNAL EXPEXPA*
FEXTERNAL EXPEXPANEG
FEXTERNAL EXPEXPA*1
FEXTERNAL LNEXPA
FEXTERNAL METALNEXPA
FEXTERNAL LNEXPA*
FEXTERNAL LNEXPA/
FEXTERNAL LNEXPA^
FEXTERNAL LINEXPA
FEXTERNAL MTRIG2SYMB
FEXTERNAL LNCOLCext
FEXTERNAL METATANEXPA
FEXTERNAL TEXPAext
FEXTERNAL MAT+
FEXTERNAL MADD
FEXTERNAL MAT-
FEXTERNAL MSUB
FEXTERNAL VADD
FEXTERNAL VSUB
FEXTERNAL MAT*
FEXTERNAL MMMULT
FEXTERNAL MVMULT
FEXTERNAL SCL*MAT
FEXTERNAL MAT*SCL
FEXTERNAL VPMULT
FEXTERNAL MAT^
FEXTERNAL MATCROSS
FEXTERNAL MATDOT
FEXTERNAL RNDARRY
FEXTERNAL TRCARRY
FEXTERNAL XYext
FEXTERNAL MAT/SCL
FEXTERNAL MAT/
FEXTERNAL MATCHS
FEXTERNAL MATSQUARE
FEXTERNAL MATCONJ
FEXTERNAL MATRE
FEXTERNAL MATIM
FEXTERNAL MATTRACE
FEXTERNAL MATTRN
FEXTERNAL MATTRAN
FEXTERNAL mattran
FEXTERNAL mattrn
FEXTERNAL MATSUB
FEXTERNAL submeta
FEXTERNAL MATREPL
FEXTERNAL MATREDIM
FEXTERNAL VRRDM
FEXTERNAL VRRDMmeta
FEXTERNAL MATRANM
FEXTERNAL DIMRANM
FEXTERNAL MATDET
FEXTERNAL MATRDET
FEXTERNAL MATFNORM
FEXTERNAL MATRNORM
FEXTERNAL MATCNORM
FEXTERNAL MATRREF
FEXTERNAL MATREF
FEXTERNAL MATRANK
FEXTERNAL MATINV
FEXTERNAL MATREFRREF
FEXTERNAL INXREDext
FEXTERNAL METAMATRED
FEXTERNAL METAPIVOT
FEXTERNAL PIVOTNORM
FEXTERNAL PIVOTFLOAT
FEXTERNAL SYSText
FEXTERNAL STOSYSText
FEXTERNAL MAKESYSText
FEXTERNAL VARGENext
FEXTERNAL NULLVECTOR?
FEXTERNAL FINDELN
FEXTERNAL PULLEL[S]
FEXTERNAL BANGARRY
FEXTERNAL PUT[]
FEXTERNAL ARSIZE
FEXTERNAL MATRIX>DIAG
FEXTERNAL MATRIXDIAG>
FEXTERNAL la+ELEMsym
FEXTERNAL INSERTROW[]
FEXTERNAL insertrow[]
FEXTERNAL INSERTCOL[]
FEXTERNAL INSERT[]ROW[]
FEXTERNAL INSERT[]COL[]
FEXTERNAL MATRIXRCI
FEXTERNAL MATRIXRCIJ
FEXTERNAL MATRIXCSWAP
FEXTERNAL MATRIXRSWAP
FEXTERNAL MATRIX-ROW
FEXTERNAL METAMAT-ROW
FEXTERNAL MATRIX-COL
FEXTERNAL METAMATCSWAP
FEXTERNAL METAMATRSWAP
FEXTERNAL STOMAText
FEXTERNAL MATIDN
FEXTERNAL MATCON
FEXTERNAL MAKEARRY
FEXTERNAL OBJDIMS2MAT
FEXTERNAL LCPROG2M
FEXTERNAL MAKE2DMATRIX
FEXTERNAL make2dmatrix
FEXTERNAL ADDMATOBJext
FEXTERNAL VUNARYOP
FEXTERNAL VBINARYOP
FEXTERNAL PEVAL
FEXTERNAL MATEGVL
FEXTERNAL ROOTM2ROOT
FEXTERNAL MADJ
FEXTERNAL MATEGV
FEXTERNAL JORDAN
FEXTERNAL QXA
FEXTERNAL AXQ
FEXTERNAL GAUSS
FEXTERNAL SYLVESTER
FEXTERNAL metasplit
FEXTERNAL m-1&m+1
FEXTERNAL meta1/meta
FEXTERNAL 1&meta
FEXTERNAL meta/2
FEXTERNAL addt2
FEXTERNAL addt/
FEXTERNAL meta2*
FEXTERNAL meta1-sq
FEXTERNAL metasq+1
FEXTERNAL metasq-1
FEXTERNAL meta-1
FEXTERNAL NDROPZERO
FEXTERNAL 2DROPZ0
FEXTERNAL metaadd
FEXTERNAL metasub
FEXTERNAL metamult
FEXTERNAL metadiv
FEXTERNAL meta^
FEXTERNAL addt^
FEXTERNAL metapow
FEXTERNAL metafraction?
FEXTERNAL metaxroot
FEXTERNAL top&addt*
FEXTERNAL top&addt/
FEXTERNAL addti
FEXTERNAL metaEQUAL?
FEXTERNAL 2metaundef#
FEXTERNAL 1metaundef#
FEXTERNAL metaundef
FEXTERNAL 2metainf#
FEXTERNAL 1metainf#
FEXTERNAL metainftype
FEXTERNAL unsignedinf
FEXTERNAL plusinf
FEXTERNAL NDROPplusinf
FEXTERNAL minusinf
FEXTERNAL NDROPminusinf
FEXTERNAL MetaAdd
FEXTERNAL xssSYM+
FEXTERNAL MetaSub
FEXTERNAL xssSYM-
FEXTERNAL MetaMul
FEXTERNAL xssSYM*
FEXTERNAL MetaDiv
FEXTERNAL xssSYM/
FEXTERNAL NDROPZ0
FEXTERNAL NDROPZ1
FEXTERNAL MetaPow
FEXTERNAL xssSYM^
FEXTERNAL MetaNeg
FEXTERNAL xSYMCHS
FEXTERNAL metaneg
FEXTERNAL metackneg
FEXTERNAL metasimp
FEXTERNAL metapi?
FEXTERNAL metaCOMPARE
FEXTERNAL STRICTmetaCOMPARE
FEXTERNAL EQUALPOSMETA
FEXTERNAL EQUALPOS2META
FEXTERNAL vgerxssSYMSUM
FEXTERNAL DISTRIB/
FEXTERNAL metareal?
FEXTERNAL ModExpa
FEXTERNAL ModAdd
FEXTERNAL ModSub
FEXTERNAL ModMul
FEXTERNAL ModDiv
FEXTERNAL ModDiv2
FEXTERNAL ModInv
FEXTERNAL ModGcd
FEXTERNAL ModLGCD
FEXTERNAL ModLOPD
FEXTERNAL MODULOMODext
FEXTERNAL MODULOMAText
FEXTERNAL Mod
FEXTERNAL ModFctr
FEXTERNAL PARTFRAC
FEXTERNAL INPARTFRAC
FEXTERNAL PARTFRACRAT
FEXTERNAL PFext
FEXTERNAL IEGCDext
FEXTERNAL REGCDext
FEXTERNAL EGCDext
FEXTERNAL INEGCD
FEXTERNAL EGCDSWAP
FEXTERNAL EGCDNEWG
FEXTERNAL PDer
FEXTERNAL INTEGRext
FEXTERNAL LRDMext
FEXTERNAL RRDMext
FEXTERNAL DEGREext
FEXTERNAL HORNext
FEXTERNAL HORN1
FEXTERNAL MHORNext
FEXTERNAL PTAYLext
FEXTERNAL LAGRANGEext
FEXTERNAL PSEUDOPREP
FEXTERNAL PSEUDODIV
FEXTERNAL IDIV2
FEXTERNAL BESTDIV2
FEXTERNAL CDIV2ext
FEXTERNAL QUOText
FEXTERNAL NEWDIVext
FEXTERNAL QDivRem
FEXTERNAL DIV2LISText
FEXTERNAL DIVOBJext
FEXTERNAL DIVMETAOBJ
FEXTERNAL LOPDext
FEXTERNAL QUOTOBJext
FEXTERNAL DIVISIBLE?
FEXTERNAL QDiv?
FEXTERNAL FastDiv?
FEXTERNAL POTENCEext
FEXTERNAL PDIV2ext
FEXTERNAL PSetSign
FEXTERNAL PLCZ
FEXTERNAL HSECO2RCext
FEXTERNAL SECO2CMPext
FEXTERNAL SECO2CMPPOL
FEXTERNAL SECO2CMPCART
FEXTERNAL VALOBJext
FEXTERNAL R2SYM
FEXTERNAL VAL2ext
FEXTERNAL INVAL2
FEXTERNAL METAVAL2
FEXTERNAL VAL1
FEXTERNAL VAL1M
FEXTERNAL addt0meta
FEXTERNAL HALFTAN
FEXTERNAL COS2TAN/2
FEXTERNAL cos2tan/2
FEXTERNAL 1-x^2/1+x^2
FEXTERNAL SIN2TAN/2
FEXTERNAL sin2tan/2
FEXTERNAL 2x/1+x^2
FEXTERNAL TAN2TAN/2
FEXTERNAL tan2tan/2
FEXTERNAL addtTAN/2
FEXTERNAL TRIGTAN
FEXTERNAL COS2TAN
FEXTERNAL cos2tan
FEXTERNAL SIN2TAN
FEXTERNAL sin2tan
FEXTERNAL TRIGext
FEXTERNAL HYP2EXPext
FEXTERNAL EXPLNext
FEXTERNAL SERIESEXPLN
FEXTERNAL LNP12LN
FEXTERNAL LOG2LN
FEXTERNAL ALOG2EXP
FEXTERNAL EXPM2EXP
FEXTERNAL SQRT2LNEXP
FEXTERNAL sqrt2lnexp
FEXTERNAL TAN2EXP
FEXTERNAL tan2exp
FEXTERNAL ASIN2LN
FEXTERNAL asin2ln
FEXTERNAL ACOS2LN
FEXTERNAL acos2ln
FEXTERNAL TAN2SCext
FEXTERNAL TAN2SC
FEXTERNAL sin/cos
FEXTERNAL SIN2TCext
FEXTERNAL SIN2TC
FEXTERNAL cos*tan
FEXTERNAL COS2ext
FEXTERNAL sqrt1-sin^2
FEXTERNAL SIN2ext
FEXTERNAL sqrt1-cos^2
FEXTERNAL ATAN2Sext
FEXTERNAL ATAN2ASIN
FEXTERNAL atan2asin
FEXTERNAL ASIN2Text
FEXTERNAL ASIN2ATAN
FEXTERNAL asin2atan
FEXTERNAL ASIN2Cext
FEXTERNAL ASIN2ACOS
FEXTERNAL pi/2-acos
FEXTERNAL pi/2-meta
FEXTERNAL ACOS2Sext
FEXTERNAL pi/2-asin
FEXTERNAL ACOS2ASIN
FEXTERNAL ATAN2LNext
FEXTERNAL atan2ln
FEXTERNAL TAN2SC2ext
FEXTERNAL TAN2SC2
FEXTERNAL 2*1-cos/sin
FEXTERNAL TAN2CS2
FEXTERNAL 2*sin/1+cos
FEXTERNAL SIN2EXPext
FEXTERNAL sin2exp
FEXTERNAL COS2EXPext
FEXTERNAL cos2exp
FEXTERNAL SINH2EXPext
FEXTERNAL sinh2exp
FEXTERNAL COSH2EXPext
FEXTERNAL cosh2exp
FEXTERNAL TANH2EXPext
FEXTERNAL tanh2exp
FEXTERNAL ASINH2LNext
FEXTERNAL asinh2ln
FEXTERNAL ACOSH2LNext
FEXTERNAL acosh2ln
FEXTERNAL ATANH2LNext
FEXTERNAL atanh2ln
FEXTERNAL XROOT2ext
FEXTERNAL xroot2expln
FEXTERNAL LN2ext
FEXTERNAL SINCOSext
FEXTERNAL exp2sincos
FEXTERNAL metai*
FEXTERNAL LN2ATAN
FEXTERNAL VAR=LIST
FEXTERNAL IDNTEXEC
FEXTERNAL SYMISOL
FEXTERNAL SYMQFORM
FEXTERNAL LISTEXEC
FEXTERNAL LISTEXEC1
FEXTERNAL SECOEXEC
FEXTERNAL EQUATION?
FEXTERNAL USERFCN?
FEXTERNAL SYMBEXEC
FEXTERNAL MEVALext
FEXTERNAL CASNUMEVAL
FEXTERNAL CASCOMPEVAL
FEXTERNAL REPLACE2BY1
FEXTERNAL NR_REPLACE
FEXTERNAL SYMBWHERE
FEXTERNAL CASCRUNCH
FEXTERNAL APPROXCOMPEVAL
FEXTERNAL LIMIText
FEXTERNAL REWRITEIFINF
FEXTERNAL SYMTAYLOR
FEXTERNAL SYMPAPRX
FEXTERNAL TRUNCDL
FEXTERNAL LIMSERIES!
FEXTERNAL LIMITX!
FEXTERNAL LIMITNOVX!
FEXTERNAL LIMERR0!
FEXTERNAL LIMERR1!
FEXTERNAL LIMIT!
FEXTERNAL LIMSTEP1!
FEXTERNAL LIMSTEP2!
FEXTERNAL LIMSTEP3!
FEXTERNAL LIMSTEP4!
FEXTERNAL LIMLIM!
FEXTERNAL n{}N
FEXTERNAL LIMLIM1!
FEXTERNAL LIMCMPL!
FEXTERNAL LIMEQUFR!
FEXTERNAL LIMEQU!
FEXTERNAL LIMEQU0!
FEXTERNAL LIM+-!
FEXTERNAL LIMERR10!
FEXTERNAL LIMNEG!
FEXTERNAL LIMRAC!
FEXTERNAL LIMINV!
FEXTERNAL LIM/!
FEXTERNAL LIMPOW!
FEXTERNAL LIMSQ!
FEXTERNAL LIM*!
FEXTERNAL LIMDIVPC!
FEXTERNAL DIVPC!
FEXTERNAL LIMPROFEND!
FEXTERNAL LIMPROF!
FEXTERNAL LIM%#!
FEXTERNAL LIMPROF0!
FEXTERNAL LIMPROF1!
FEXTERNAL LIMPROF2!
FEXTERNAL LIMINVLN!
FEXTERNAL LIMLN!
FEXTERNAL LIMEXP!
FEXTERNAL LIMSINCOS!
FEXTERNAL LIMATAN!
FEXTERNAL LIMASIN!
FEXTERNAL LIMSQRT!
FEXTERNAL LIMFLOOR!
FEXTERNAL LIMABS!
FEXTERNAL LPROF!
FEXTERNAL LIM#VARX!
FEXTERNAL LIMBETA!
FEXTERNAL LIMALPHA!
FEXTERNAL HORNEXP!
FEXTERNAL HORNCOS!
FEXTERNAL HORNSIN!
FEXTERNAL LIMSC0!
FEXTERNAL LIMSC1!
FEXTERNAL HORNATAN!
FEXTERNAL LIMATAS!
FEXTERNAL HORNASIN!
FEXTERNAL HORNASIN1!
FEXTERNAL HORNLN!
FEXTERNAL LNOBJ!
FEXTERNAL NEWLIMHORN
FEXTERNAL LIMHORN!
FEXTERNAL LRDM!
FEXTERNAL LIMDL!
FEXTERNAL LIMDLINF!
FEXTERNAL LIMINFSIGN!
FEXTERNAL LIMMAX!
FEXTERNAL LIMCOMP!
FEXTERNAL VARCOMP2!
FEXTERNAL LIMSORT!
FEXTERNAL VARCOMP!
FEXTERNAL VARCOMPLN!
FEXTERNAL VARCOMP3!
FEXTERNAL VARCOMP31!
FEXTERNAL VARCOMP32!
FEXTERNAL VARCOMP33!
FEXTERNAL LIMERR6!
FEXTERNAL LIMVALOBJ!
FEXTERNAL LIMVAL!
FEXTERNAL EQUIV!
FEXTERNAL LVARXNX2!
FEXTERNAL SIMP1!
FEXTERNAL FindCurVar
FEXTERNAL LIMVAR!
FEXTERNAL VAR%
FEXTERNAL ISOL1
FEXTERNAL ISOLALL
FEXTERNAL ISOL2ext
FEXTERNAL BEZOUTMSOLV
FEXTERNAL ROOT{}N
FEXTERNAL MHORNER
FEXTERNAL MHORNER1
FEXTERNAL SQFFext
FEXTERNAL MSQFF
FEXTERNAL %1TWO
FEXTERNAL MZSQFF
FEXTERNAL MZSQFF1
FEXTERNAL MSECOSQFF
FEXTERNAL MLISTSQFF
FEXTERNAL METASQFFext
FEXTERNAL SECOSQFFext
FEXTERNAL CSQFFext
FEXTERNAL SUMSQRext
FEXTERNAL VXXLext
FEXTERNAL METALISTVXXL
FEXTERNAL VXXLFext
FEXTERNAL VXXL1ext
FEXTERNAL VXXL0
FEXTERNAL VXXL2NR
FEXTERNAL VXXL2
FEXTERNAL LIDNText
FEXTERNAL LVARXNXext
FEXTERNAL ISPOLYNOMIAL?
FEXTERNAL 2POLYNOMIAL?
FEXTERNAL VXINDEP?
FEXTERNAL LVARXNX2ext
FEXTERNAL RLVARext
FEXTERNAL LLVARDext
FEXTERNAL VXLVARext
FEXTERNAL LVARext
FEXTERNAL VX>LVARext
FEXTERNAL VX>
FEXTERNAL VX!
FEXTERNAL prepvarlist
FEXTERNAL LIDNTLVAR
FEXTERNAL LISTOPRAC
FEXTERNAL LISTOPext
FEXTERNAL LISTOPSQRT
FEXTERNAL LVARDext
FEXTERNAL >VARLIST
FEXTERNAL DEPTHext
FEXTERNAL DEPTHOBJext
FEXTERNAL TRIMext
FEXTERNAL PTrim
FEXTERNAL TRIMOBJext
FEXTERNAL NEWTRIMext
FEXTERNAL >POLYTRIM
FEXTERNAL ELMGext
FEXTERNAL SWAPRNEG
FEXTERNAL QNeg
FEXTERNAL RNEGext
FEXTERNAL SWAPRRE
FEXTERNAL RREext
FEXTERNAL SWAPRIM
FEXTERNAL RIMext
FEXTERNAL xREext
FEXTERNAL xSYMRE
FEXTERNAL xIMext
FEXTERNAL xSYMIM
FEXTERNAL RCONJext
FEXTERNAL addtCONJ
FEXTERNAL xSYMCONJ
FEXTERNAL QCONJext
FEXTERNAL QABSext
FEXTERNAL RABSext
FEXTERNAL ZABS
FEXTERNAL CZABS
FEXTERNAL xABSext
FEXTERNAL addtABS
FEXTERNAL xSYMABS
FEXTERNAL addtABSEXACT
FEXTERNAL addtSIGN
FEXTERNAL xSYMSIGN
FEXTERNAL addtARG
FEXTERNAL xSYMARG
FEXTERNAL ARG2
FEXTERNAL INTERNALARG2
FEXTERNAL QUADRANT
FEXTERNAL CNORMext
FEXTERNAL CXIRext
FEXTERNAL QNORMext
FEXTERNAL SXSQRext
FEXTERNAL XSQRext
FEXTERNAL CK%%SQRT
FEXTERNAL C%%SQRT
FEXTERNAL ZINTSQRT
FEXTERNAL SHALT
FEXTERNAL CKLN
FEXTERNAL xLNext
FEXTERNAL addtLN
FEXTERNAL xSYMLN
FEXTERNAL EXPANDLN
FEXTERNAL CMPLXLN
FEXTERNAL LNATANext
FEXTERNAL REALLN
FEXTERNAL xEXPext
FEXTERNAL xINVext
FEXTERNAL xvext
FEXTERNAL xCOSext
FEXTERNAL xSINext
FEXTERNAL xTANext
FEXTERNAL xCOSHext
FEXTERNAL xSINHext
FEXTERNAL xTANHext
FEXTERNAL xASINext
FEXTERNAL xACOSext
FEXTERNAL xATANext
FEXTERNAL addtCOS
FEXTERNAL xSYMCOS
FEXTERNAL addtSIN
FEXTERNAL xSYMSIN
FEXTERNAL addtTAN
FEXTERNAL xSYMTAN
FEXTERNAL addtSINACOS
FEXTERNAL addtASIN
FEXTERNAL xSYMASIN
FEXTERNAL addtACOS
FEXTERNAL xSYMACOS
FEXTERNAL addtATAN
FEXTERNAL xSYMATAN
FEXTERNAL addtSINH
FEXTERNAL xSYMSINH
FEXTERNAL addtCOSH
FEXTERNAL xSYMCOSH
FEXTERNAL addtTANH
FEXTERNAL xSYMTANH
FEXTERNAL xATANHext
FEXTERNAL addtATANH
FEXTERNAL xSYMATANH
FEXTERNAL xASINHext
FEXTERNAL addtASINH
FEXTERNAL xSYMASINH
FEXTERNAL xACOSHext
FEXTERNAL addtACOSH
FEXTERNAL xSYMACOSH
FEXTERNAL addtSQRT
FEXTERNAL xSYMSQRT
FEXTERNAL xSQext
FEXTERNAL addtSQ
FEXTERNAL xSYMSQ
FEXTERNAL addtINV
FEXTERNAL xSYMINV
FEXTERNAL addtEXP
FEXTERNAL xSYMEXP
FEXTERNAL addtD->R
FEXTERNAL xSYMD>R
FEXTERNAL addtR->D
FEXTERNAL xSYMR>D
FEXTERNAL addtFLOOR
FEXTERNAL xSYMFLOOR
FEXTERNAL addtCEIL
FEXTERNAL xSYMCEIL
FEXTERNAL addtIP
FEXTERNAL xSYMIP
FEXTERNAL addtFP
FEXTERNAL xSYMFP
FEXTERNAL addtXPON
FEXTERNAL xSYMXPON
FEXTERNAL addtMANT
FEXTERNAL xSYMMANT
FEXTERNAL addtLNP1
FEXTERNAL xSYMLNP1
FEXTERNAL addtLOG
FEXTERNAL xSYMLOG
FEXTERNAL addtALOG
FEXTERNAL xSYMALOG
FEXTERNAL addtEXPM
FEXTERNAL xSYMEXPM1
FEXTERNAL factorial
FEXTERNAL facts
FEXTERNAL addtFACT
FEXTERNAL xSYMFACT
FEXTERNAL factzint
FEXTERNAL addtNOT
FEXTERNAL xSYMNOT
FEXTERNAL Verbose1
FEXTERNAL Verbose2
FEXTERNAL Verbose3
FEXTERNAL VerboseN
FEXTERNAL ErrBadSqrt
FEXTERNAL COMPLEXERR
FEXTERNAL INTERNALERR
FEXTERNAL VXINDEPERR
FEXTERNAL ISOLERR
FEXTERNAL NONUNARYERR
FEXTERNAL NONPOLYSYST
FEXTERNAL INVALIDOP
FEXTERNAL NONINTERR
FEXTERNAL INTVARERR
FEXTERNAL CANTFACTOR
FEXTERNAL Z>#ERR
FEXTERNAL Z<0ERR
FEXTERNAL ERR$EVALext
FEXTERNAL ERABLEERROR
FEXTERNAL TRANSCERROR
FEXTERNAL GETERABLEMSG
FEXTERNAL Sys1IT

** From CAS2/cas2extdec.h
FEXTERNAL xADDTOREAL
FEXTERNAL CASRESERVED0
FEXTERNAL CASRESERVED1
FEXTERNAL CASRESERVED2
FEXTERNAL CASRESERVED3
FEXTERNAL CASRESERVED4
FEXTERNAL CASRESERVED5
FEXTERNAL CASRESERVED6
FEXTERNAL CASRESERVED7
FEXTERNAL CASRESERVED8
FEXTERNAL CASRESERVED9
FEXTERNAL CASRESERVED10
FEXTERNAL CASRESERVED11
FEXTERNAL CASRESERVED12
FEXTERNAL CASRESERVED13
FEXTERNAL CASRESERVED14
FEXTERNAL CASRESERVED15
FEXTERNAL CASRESERVED16
FEXTERNAL CASRESERVED17
FEXTERNAL CASRESERVED18
FEXTERNAL CASRESERVED19
FEXTERNAL CASRESERVED20
FEXTERNAL CASRESERVED21
FEXTERNAL CASRESERVED22
FEXTERNAL CASRESERVED23
FEXTERNAL CASRESERVED24
FEXTERNAL CASRESERVED25
FEXTERNAL CASRESERVED26
FEXTERNAL CASRESERVED27
FEXTERNAL CASRESERVED28
FEXTERNAL CASRESERVED29
FEXTERNAL CASRESERVED30
FEXTERNAL CASRESERVED31
FEXTERNAL CASRESERVED32
FEXTERNAL CASRESERVED33
FEXTERNAL CASRESERVED34
FEXTERNAL CASRESERVED35
FEXTERNAL CASRESERVED36
FEXTERNAL CASRESERVED37
FEXTERNAL CASRESERVED38
FEXTERNAL CASRESERVED39
FEXTERNAL CASRESERVED40
FEXTERNAL CASRESERVED41
FEXTERNAL CASRESERVED42
FEXTERNAL CASRESERVED43
FEXTERNAL CASRESERVED44
FEXTERNAL CASRESERVED45
FEXTERNAL CASRESERVED46
FEXTERNAL CASRESERVED47
FEXTERNAL CASRESERVED48
FEXTERNAL CASRESERVED49
FEXTERNAL CASRESERVED50
FEXTERNAL CASRESERVED51
FEXTERNAL CASRESERVED52
FEXTERNAL CASRESERVED53
FEXTERNAL CASRESERVED54
FEXTERNAL CASRESERVED55
FEXTERNAL CASRESERVED56
FEXTERNAL CASRESERVED57
FEXTERNAL CASRESERVED58
FEXTERNAL CASRESERVED59
FEXTERNAL CASRESERVED60
FEXTERNAL CASRESERVED61
FEXTERNAL CASRESERVED62
FEXTERNAL CASRESERVED63
FEXTERNAL CASRESERVED64
FEXTERNAL CASRESERVED65
FEXTERNAL CASRESERVED66
FEXTERNAL CASRESERVED67
FEXTERNAL CASRESERVED68
FEXTERNAL CASRESERVED69
FEXTERNAL CASRESERVED70
FEXTERNAL CASRESERVED71
FEXTERNAL CASRESERVED72
FEXTERNAL CASRESERVED73
FEXTERNAL CASRESERVED74
FEXTERNAL CASRESERVED75
FEXTERNAL CASRESERVED76
FEXTERNAL CASRESERVED77
FEXTERNAL CASRESERVED78
FEXTERNAL CASRESERVED79
FEXTERNAL CASRESERVED80
FEXTERNAL CASRESERVED81
FEXTERNAL CASRESERVED82
FEXTERNAL CASRESERVED83
FEXTERNAL CASRESERVED84
FEXTERNAL CASRESERVED85
FEXTERNAL CASRESERVED86
FEXTERNAL CASRESERVED87
FEXTERNAL CASRESERVED88
FEXTERNAL CASRESERVED89
FEXTERNAL CASRESERVED90
FEXTERNAL CASRESERVED91
FEXTERNAL CASRESERVED92
FEXTERNAL CASRESERVED93
FEXTERNAL CASRESERVED94
FEXTERNAL CASRESERVED95
FEXTERNAL CASRESERVED96
FEXTERNAL CASRESERVED97
FEXTERNAL CASRESERVED98
FEXTERNAL CASRESERVED99
FEXTERNAL QpiZ
FEXTERNAL QPI
FEXTERNAL QpiSym
FEXTERNAL QpiArry
FEXTERNAL QpiList
FEXTERNAL Qpi
FEXTERNAL Qpi%
FEXTERNAL GetRoot
FEXTERNAL Approx
FEXTERNAL #FACT
FEXTERNAL CHECKSING
FEXTERNAL DESOLVE
FEXTERNAL ODE_INT
FEXTERNAL LINSOLV
FEXTERNAL LDECSOLV
FEXTERNAL LDEGENE
FEXTERNAL LDEPART
FEXTERNAL LDSSOLVext
FEXTERNAL ODETYPESTO
FEXTERNAL ODE_SEPAR
FEXTERNAL LAPext
FEXTERNAL ILAPext
FEXTERNAL ILAPRAText
FEXTERNAL ILAPDELTA
FEXTERNAL ILAPEXP
FEXTERNAL ILAPEXPSC
FEXTERNAL MENUext
FEXTERNAL WRITEMENU
FEXTERNAL CFGDISPLAY
FEXTERNAL NEWVX
FEXTERNAL NEWMODULO
FEXTERNAL SWITCHON
FEXTERNAL SWITCHOFF
FEXTERNAL FLAGNAME
FEXTERNAL COMPLEXON
FEXTERNAL COMPLEXOFF
FEXTERNAL EXACTON
FEXTERNAL EXACTOFF
FEXTERNAL COMPLEXMODE
FEXTERNAL SETCOMPLEX
FEXTERNAL COMPLEX?
FEXTERNAL REALMODE
FEXTERNAL CLRCOMPLEX
FEXTERNAL EXACTMODE
FEXTERNAL SETEXACT
FEXTERNAL NUMMODE
FEXTERNAL CLREXACT
FEXTERNAL EXACT?
FEXTERNAL STEPBYSTEP
FEXTERNAL NOSTEPBYSTEP
FEXTERNAL VERBOSEMODE
FEXTERNAL SILENTMODE
FEXTERNAL RECURMODE
FEXTERNAL NONRECMODE
FEXTERNAL PLUSAT0
FEXTERNAL SETPLUSAT0
FEXTERNAL PLUSATINFTY
FEXTERNAL CLRPLUSAT0
FEXTERNAL SPARSEDATA
FEXTERNAL FULLDATA
FEXTERNAL RIGORMODE
FEXTERNAL SLOPPYMODE
FEXTERNAL SLOPPY?
FEXTERNAL MENUCHOOSE?
FEXTERNAL MENUCHOOSE
FEXTERNAL MENUGENE1
FEXTERNAL MENUBASE1
FEXTERNAL MENUCMPLX1
FEXTERNAL MENUTRIG1
FEXTERNAL MENUMAT1
FEXTERNAL MENUARIT1
FEXTERNAL MENUSOLVE1
FEXTERNAL MENUEXPLN1
FEXTERNAL MENUDIFF1
FEXTERNAL PROMPTSTO1
FEXTERNAL XGROBext
FEXTERNAL GROBADDext
FEXTERNAL DISPLAYext
FEXTERNAL SCROLLext
FEXTERNAL RCLMODULO
FEXTERNAL RCLPERIOD
FEXTERNAL RCLVX
FEXTERNAL STOVX
FEXTERNAL STOMODULO
FEXTERNAL RCLEPS
FEXTERNAL ISIDREAL?
FEXTERNAL ADDTOREAL
FEXTERNAL RESETCASCFG
FEXTERNAL FRACPARITY
FEXTERNAL POLYPARITY
FEXTERNAL PARITYTEST
FEXTERNAL COSTEST
FEXTERNAL SHRINKEVEN
FEXTERNAL SINTEST
FEXTERNAL SHRINK2SYM
FEXTERNAL SHRINKSYM
FEXTERNAL SHRINK2ASYM
FEXTERNAL SHRINKASYM
FEXTERNAL FR2ND%
FEXTERNAL POLYSYM
FEXTERNAL POLYASYM
FEXTERNAL P2P#
FEXTERNAL NDEvalN/D
FEXTERNAL PEvalN/D
FEXTERNAL POSITIFext
FEXTERNAL SIGNE1ext
FEXTERNAL SIGNEext
FEXTERNAL SIGNUNDEF
FEXTERNAL SIGNPLUS
FEXTERNAL SIGNMOINS
FEXTERNAL SIGNELN
FEXTERNAL SIGNEEXP
FEXTERNAL SIGNESIN
FEXTERNAL SIGNECOS
FEXTERNAL SIGNETAN
FEXTERNAL SIGNEATAN
FEXTERNAL SIGNESQRT
FEXTERNAL SUBSIGNE
FEXTERNAL SIGNERIGHT
FEXTERNAL SIGNELEFT
FEXTERNAL >SIGNE
FEXTERNAL SIGNE>
FEXTERNAL SIGNMULText
FEXTERNAL ZSIGNECK
FEXTERNAL SIGNEERROR
FEXTERNAL ZSIGNE
FEXTERNAL zsigne
