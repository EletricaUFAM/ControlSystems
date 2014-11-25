**************************************************************
*  Example of a directory source code
*  Builds a directory with 3 items:
*    123 => puts 123. on the stacj
*    ABC => pust the string "ABC" on the stack
*    SW+ => swaps these two items and adds 456. to the 123.
*
**************************************************************
NULLNAME 123
:: 
 123.                    ( just put 123. on the stack )
;


NULLNAME ABC
::
  "ABC"                  ( just put "ABC" on the stack )
;


NULLNAME SW+
::
 CK2NOLASTWD             ( expect 2 arguments )
 SWAP 456. %+
;
