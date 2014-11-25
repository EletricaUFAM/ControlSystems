*******************************************************************************************
*******************************************************************************************
*******************************************************************************************
**               I N F O R M   B O X   E X P O R T E D   F U N C T I O N S               **
**                 all this functions should be called by FLash Pointers                 **
*******************************************************************************************
*******************************************************************************************
*******************************************************************************************

*******************************************************************************************
**** IfMain
* Main entry point, see RPLMan for more informations
* Abstact
*   Display a input form and let the user fill the fields
*   and validate or cancel the form
*
*   In order to let to the user the oportunity to modifiy teh behaviour
*   of the inform box, call backs are generated and sended to the user
*   through the eval handler
*   The messages are a SB (and some possible arguements, depending of the message)
*   then, the message handler is launched.
*   if the message handler handle teh message, the SB is removed from the stack
*   and a TRUE is pushed
*   else, the SB is droped and a FALSE is pushed
*   See each message definition for more informations.
*
* Inputs
*   13*nf+5+3*nl: Label 1 ... Label nl
*   13*nf+5: Field 1 ... Field nf
*   4: #Nb Labels
*   3: #Nb Fields
*   2: IF Handler
*   1: "Title" or GROB 131*7
*  Each label is
*   String or grob
*   #x pos
*   #y pos
*  Each field is
*   Message Handler
*   #X pos
*   #Y pos
*   #width
*   #height
*   type (See constantes)
*   allowed tyes #FFFFF or { #type1 .. #typen } (See constants)
*   Decomp object TODO
*   "HelpString" (displayed at the bottom of the screen when the field is selected)
*   Choose list (object given as an arguement to choose in choose fields)
*   Choose decomp format (used as an arguement for choose boxes on choose fields)
*   ResetValue (Value used when reseting the field)
*   InitValue (initial value)
* Outputs
* if cancel
*   1:FALSE
* if validated
*   n+1: Value of field 1
*   2:   Value of field n
*   1:   TRUE
*******************************************************************************************

*******************************************************************************************
**** IfSetFieldVisible
* togle the fields or label visible or invisible
*Inputs
* 3: #Field or label Number
* 2: True/False (Field/LABEL)
* 1: TRUE/FALSE/ZERO (TRUE or FALSE to set the value ZERO to recall the value)
*Outputs
* 1: Value if ZERO was the arguement
*******************************************************************************************

*******************************************************************************************
**** IfSetSelected
* togle the fields or label Selected or not Selected (Apears in invert video on the screen)
*
*Inputs
* 3: #Field or label Number
* 2: True/False (Field/LABEL)
* 1: TRUE/FALSE/ZERO (TRUE or FALSE to set the value ZERO to recall the value)
*
*Outputs
* 1: Value if ZERO was the arguement
*
*******************************************************************************************

*******************************************************************************************
**** IfSetGrob
* Set the Grob of a field or a label (Modify the data save in the data string)
* Tested
*
*Inputs
* 3: Id of the field or label
* 2: Field or Label (True or False)
* 1: Graphic
*
*Outputs
* none
*******************************************************************************************

*******************************************************************************************
**** IfSetFieldInternalValue
* Change the field internal Value (doesn't call field message handler, doesn't refresh display)
*
*Inputs
* 2: Value
* 1: #Field Number
*
*Outputs
* none
*******************************************************************************************

*******************************************************************************************
**** IfRefreshField
* Refresh the display of a field
*
*Inputs
* 1: Field
*
*Outputs
* none
*******************************************************************************************

*******************************************************************************************
**** IfSetFieldValue
* Set the value of a field (full handling, including GROB setting )
*
*Inputs
* 2: Value
* 1: Field
*
*Outputs
* none
*******************************************************************************************

*******************************************************************************************
**** IfSetCurrentFieldValue
* Set the Value of the Current Field
*
*Inputs
* 1: Value
*
*Outputs
* none
*******************************************************************************************

*******************************************************************************************
**** IfGetFieldValue
* Get the value of the Nth field
*
*Inputs
* 1: Number of the field to retrive the value of
*
*Outputs
* 1: Value
*******************************************************************************************

*******************************************************************************************
**** IfGetCurrentFieldValue
* Retrive the Value of the current Field
*
*Inputs
* none
*
*Outputs
* 1: Value
*******************************************************************************************

*******************************************************************************************
**** IfGetFieldMessageHandler
* Retrive a field message handler
*
*Inputs
* 1: #Field Number
*
*Outputs
* 1: Field Message Handler
*******************************************************************************************

*******************************************************************************************
**** IfGetFieldType
* Retrive the field type
*
*Inputs
* 1: #Field Number
*
*Outputs
* 1: Value
*******************************************************************************************

*******************************************************************************************
**** IfGetFieldObjectsType
* Retrive the field Object type liste
*
*Inputs
* 1: #Field number
*
*Outputs
* 1: Value
*******************************************************************************************

*******************************************************************************************
**** IfGetFieldDecompObject
* Retrive the field decomp value
*
*Inputs
* 1: #FieldNumber
*
*Outputs
* 1: Value
*******************************************************************************************

*******************************************************************************************
**** IfGetFieldChooseData
* Retrive the field data for choose
*
*Inputs
* 1: #Field Number
*
*Outputs
* 1: Value
*******************************************************************************************

*******************************************************************************************
**** IfGetFieldChooseDecomp
* Retrive the field decomp value in case of choose
*
*Inputs
* 1: #Field Numner
*
*Outputs
* 1: Value
*******************************************************************************************

*******************************************************************************************
**** IfGetFieldResetValue
* Retrive the field reset Value
*
*Inputs
* 1: #Field Number
*
*Outputs
* 1: Value
*******************************************************************************************

*******************************************************************************************
**** IfSetFieldResetValue
* Change the field reset Value
*
*Inputs
* 2: Value
* 1: #Field Number
*
*Outputs
* none
*******************************************************************************************

*******************************************************************************************
**** IfGetFieldInternalValue
* Retrive the field Internal Value
*
*Inputs
* 1: #Field Number
*
*Outputs
* 1: Value
*******************************************************************************************

*******************************************************************************************
**** IfDisplayFromData
* Display the datastring on the screen. Takes care of the command line size
*******************************************************************************************

*******************************************************************************************
**** Recall the number of fields from the data string
*
*Inputs
* none
*
*Outputs
* 1: #Nb of fields
*******************************************************************************************

*******************************************************************************************
**** IfCheckSetValue
* Check or uncheck a check field
*
*Inputs
* 2: #Field Number
* 1: Value
*
*Outputs
* none
*******************************************************************************************

*******************************************************************************************
**** IfCheckFieldtype
* Check if an object meet the current field type requirements
*
*Inputs
* 1: Object
*
*Outputs
* 2: Object
* 1: TRUE/FALSE
*******************************************************************************************

*******************************************************************************************
**** IfGetPrlgFromTypes
* Generate a list of the allowed prologs for a field
*
* Input:
*     1: Allowed types list (or MINUONE)
*
* Output:
*     1: allowed prolog list (or { ZERO } if all types allowed)
*
*******************************************************************************************

*******************************************************************************************
**** IfReset
* for All fields, Set as the current value their reset value
* Use to explode the datalist on the stack to work on it.
*
*Inputs
* none
*
*Outputs
* none
*******************************************************************************************

*******************************************************************************************
**** IfSetField
* Change the current field to a new one
*
*Inputs
* 1: New field number
*
*Outputs
* none
*******************************************************************************************

*******************************************************************************************
**** IfKeyChoose
* if the current field is a choose field, display the posibilities and let the user choise
*
*Inputs
* none
*
*Outputs
* maybe a new current field value
*******************************************************************************************

*******************************************************************************************
**** IfKeyEdit
* Edit the current field value if possible
* You can not edit a choose and a label choose field
*
*Inputs
* none
*
*Outputs
* A command line
*******************************************************************************************

*******************************************************************************************
**** IfKeyTypes
* Display a Choose box with all the possible types for this field.
*
*Inputs
* none
*
*Outputs
* May be a command line if the user press OK in the choose box
*******************************************************************************************

*******************************************************************************************
**** IfKeyCalc
* Put the value of the field no the stack and halt. Allows to the user to compute a new value
*
*Inputs
* none
*
*Outputs
* 1: Current field value
*******************************************************************************************

*******************************************************************************************
**** IfKeyInvertCheck
* Invert the current check field value
*
*Inputs
* none
*
*Outputs
* none
*******************************************************************************************

*******************************************************************************************
**** IfONKeyPress
* On Key handler
*
* Gives the oportunity to the user to perform his own program
* Ask to the IF if we can leave.
* if Yes, put a FALSE (quit with ON (If Cancled))
* and set the 'Quit variable to TRUE
*
*Inputs
* none
*
*Outputs
* none
*******************************************************************************************

*******************************************************************************************
**** IfEnterKeyPress
* Enter Key management
*
* Gives the oportunity to the user to perform his own program
* Ask to the IF if we can leave.
* if Yes, Put the fields values on the stack put a TRUE (IF Validated)
* and set the 'Quit variable to TRUE
*
*Inputs
* none
*
*Outputs
* none
*******************************************************************************************

* IfInternalMenuEdit
* IfInternalMenuTypes
* IfInternalMenuCalc
* IfInternalMenuCheck
* IfInternalMenuChoose

*******************************************************************************************
**** IfSetGrob3
* Modify the grob associated with a field or label within the data string
* This is used by automatic IF generator program ans should not
* be use in other ways
*
*Inputs
* 4: Data String
* 3: Id of the field or label
* 2: Field or Label (True or False)
* 1: Graphic, String or Error number
*
*Outputs
* none
*******************************************************************************************

************************************************************
**** IfSetHelpString
* Set the help string associated with a field
* This is used by automatic IF generator program ans should not
* be use in other ways
* Input:  3: Data String
*         2: Field Number
*         1: Help String or ErrorNumber
* Output: 1: Modified Data String
************************************************************

*******************************************************************************************
**** IfSetTitle
* Alters a DataString modifying the Title part
* This is used by automatic IF generator program ans should not
* be use in other ways
* 
* Input: 2: DataString
*        1: Grob, String, ErrorNumber
*
* Output: 1: Altered DataString
*******************************************************************************************

************************************************************
**** IfInitDepth
* initialize the internal depth counter. This has to be used when running a command modifying the stack
* Input: None
* Output: None
************************************************************

************************************************************
**** IfInitDepth-1
* initialize the internal depth counter. This has to be used when running a command modifying the stack
* because it takes depth-1, one level will be accepted by the informbox loop.
* Input: None
* Output: None
************************************************************

************************************************************
**** IfMain2
* Internal Inform Box main Proc
* Alters a DataString modifying the Title part
* This is used by automatic IF generator program ans should not
*
* Input: 3: DataString
*        2: IfHandler
*        1: List of 8 data per field
*
* if cancel
*   1:FALSE
* if validated
*   n+1: Value of field 1
*   2:   Value of field n
*   1:   TRUE
************************************************************

*******************************************************************************************
**** IfPutFieldsOnStack
* Put on the stack the external value of each field
* Inputs
*  None
* Outputs
*  n:   Value field 1
*  n-1: Value field 2
*  1:   Value field n
*******************************************************************************************

*******************************************************************************************
**** IfSetFieldPos
* Purpose: Change the size and position of an object
* Note: You can not change the size or the X position of a label or a check field
*
*Inputs
* 6: Id of the field
* 5: TRUE/FALSE
* 4: # New X
* 3: # New Y
* 2: # New Width
* 1: # New Height
*
*Outputs
* none
*******************************************************************************************

*******************************************************************************************
**** IfGetFieldPos
* Purpose: Get the size and position of an object
*
*Inputs
* 2: Id of the field
* 1: TRUE/FALSE
*
*Outputs
* 4: # New X
* 3: # New Y
* 2: # New Width
* 1: # New Height
*******************************************************************************************

************************************************************
**** IfSetAllLabelsMessages
* Set the text of a set of labels
* Input: 3: DataString
*        2: Base message (each label has a message number = to the previous label +1)
*        1: Nb Labels
* Outputs: 1: Data String
************************************************************

************************************************************
**** IfSetAllHelpStrings
* Set the Help String of all fields
* Input: 3: DataString
*        2: Base message (each field has a help number = to the previous label +1)
*        1: Nb fields
* Outputs: 1: DataString
************************************************************

************************************************************
**** IsUncompressDataString
* Uncompress a compressed data string
* Input: 1: compressed DataString
* Output: 1: uncompressed Data String
************************************************************

*******************************************************************************************
*******************************************************************************************
*******************************************************************************************
**                     I N F O R M   B O X   M E S S A G E S                             **
*******************************************************************************************
*******************************************************************************************
*******************************************************************************************

*******************************************************************************************
* Msg Sent at each key press to the field THEN to the Form
* See POL Key handeling documentation for more informations.
* If the field is handled, none of the standard IF key handling is executed
*
* Input
* 2: KeyPlane
* 1: Key
*
* Output: if handled
* 2: << Key Handler Program >>
* 1: TRUE
*
* Output: if not handled
* 3: KeyPlane
* 2: Key
* 1: FALSE
*
* Note:
*  This allows you to replace the standard key handler, or to modify the datas
*  You can for example use it to handle some special keys, but answer as if you did
*  not handle the message it's not the key you where intrested in.
*******************************************************************************************
DEFINE IfMsgKeyPress ZERO

*******************************************************************************************
* Msg is send to a field loosing the Focus
*
* Input:
* 1: Number of the field that win the focus
*
* Output:
* 2: Number of the field that win the focus
* 1: TRUE or FALSE
*
* Note:
* You can do whatever you want here including
* changing the number of the field that will win
* the focus (If you take bak the focus, ther is no
* WinFocus messages that will be send to you)
* Wen called, you are still the current field
*******************************************************************************************
DEFINE IfMsgLooseFocus ONE
DEFINE IfMsgLoseFocus IfMsgLooseFocus

*******************************************************************************************
* Msg send to the IF when the field change
*
* This message is send just befor the field win the
* focus.
*
* Input: not
*
* Output:
* 1: TRUE FALSE (does not care about the answer)
*******************************************************************************************
DEFINE IfMsgNewField TWO

*******************************************************************************************
* Msg send to a field that win the focus
*
* Input: none
* output:
* 1: TRUE FALSE (Does not care about wether
* the message if handle or not)
*******************************************************************************************
DEFINE IfMsgGetFocus THREE

*******************************************************************************************
* Ask for User value of a field from internal data
* Msg send to a field handler
*
* Input:
* 1: Internal Data
*
* Output:
* 2: External Data (if handled)
* 1: TRUE/FALSE
*
* This message allows you to save the data you
* want into the memory but giving them back in a
* special way.
* If you are working with a fix list of value for example, you can use this to
* store only the offset of the current element insterad of the full element
*******************************************************************************************
DEFINE IfMsgGetFieldValue FOUR

*******************************************************************************************
* Ask for the internal value from the user one
*
* Msg send to a field handler
*
* This is the brother message of
* IfMsgGetFieldValue
*
* Input:
* 1: User value
*
* Output:
* 2: Internal Value
* 1: TRUE/FALSE
*
* See IfMsgGetFieldValue
*******************************************************************************************
DEFINE IfMsgSetFieldValue FIVE

*******************************************************************************************
* Ask to set the grob of the field in the datastring
*
* Msg send to a field
*
* Prompt the field to set the graphic
* representation into the datastring (may
* use IfSetGrob)
* if the fiend is handled, no standard code is executed
*
* Input:
* 2: FieldNumber
* 1: Value
*
* Output:
* 2: FieldNumber
* 1: TRUE/FALSE
*
* Handeling Example
* ::
*   OVER TRUE ROT ( Stack = Field number, Field number, True [Args for IfSetGrob], Value)
*   SWAP
*   $>grob FLASHPTR IfSetGrob
* ;
*******************************************************************************************
DEFINE IfMsgGetFieldGrob SIX

*******************************************************************************************
* Message send to IF handler to get the number of start Field
*
* Input
* 1: #0 (Default first field number)
*
* result:
* 2: #x (First Field Number)
* 1: TRUE/FALSE (Not important)
*******************************************************************************************
DEFINE IfMsgSetFirstField SEVEN

*******************************************************************************************
* Send to a field that is reset.
*
* Input:
* 1: Field Value
*
* Output if handled:
* 2: Possibly modified value
* 1: True/False
*******************************************************************************************
DEFINE IfMsgFieldReset TEN

*******************************************************************************************
* Prompt for a menu used to replace the standard one
*
* in:
* 1: menu
*
* output:
* if handled
* 3: menu (that will be erased )
* 2: the new menu
* 1: true
*
* if not handled:
* 2: original menu
* 1: false
*******************************************************************************************
DEFINE IfMsgGetMenu ELEVEN

*******************************************************************************************
* Prompt for the 3 menu handlers used in the kesy 4, 5 and 6
*
* output:
* if handled
* 2: { key4 key5 key6 }
* 1: TRUE
*******************************************************************************************
DEFINE IfMsgGet3KeysMenu TWELVE

*******************************************************************************************
* allows the user to put his quit handler
*
* note: the value of the 'Quit LAM may and should be modified by the user
*       No standard code is executed if the field is handled
*******************************************************************************************
DEFINE IfMsgCancel THIRTEEN

*******************************************************************************************
* Prompt to the IF if we can end the IF.
* This allows the IF to check some inter-fields dependences
*
* if handled:
* 2: TRUE/FALSE  ( Can we end the dialog )
* 1: TRUE
*******************************************************************************************
DEFINE IfMsgCancelKey FOURTEEN

*******************************************************************************************
* Let to the user to oportunity to program his own OK handler
*
* note: see IfMsgCancel
*******************************************************************************************
DEFINE IfMsgOK FIFTEEN

*******************************************************************************************
* Can we end the IF?
* Note: See IfMsgCancelKey
*
* if handled:
* 2: TRUE/FALSE  (Can we end the dialog )
* 1: TRUE
*******************************************************************************************
DEFINE IfMsgOKKey SIXTEEN

*******************************************************************************************
* Send when a the user click on choose in a choose field
*
* the message is first send to the field, then to the dialog. in boths
* cases, if the message is handeled, there is no standard code
* executed. You need to do the Choose Box yourself
*******************************************************************************************
DEFINE IfMsgChoose SEVENTEEN

*******************************************************************************************
* Send the the IF when the type key is pressed
*
* If the message is handled, no standard code is executed
* See IfMsgChoose
*******************************************************************************************
DEFINE IfMsgType EIGHTEEN

*******************************************************************************************
* Send the the IF when the calc key is pressed
*
* If the message is handled, no standard code is executed
* See IfMsgType
*******************************************************************************************
DEFINE IfMsgCalc NINETEEN

*******************************************************************************************
* Send to the IF when a new command line is created
* The system does not care if the message is handled or not.
* Is's just to let to the user te oportunity
* to perform his own operations
*******************************************************************************************
DEFINE IfMsgNewCommandLine TWENTY

*******************************************************************************************
* Send to the IF when a command line is canceled
* See Abrove
*******************************************************************************************
DEFINE IfMsgOldCommandLine TWENTYONE

*******************************************************************************************
* Send to the field at command line validation
* input: none (a comand line is present)
* output: no command line, elements on the stack
* if the message is not handeled, the StdEnter is executed
*******************************************************************************************
DEFINE IfMsgCommandLineValid TWENTYTWO

*******************************************************************************************
* Send to the field at object decompilation for editing
* input: object
* output: string
* if the message is not handeled, the Std decompilation is used
*******************************************************************************************
DEFINE IfMsgDecompEdit TWENTYTHREE

*******************************************************************************************
* Send to the field then to the box when +/- is pressed on a choose field
* input: none
* output: none
* if the message is handeled, no future action is taken
*******************************************************************************************
DEFINE IfMsgNextChoose TWENTYFOUR

*******************************************************************************************
* Send to the field then to the inform box when the edit key is pressed
* input: CurrentFieldValue
* output: none or modified command line or something on the stack or modified field
* if the message is handeled, no future action is taken
*******************************************************************************************
DEFINE IfMsgEdit TWENTYFIVE

*******************************************************************************************
* Some Field types constantes
*******************************************************************************************
( Do not modify any of these constants )
DEFINE IfFieldTypeText ONE
DEFINE IfFieldTypeChooseEdit TWO
DEFINE IfFieldTypeAlg THREE
DEFINE IfFieldTypeChoose TWELVE
DEFINE IfFieldTypeExtended TWENTYTHREE
DEFINE IfFieldTypeCheck THIRTYTWO
DEFINE IfFieldTypeLabelChoose THIRTYTHREE

*******************************************************************************************
* Some object types constantes
*******************************************************************************************
( Do not modify any of these constants )
DEFINE IfObReal ZERO
DEFINE IfObCmp ONE
DEFINE IfObStr TWO
DEFINE IfObArray THREE
DEFINE IfObList FIVE
DEFINE IfObId SIX
DEFINE IfObLocal SEVEN
DEFINE IfObPrg EIGHT
DEFINE IfObAlg NINE
DEFINE IfObHxs TEN
DEFINE IfObUnit THIRTEEN
DEFINE IfObInt TWENTYEIGHT            ( was zint )
************************************************************
* Local Variable definitions
************************************************************

* Contains the current field handler
DEFINE Ifl'FieldHandler LAM 'FieldHandler

* Contains the IF handler
DEFINE Ifl'IfHandler LAM 'IfHandler

* The internal graphic format (See DisplayInternalData Function for more informations
DEFINE Ifl'StringData LAM 'StringData

* Store 8 object by field: FieldHandler, Field type, allowed Objects, Decompile Object, Choose field data, Choose field decomp, Reset Value, current Value
DEFINE Ifl'ListData LAM 'ListData

* Shall we quit?
DEFINE Ifl'Quit LAM 'Quit

* Store the number of the current field
DEFINE Ifl'CurrentField LAM 'CurrentField

* Store the last stack depth
DEFINE Ifl'Depth LAM 'Depth

* Store the menu as defined by the user
DEFINE Ifl'Menu LAM 'IfMenu

* Was a Command line active last time?
DEFINE Ifl'CommandLine LAM 'CmdLine
