ASSEMBLE

RPL

EXTERNAL DoMsgBox
EXTERNAL MsgBoxMenu
EXTERNAL grobAlertIcon

***************************************************************
*  A simple demonstration of a message table
*  There are three keys, each of which generates a different
*  Message.
*
*  This demo uses the Project Box's "Message Text"
*  but the same demo can be built using an internal message table
*  See the end of this listing for information on how to do that.
***************************************************************
INCLUDE MTL.h

ASSEMBLE
MTROMID EQU #3ED

DOMSG MACRO * romid,msgnr      * Macro, to handle msg nr. generation
  CON(5) =DOBINT
  CON(5) ($1)*256+($2)          * (ROMID << 8) | msgnr
DOMSG ENDM
*
*
*
***************************************************************
*  Case 1, Using above macro and ERROUT
***************************************************************
ASSEMBLE
  CON(1)        8
RPL
xNAME Btn1
::
    CK0
ASSEMBLE
    DOMSG MTROMID,1
RPL
    ERROROUT
;
***************************************************************
*  Case 2, Using JstGetTheMsg, and DoMsgBox for the display
***************************************************************

ASSEMBLE
  CON(1)        8
RPL
xNAME Btn2
::
   CK0
   #3ED02 JstGETTHEMSG    ( this leaves a text string on stack )
   12 10 grobAlertIcon ' MsgBoxMenu  ERRBEEP DoMsgBox DROP
;
***************************************************************
*  Case 3, Using a constant for the message and DoMsgBox for the display
***************************************************************
ASSEMBLE
  CON(1)        8
RPL
xNAME Btn3
::
  CK0
  #3ED03                 ( this leaves a message number on stack )
  12 10 grobAlertIcon ' MsgBoxMenu  ERRBEEP DoMsgBox DROP
;
***************************************************************
*  Demo is set up for a Project Message table
*
*  1. To use an internal table, place a ")" instead of the "$" below
*  2. You must also then clear the Project's "Message Text" box.
*  3. Type the name "Messages" into the Project Data \ Message field.
*     Use the NAME field on the left not the TEXT box on the right!
*
*  Notice that the project's message all have the word "project"
*  in them.  The messages below have the word, "source" instead.
*
***************************************************************
*  just replace $ below (  V  ) with a right paren to uncomment this code
(                          $
ASSEMBLEM
CP=3ED03
!RPL
NULLNAME Messages
 ARRY
 [
    "First string of source text"
    "Second source message"
    "and a third source message"
 ]


(
* In case you loose the original contents of the project's "Message Text" box
* just copy from below
First string of project text
Second project message
and a third project message
)
