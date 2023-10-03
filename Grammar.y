{ 
module Grammar where 
import Tokens
}

%name parseCalc 
%tokentype       { Token } 
%error           { parseError }
%token 
    Subtile      { TokenSubtile _ }
    digit        { TokenInt _ $$ }
    '<='         { TokenLessThanEqualTo _ }
    '>='         { TokenGreaterThanEqualTo _ }
    '<'          { TokenLessThan _ }
    '>'          { TokenGreaterThan _ }
    '&&'         { TokenBooleanAnd _ }
    '||'         { TokenBooleanOr _ }
    '+'          { TokenPlus _ }
    '-'          { TokenMinus _ }
    '*'          { TokenMultiply _ }
    '='          { TokenEq _ }
    '('          { TokenLParen _ }
    ')'          { TokenRParen _ }
    '['          { TokenLBracket _ }
    ']'          { TokenRBracket _ }
    ';'          { TokenSeq _ }
    ':'          { TokenColon _ }
    '=='         { TokenBooleanEquals _ }
    ','          { TokenComma _ }
    Return       { TokenReturn _ }
    Rotate       { TokenRotate _ }
    Scale        { TokenScale _ }
    Replicate    { TokenReplicate _ }
    Add          { TokenAdd _ }
    Reverse      { TokenReverse _ }
    Column       { TokenColumn _ }
    Relative     { TokenRelative _ }
    Absolute     { TokenAbsolute _ }
    Horizontal   { TokenHorizontal _ }
    Vertical     { TokenVertical _ }
    And          { TokenAnd _ }
    Negate       { TokenNegate _ }
    Blank        { TokenBlank _ }
    Reflect      { TokenReflect _ }
    Row          { TokenRow _ }
    var          { TokenVar _ $$ }
    Arg          { TokenArg _ }
    ReplicateIf  { TokenReplicateIf _ }

%right ';'
%right '<='
%right '>='
%right '<'
%right '>'
%right '&&'
%right '||'
%right '+'
%right '-'
%right '*'
%right '=='
%nonassoc '='
%nonassoc Return
%right ReplicateIf
%right Reverse
%right Reflect
%right Blank
%right Subtile
%right Replicate
%right Scale
%right Rotate
%right And
%right Negate
%right Add
%left ':'
%nonassoc '[' ']' '(' ')' ','
%right Arg
%nonassoc digit

%% 
Exp : Add Axis Exp Exp                                     {Add $2 $3 $4}
    | ReplicateIf digit '[' BooleanExp2 ']'                {ReplicateIf $2 $4}
    | Subtile '(' digit ',' digit ')' digit Exp            {Subtile $3 $5 $7 $8}
    | Return Exp                                           {Return $2}
    | Replicate ReplicateArg Axis digit Exp                {Replicate $2 $3 $4 $5}
    | Blank Exp                                            {Blank $2}
    | Reflect ReflectArg Exp                               {Reflect $2 $3}
    | Rotate digit Exp                                     {Rotate $2 $3}
    | And Exp Exp                                          {And $2 $3}
    | Negate Exp                                           {Negate $2}
    | Scale digit Exp                                      {Scale $2 $3}
    | Reverse Exp                                          {Reverse $2}
    | '(' Exp ')'                                          {$2}
    | var '=' Exp                                          {Let $1 $3}
    | var                                                  {Var $1}
    | '[' Rows ']'                                         {Rows3 $2}
    | Exp ';' Exp                                          {Seq $1 $3}
    | Arg var                                              {Arg $2}
 
BooleanExp2: '(' BooleanExp1 ')' '=' Exp                   {[($2,$5)]}
           | BooleanExp2 ':' '(' BooleanExp1 ')' '=' Exp   {$1 ++ [($4,$7)]}

BooleanExp1: BooleanExp '&&' BooleanExp                    {And1 $1 $3}
           | BooleanExp '||' BooleanExp                    {Or1 $1 $3}
           | BooleanExp                                    {Single1 $1}

BooleanExp: SubBooleanExp '<' SubBooleanExp                {BooleanExp $1 "<" $3}
          | SubBooleanExp '<=' SubBooleanExp               {BooleanExp $1 "<=" $3}
          | SubBooleanExp '>' SubBooleanExp                {BooleanExp $1 ">" $3}
          | SubBooleanExp '>=' SubBooleanExp               {BooleanExp $1 ">=" $3}
          | SubBooleanExp '==' SubBooleanExp               {BooleanExp $1 "==" $3}

SubBooleanExp: Axis '+' Axis                               {SubBooleanExp $1 "+" $3}
             | Axis '-' Axis                               {SubBooleanExp $1 "-" $3}
             | Axis '*' Axis                               {SubBooleanExp $1 "*" $3}
             | Axis                                        {SubBooleanExpSingle $1}
             | digit                                       {Digit $1}

ReflectArg: Vertical                                       {Vertical}
          | Horizontal                                     {Horizontal}

ReplicateArg: Relative                                     {Relative}
            | Absolute                                     {Absolute}

Axis: Row                                                  {Row}
    | Column                                               {Column}

Rows : Row2                                                {[$1]}
     | Rows ':' Row2                                       {$1 ++ [$3]}
           
Row2 : Elements                                            {$1}

Elements : digit                                           {[$1]}
         | Elements ',' digit                              {$1 ++ [$3]}
    
{
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))
data Axis = Row | Column deriving (Eq, Show)
data ReplicateArg = Relative | Absolute deriving Show
data ReflectArg = Vertical | Horizontal deriving Show
data BooleanExp1 = And1 BooleanExp BooleanExp
                 | Or1 BooleanExp BooleanExp
                 | Single1 BooleanExp
                 deriving Show
data BooleanExp = BooleanExp SubBooleanExp String SubBooleanExp deriving Show
data SubBooleanExp = SubBooleanExp Axis String Axis
                   | SubBooleanExpSingle Axis 
                   | Digit Int
                   deriving Show
data Exp = Add Axis Exp Exp
         | ReplicateIf Int [(BooleanExp1,Exp)]
         | Subtile Int Int Int Exp
         | Return Exp
         | Replicate ReplicateArg Axis Int Exp
         | Reflect ReflectArg Exp
         | Blank Exp
         | And Exp Exp
         | Negate Exp
         | Rotate Int Exp
         | Scale Int Exp
         | Reverse Exp
         | Let String Exp
         | Seq Exp Exp
         | Var String
         | Rows3 [[Int]]
         | Arg String
         deriving Show
}