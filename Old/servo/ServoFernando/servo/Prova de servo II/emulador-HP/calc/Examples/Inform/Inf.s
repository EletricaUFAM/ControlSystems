( Inform Box File )   ( Do not modify this line )
( Inform Box Inform Box Demonstration Source Code ) 
( Generated on 11:22:24 AM 12/7/2002 by HP InformBox Generator ) 
( Inform Box Designer is William Graves ) 
 
INCLUDE Header.h                    ( Include Standard RPL defs )
INCLUDE Informbox.h                 ( Include Definitions )
INCLUDE Inform.h                    ( Include Project Header )
 
( Field and Label Definitions ) 
  DEFINE Field1              BINT0   
  DEFINE Field2              BINT1   
  DEFINE Field3              BINT2   
  DEFINE Field4              BINT3   
  DEFINE Label1              BINT0   
  DEFINE Label2              BINT1   
  DEFINE Label3              BINT2   
  DEFINE Label4              BINT3   
 
( Local Definitions ) 
 
NULLNAME InfDemo 
:: 
( Internal Graphical Datas ) 
  ASSEMBLEM 
  STRING { 
    $(5)#1195                       % Uncompressed string size 
    $(3)#0                          % Y offset
    $(2)#0                          % Current Field
    $(2)#4                          % Number of labels
    $(2)#4                          % Number of fields
    $(5)#242                        % Offset to fields definition
  
  % Start of label definitions      
    $1E302B011004250220F0F0C                      % Label Label1 definition
    $13402910010082501420F0F0F01                  % Label Label2 definition
    $1E30252001004250220F0F0C                     % Label Label3 definition
    $1A2025200634150210F08                        % Label Label4 definition
  
  % Start of field definitions    
    $007B02A01723C2901820F0F0F0F0F0F0F0F0F0F04    % Field Field1 definition
    $17B028100723C2901820F0F0F0F0F0F0F0F0F0F04    % Field Field2 definition
    $1B7024200720080080150C8F01800801503800C86830018F0F0F0F0F03 % Field Field3 definition
    $1BD024200843C3901B30F0F0F0F0F0F0F0F0F0F0F0F08 % Field Field4 definition
  }                                 
  !RPL FLASHPTR IsUncompressDataString ( Uncompress the string )
   
  ( Labels graphic, string on the stack ) 
  ASSEMBLEM $(5)DOBINT $(5)InfDemoMesBase+#0 $(5)DOBINT $(5)#4 
  !RPL FLASHPTR IfSetAllLabelsMessages 
   
  ( Help strings, string on the stack ) 
  ASSEMBLEM $(5)DOBINT $(5)InfDemoMesBase+#4 $(5)DOBINT $(5)#4 
  !RPL FLASHPTR IfSetAllHelpStrings 
   
  ( Title string, string on the stack ) 
  ASSEMBLEM $(5)DOBINT $(5)InfDemoMesBase+#8 
  !RPL FLASHPTR IfSetTitle          
   
  ( Inform Box Message Handler )    
  'DROPFALSE                        ( Inform Box Message Handler )
   
( Field Definitions )             
  ( Field1 definition )             
  'DROPFALSE                        ( Field Message Handler )
  IfFieldTypeText                   ( Field Type )
  { IfObReal  }                     ( Allowed Types )
  BINT2                             ( Decomp object )
  MINUSONE                          ( No choose list )
  MINUSONE                          ( No choose decomp )
  MINUSONE                          ( Reset Value - defaulted )
  MINUSONE                          ( Initial Value - defaulted )
                                  
  ( Field2 definition )             
  'DROPFALSE                        ( Field Message Handler )
  IfFieldTypeText                   ( Field Type )
  { IfObReal  }                     ( Allowed Types )
  BINT2                             ( Decomp object )
  MINUSONE                          ( No choose list )
  MINUSONE                          ( No choose decomp )
  MINUSONE                          ( Reset Value - defaulted )
  MINUSONE                          ( Initial Value - defaulted )
                                  
  ( Field3 definition )             
  'DROPFALSE                        ( Field Message Handler )
  IfFieldTypeCheck                  ( Field Type )
  MINUSONE                          ( Every type possible )
  BINT0                             ( Decomp object )
  MINUSONE                          ( No choose list )
  MINUSONE                          ( No choose decomp )
  FALSE                             ( Reset Value - defaulted )
  FALSE                             ( Initial Value - defaulted )
                                  
  ( Field4 definition )             
  'DROPFALSE                        ( Field Message Handler )
  IfFieldTypeChoose                 ( Field Type )
  MINUSONE                          ( Every type possible )
  BINT18                            ( Decomp object )
  {                                 ( Choose list )
  { ASSEMBLEM $(5)DOBINT $(5)InfDemoMesBase+#9 !RPL  % 101 }
  { ASSEMBLEM $(5)DOBINT $(5)InfDemoMesBase+#10 !RPL  % 102 }
  { ASSEMBLEM $(5)DOBINT $(5)InfDemoMesBase+#11 !RPL  % 103 }
  }
 
  SEVENTEEN                         ( Choose decomp )
  { ASSEMBLEM $(5)DOBINT $(5)InfDemoMesBase+#9 !RPL  % 101 } ( Reset Value )
  { ASSEMBLEM $(5)DOBINT $(5)InfDemoMesBase+#10 !RPL  % 102 } ( Initial Value )
                                  
( group the fields definitions in a list ) 
  ASSEMBLEM $(5)DOBINT $(5)#8*#4    
  !RPL {}N                          
   
  FLASHPTR IfMain2                  
   
;                                   ( end of form procedure )
 
(                                 
% Count for the Message Table  
DCCP 12 InfDemoMesBase 
) 
 
( Messages automatically copied by Inform Generator ) 
( Messages added to the Library's Message Table ) 
*  "First No" 
*  "Second No" 
*  "Check Me" 
*  "Pick" 
*  "Enter first number for stack" 
*  "Enter a second number for stack" 
*  "Check and uncheck this field" 
*  "Pick an item from list" 
*  "Inform Box Demonstration" 
*  "A entry" 
*  "B entry" 
*  "C entry" 
 
( Internal Datas: Do not touch! 
l00000000020C001C0001000000180049006E0066006F0072006D00200042006F0078002000440065006D006F006E0073007
S40072006100740069006F006E
0002000D000A
0002000D000A
0002000D000A
f0028009C00A0002400000006004600690065006C006400310006004600690065006C006400310002000D000A00000001003
S0000500420049004E005400320002000D000A0003004F004E004500000000001C0045006E007400650072002000660069007
S2007300740020006E0075006D00620065007200200066006F007200200073007400610063006B
f0060009C00A0002400010006004600690065006C006400320006004600690065006C006400320002000D000A00000001003
S0000500420049004E005400320002000D000A0003004F004E004500000000001F0045006E007400650072002000610020007
S300650063006F006E00640020006E0075006D00620065007200200066006F007200200073007400610063006B
f0090009C0018002000010006004600690065006C006400330006004600690065006C006400330002000D000A00030000000
S500420049004E005400300002000D000A0003004F004E004500000000001C0043006800650063006B00200061006E0064002
S00075006E0063006800650063006B002000740068006900730020006600690065006C0064
f0090012000EC002400010006004600690065006C006400340006004600690065006C006400340002000D000A00020000000
S600420049004E0054003100380048007B000D000A007B00200022004100200065006E0074007200790022002000200025002
S00031003000310020007D000D000A007B00200022004200200065006E0074007200790022002000200025002000310030003
S20020007D000D000A007B00200022004300200065006E007400720079002200200020002500200031003000330020007D000
SD000A007D000D000A00090053004500560045004E005400450045004E0014007B00200022004100200065006E00740072007
S9002200200020002500200031003000310020007D0014007B00200022004200200065006E007400720079002200200020002
S500200031003000320020007D0016005000690063006B00200061006E0020006900740065006D002000660072006F006D002
S0006C006900730074
l002C00040080001400010006004C006100620065006C00310008004600690072007300740020004E006F
l006400040090001400010006004C006100620065006C00320009005300650063006F006E00640020004E006F
l009400040080001400010006004C006100620065006C003300080043006800650063006B0020004D0065
l009400D80040001400010006004C006100620065006C00340004005000690063006B
0002000D000A
0002000D000A
000E00570069006C006C00690061006D0020004700720061007600650073
00070049006E006600440065006D006F
00040046004600460046
)                                 
