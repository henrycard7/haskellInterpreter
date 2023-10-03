module Main where

import Tokens
import Grammar
import System.Environment
import Data.List
import Data.Char
import Functions
import System.IO.Unsafe (unsafePerformIO)

-- Main Function
main :: IO ()
main = do  
    fileNames <- getArgs
    if (length fileNames == 0)
      then error "Missing program file"
      else do
        contents <- mapM readFile fileNames
        let alexScan = alexScanTokens $ ((contents !! 0))
        if (length alexScan == 0)
          then finalOutput $ [[]]
          else do
            let programCode = parseCalc $ removeLast $ alexScan
            finalOutput $ eval programCode []

-- Evaluation Function
type State = [(String, [[Int]])]
eval :: Exp -> State -> [[Int]]
eval (Let x (Arg e)) state = let newState = (x, eval (unsafePerformIO $ fileToExp e) state) : state
                        in eval (Return (unsafePerformIO $ fileToExp e)) newState
eval (Let x e) state = let newState = (x, eval e state) : state
                        in eval (Return e) newState
eval (Var x) state = case lookup x state of
                       Just v -> v
                       Nothing -> error $ "Undefined variable " ++ x
eval (Add axis e1 e2) state = add axis (eval e1 state) (eval e2 state)
eval (ReplicateIf i pair) state = replicateIf i [(b, eval e state) | (b, e) <- pair]
eval (And e1 e2) state = conjunction (eval e1 state) (eval e2 state)
eval (Negate e) state = negation (eval e state)
eval (Return e) state = eval e state
eval (Rotate n e) state = rotate n (eval e state)
eval (Scale n e) state = scale n (eval e state)
eval (Replicate Absolute axis n e) state = replicateAxisAbsolute axis n (eval e state)
eval (Replicate Relative axis n e) state = replicateAxisRelative axis n (eval e state)
eval (Reflect dir e) state = reflect dir (eval e state)
eval (Blank e) state = blank (eval e state)
eval (Reverse e) state = reverseAxis (eval e state)
eval (Rows3 rows) state = rows
eval (Subtile row column size e) state = subtile row column size (eval e state)
eval (Seq  (Let x (Arg e)) e2) state = eval e2 (newState (Let x (Arg e)) state)
  where newState e state = case e of
                             Let x _ -> (x, eval e state) : state
                             _ -> state
eval (Seq e1 e2) state = eval e2 (newState e1 state)
  where newState e state = case e of
                             Let x _ -> (x, eval e state) : state
                             _ -> state