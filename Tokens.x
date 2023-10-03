{ 
module Tokens where 
}

%wrapper "posn" 
$digit = 0-9     
$alpha = [a-zA-Z]
$fullstop = \.
$temp = \{

tokens :-
  $white+                 ; 
  "##" .* "##"            ; 
  \==                     { \p s -> TokenBooleanEquals p }
  \<=                     { \p s -> TokenLessThanEqualTo p} 
  \>=                     { \p s -> TokenGreaterThanEqualTo p} 
  \<                      { \p s -> TokenLessThan p}
  \>                      { \p s -> TokenGreaterThan p}
  \&\&                    { \p s -> TokenBooleanAnd p}
  \|\|                    { \p s -> TokenBooleanOr p}
  \+                      { \p s -> TokenPlus p}
  \-                      { \p s -> TokenMinus p}
  \*                      { \p s -> TokenMultiply p}
  And                     { \p s -> TokenAnd p}
  Negate                  { \p s -> TokenNegate p}
  Subtile                 { \p s -> TokenSubtile p}
  ReplicateIf             { \p s -> TokenReplicateIf p}
  $digit+                 { \p s -> TokenInt p (read s) }
  \=                      { \p s -> TokenEq p }
  \(                      { \p s -> TokenLParen p }
  \)                      { \p s -> TokenRParen p }
  \;                      { \p s -> TokenSeq p }
  \:                      { \p s -> TokenColon p }
  Return                  { \p s -> TokenReturn p }
  Replicate               { \p s -> TokenReplicate p }
  Rotate                  { \p s -> TokenRotate p}
  Scale                   { \p s -> TokenScale p}
  Add                     { \p s -> TokenAdd p }
  Reverse                 { \p s -> TokenReverse p }
  Column                  { \p s -> TokenColumn p }
  Row                     { \p s -> TokenRow p }
  Relative                { \p s -> TokenRelative p }
  Absolute                { \p s -> TokenAbsolute p }
  Arg                     { \p s -> TokenArg p }
  Reflect                 { \p s -> TokenReflect p }
  Vertical                { \p s -> TokenVertical p }
  Horizontal              { \p s -> TokenHorizontal p }
  Blank                   { \p s -> TokenBlank p }
  \,                      { \p s -> TokenComma p }
  \[                      { \p s -> TokenLBracket p}
  \]                      { \p s -> TokenRBracket p}
  $alpha [$alpha $digit $fullstop]* { \p s -> TokenVar p s }
{ 
data Token = 
  TokenBooleanEquals AlexPosn     |
  TokenLessThanEqualTo AlexPosn   |
  TokenGreaterThanEqualTo AlexPosn|
  TokenLessThan AlexPosn          |
  TokenGreaterThan AlexPosn       |
  TokenBooleanAnd AlexPosn        | 
  TokenBooleanOr AlexPosn         |
  TokenAnd AlexPosn               |
  TokenNegate AlexPosn            |
  TokenInt AlexPosn Int           | 
  TokenEq  AlexPosn               | 
  TokenLParen AlexPosn            |
  TokenRParen AlexPosn            |
  TokenVar AlexPosn String        |
  TokenSeq AlexPosn               |
  TokenAbsolute AlexPosn          |
  TokenRelative AlexPosn          |
  TokenColon AlexPosn             |
  TokenReturn AlexPosn            |
  TokenRotate AlexPosn            |
  TokenScale AlexPosn             |
  TokenReplicate AlexPosn         |
  TokenAdd AlexPosn               |
  TokenReverse AlexPosn           |
  TokenColumn AlexPosn            |
  TokenRow AlexPosn               |
  TokenLBracket AlexPosn          |
  TokenRBracket AlexPosn          |
  TokenArg AlexPosn               |
  TokenReflect AlexPosn           |
  TokenVertical AlexPosn          |
  TokenHorizontal AlexPosn        |
  TokenBlank AlexPosn             |
  TokenSubtile AlexPosn           |
  TokenPlus AlexPosn              |
  TokenMinus AlexPosn             |
  TokenMultiply AlexPosn          |
  TokenReplicateIf AlexPosn       |
  TokenIf AlexPosn                |
  TokenComma AlexPosn          
  deriving (Eq,Show) 


tokenPosn :: Token -> String
tokenPosn (TokenArg (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenInt (AlexPn _ line col) _) = show line ++ ":" ++ show col
tokenPosn (TokenEq (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenLParen (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenRParen (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenLBracket (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenRBracket (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenSeq (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenColon (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenReturn (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenReplicate (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenAdd (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenReverse (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenColumn (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenRow (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenComma (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenVar (AlexPn _ line col) _) = show line ++ ":" ++ show col
tokenPosn (TokenScale (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenRotate (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenRelative (AlexPn _ line col))= show line ++ ":" ++ show col
tokenPosn (TokenAbsolute (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenBlank (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenReflect (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenVertical (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenHorizontal (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenSubtile (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenAnd (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenNegate (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenLessThanEqualTo (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenGreaterThanEqualTo (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenLessThan (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenGreaterThan (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenBooleanAnd (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenBooleanOr (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenPlus (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenMinus (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenMultiply (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenReplicateIf (AlexPn _ line col)) = show line ++ ":" ++ show col
tokenPosn (TokenBooleanEquals (AlexPn _ line col)) = show line ++ ":" ++ show col
}