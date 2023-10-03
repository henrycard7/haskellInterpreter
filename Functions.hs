module Functions where

import Grammar
import Tokens
import Data.List
import Data.Char

-- Helper Functions
removeLast :: [a] -> [a]
removeLast [] = []
removeLast [x] = []
removeLast (x:xs) = x : removeLast xs
removeNewlines :: String -> String
removeNewlines = filter (/= '\n')
parseToInts :: String -> [[Int]]
parseToInts s = map (map digitToInt . pairChars) $ lines s
  where
    pairChars :: String -> [Char]
    pairChars [] = []
    pairChars [x] = [x]
    pairChars (x:y:xs) = x : y : pairChars xs
convertToMatrix :: String -> Exp
convertToMatrix str = Rows3 (parseToInts str)
finalOutput :: [[Int]] -> IO ()
finalOutput = mapM_ (putStrLn . concatMap show)
fileToExp :: FilePath -> IO Exp
fileToExp filename = do
  contents <- readFile filename
  return (convertToMatrix (contents))

-- Matrix Manipulation
blankMatrix :: Int -> [[Int]]
blankMatrix n 
  | n < 0 = error "Matrix size cannot be negative" 
  | otherwise = replicate n (replicate n 0)

replicateIf :: Int -> [(BooleanExp1, [[Int]])] -> [[Int]]
replicateIf size conds 
  | size < 0 = error "Matrix size cannot be negative" 
  | otherwise = replicateIf' (length $ head $ snd $ head conds) (blankMatrix size) conds
  where
    replicateIf' :: Int -> [[Int]] -> [(BooleanExp1, [[Int]])] -> [[Int]]
    replicateIf' scale matrix conds = [[getValue row col conds | row <- [0..rows-1]] | col <- [0..cols-1]]
      where
        cols = length matrix * scale
        rows = length (head matrix) * scale
        getValue col row [] = matrix !! (row `div` scale) !! (col `div` scale)
        getValue col row ((cond, matrix):xs) 
          | evalBool' cond (row `div` scale) (col `div` scale) = matrix !! (row `mod` scale) !! (col `mod` scale)
          | otherwise = getValue col row xs

evalBool' :: BooleanExp1 -> Int -> Int -> Bool
evalBool' (And1 boolExp1 boolExp2) row col = evalBool boolExp1 row col && evalBool boolExp2 row col
evalBool' (Or1 boolExp1 boolExp2) row col = evalBool boolExp1 row col || evalBool boolExp2 row col
evalBool' (Single1 boolExp1) row col = evalBool boolExp1 row col

evalBool :: BooleanExp -> Int -> Int -> Bool
evalBool (BooleanExp (SubBooleanExpSingle axis) op (Digit n)) row col =
  let value = if axis == Row then row else col
  in case op of
       "<"  -> value < n
       ">"  -> value > n
       "<=" -> value <= n
       ">=" -> value >= n
       "==" -> value == n
       _ -> error "Unknown operator"
evalBool (BooleanExp (Digit n) op (SubBooleanExpSingle axis)) row col =
  let value = if axis == Row then row else col
  in case op of
       "<"  -> value < n
       ">"  -> value > n
       "<=" -> value <= n
       ">=" -> value >= n
       "==" -> value == n
       _ -> error "Unknown operator"
evalBool (BooleanExp (SubBooleanExpSingle axis1) op (SubBooleanExpSingle axis2)) row col =
  let value1 = if axis1 == Row then row else col
      value2 = if axis2 == Row then row else col
  in case op of
       "<"  -> value1 < value2
       ">"  -> value1 > value2
       "<=" -> value1 <= value2
       ">=" -> value1 >= value2
       "==" -> value1 == value2
       _  -> error "Unknown operator"
evalBool (BooleanExp (SubBooleanExp axis1 op1 axis2) op (Digit n)) row col =
  let value1 = if axis1 == Row then row else col
      value2 = if axis2 == Row then row else col
      value = case op1 of
                  "+" -> value1 + value2
                  "-" -> value1 - value2
                  "*" -> value1 * value2
                  _ -> error "Unknown operator"
  in case op of
       "<"  -> value < n
       ">"  -> value > n
       "<=" -> value <= n
       ">=" -> value >= n
       "==" -> value == n
       _ -> error "Unknown operator"
evalBool (BooleanExp (Digit n) op (SubBooleanExp axis1 op1 axis2)) row col =
  let value1 = if axis1 == Row then row else col
      value2 = if axis2 == Row then row else col
      value = case op1 of
                  "+" -> value1 + value2
                  "-" -> value1 - value2
                  "*" -> value1 * value2
                  _ -> error "Unknown operator"
  in case op of
       "<"  -> value < n
       ">"  -> value > n
       "<=" -> value <= n
       ">=" -> value >= n
       "==" -> value == n
       _ -> error "Unknown operator"
evalBool (BooleanExp (SubBooleanExp axis1 op1 axis2) op (SubBooleanExp axis3 op2 axis4)) row col =
  let value1 = if axis1 == Row then row else col
      value2 = if axis2 == Row then row else col
      value3 = if axis3 == Row then row else col
      value4 = if axis4 == Row then row else col
      leftValue = case op1 of
                      "+" -> value1 + value2
                      "-" -> value1 - value2
                      "*" -> value1 * value2
                      _ -> error "Unknown operator"
      rightValue = case op2 of
                      "+" -> value3 + value4
                      "-" -> value3 - value4
                      "*" -> value3 * value4
                      _ -> error "Unknown operator"
  in case op of
       "<"  -> leftValue < rightValue
       ">"  -> leftValue > rightValue
       "<=" -> leftValue <= rightValue
       ">=" -> leftValue >= rightValue
       "==" -> leftValue == rightValue
       _ -> error "Unknown operator"
negation :: [[Int]] -> [[Int]]
negation = map (map (\x -> 1 - x))

conjunction :: [[Int]] -> [[Int]] -> [[Int]]
conjunction m1 m2 = zipWith (zipWith conj) m1 m2
  where
    conj x y
      | x /= 0 && y /= 0  = 1
      | otherwise         = 0

scale :: Int -> [[Int]] -> [[Int]]
scale n xs = concatMap (replicate n . concatMap (replicate n)) xs

rotate :: Int -> [[Int]] -> [[Int]]
rotate degrees matrix
  | degrees `mod` 90 /= 0 = error "Degrees must be a multiple of 90"
  | degrees `mod` 360 == 0 = matrix
  | otherwise = rotate (degrees - 90) (rotate90CCW matrix)
  where
    rotate90CCW :: [[Int]] -> [[Int]]
    rotate90CCW = transpose' . reverse

subtile :: Int -> Int -> Int -> [[Int]] -> [[Int]]
subtile row col size matrix
  | row < 0 = error "Row must be non negative"
  | col < 0 = error "Column must be non negative"
  | size <= 0 = error "Size must be positive"
  | row + size > (length matrix) = error "Subtile is bigger than the matrix"
  | col + size > numCols = error "Subtile is bigger than the matrix"
  | otherwise =
      let submatrix = take size (drop row matrix)
      in map (take size . drop col) submatrix
  where numCols = if (length matrix) == 0 then 0 else length (head matrix)

transpose' :: [[Int]] -> [[Int]]
transpose' ([]:_) = []
transpose' matrix = (map head matrix) : transpose' (map tail matrix)

blank :: [[Int]] -> [[Int]]
blank matrix = replicate (length matrix) (take (length (head matrix)) (repeat 0))

reflect :: ReflectArg -> [[Int]] -> [[Int]]
reflect Horizontal matrix = reverse matrix
reflect Vertical matrix = map reverse matrix

add :: Axis -> [[Int]] -> [[Int]] -> [[Int]]
add Row xs ys =
  let rows = length xs
      cols = length (head xs)
  in [row1 ++ row2 | (row1, row2) <- zip xs ys]
add Column xs ys =
  let rows = length xs
      cols = length (head xs)
  in xs ++ ys

replicateAxisRelative :: Axis -> Int -> [[Int]] -> [[Int]]
replicateAxisRelative Row n xs = transpose (replicateAxisRelative Column n (transpose xs))
replicateAxisRelative Column n xs = concat (replicate n xs) 

replicateAxisAbsolute :: Axis -> Int -> [[Int]] -> [[Int]]
replicateAxisAbsolute Row n xs = map (take n . cycle) xs 
replicateAxisAbsolute Column n xs =
  let m = length xs
  in take n (concat (replicate ((n + m - 1) `div` m) xs))

reverseAxis :: [[Int]] -> [[Int]]
reverseAxis = map reverse . reverse
