( Inform Box File - 48 Style )  ( Inline Text )
( Inform Box Simple Inform Box Source Code ) 
( Generated on 4:32:30 PM 10/4/2002 by HP InformBox Generator ) 
( Inform Box Designer is William Graves ) 
 
INCLUDE Header.h                    ( Include Standard RPL defs )
INCLUDE Informbox48.h               ( Include Definitions )
 
( Field and Label Definitions ) 
  DEFINE Field1              BINT0   
  DEFINE Field2              BINT1   
  DEFINE Label1              BINT0   
  DEFINE Label2              BINT1   
 
NULLNAME SInf 
:: 
( Label Definitions ) 
  "Real Number:"  BINT1  BINT9      ( Label1 label definition )
  "Check Item:"   BINT1  BINT25     ( Label2 label definition )
 
( Field Definitions ) 
  ( Field1 field definition ) 
  'DROPFALSE                        ( Field Message Handler )
  BINT50 BINT8  BINT40 BINT9        ( x, y, width, height )
  IfFieldTypeText                   ( Field Type )
  { IfObReal  }                     ( Allowed Types )
  BINT2                             ( Decomp object )
  "Enter a real number"             ( Help text )
  MINUSONE                          ( No choose list )
  MINUSONE                          ( No choose decomp )
  % 456                             ( Reset Value )
  % 123                             ( Initial Value )
                                  
  ( Field2 field definition ) 
  'DROPFALSE                        ( Field Message Handler )
  BINT50 BINT22 BINT6 BINT9         ( x, y, width, height )
  IfFieldTypeCheck                  ( Field Type )
  MINUSONE                          ( Every type possible )
  BINT2                             ( Decomp object )
  "Check or uncheck this item"      ( Help text )
  MINUSONE                          ( No choose list )
  MINUSONE                          ( No choose decomp )
  TRUE                              ( Reset Value )
  TRUE                              ( Initial Value )
                                  
( Form Layout Definitions )       
  BINT2                             ( number of labels )
  BINT2                             ( number of fields )
  'DROPFALSE                        ( Inform Box Message Handler )
  "Simple Inform Box"               ( form title )
  DoInputForm                       
                                  
( User End Code )                 
  DROP ( result code ) 
 
;                                   ( end of form procedure )
 
(                                 
% Count for the Message Table  
DCCP 0 SInfMesBase 
) 
 
( Messages automatically copied by Inform Generator ) 
( Messages added to the Library's Message Table ) 
 
( Internal Datas: Do not touch! 
l00000000020C001C00010000001100530069006D0070006C006500200049006E0066006F0072006D00200042006F0078
0002000D000A
0002000D000A
001600440052004F00500020002800200072006500730075006C007400200063006F0064006500200029000D000A
f002000C800A0002400000006004600690065006C006400310006004600690065006C006400310002000D000A00000001003
S0000500420049004E005400320002000D000A0003004F004E004500050025002000340035003600050025002000310032003
S300130045006E007400650072002000610020007200650061006C0020006E0075006D006200650072
f005800C80018002400010006004600690065006C006400320006004600690065006C006400320002000D000A00030000000
S500420049004E005400320002000D000A0003004F004E00450004005400520055004500040054005200550045001A0043006
S800650063006B0020006F007200200075006E0063006800650063006B002000740068006900730020006900740065006D
l0024000400C0001400000006004C006100620065006C0031000C005200650061006C0020004E0075006D006200650072003
SA
l0064000400B0001400010006004C006100620065006C0032000B0043006800650063006B0020004900740065006D003A
0002000D000A
0002000D000A
000E00570069006C006C00690061006D0020004700720061007600650073
000400530049006E0066
000200460046
)                                 
