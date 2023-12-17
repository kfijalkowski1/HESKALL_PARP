module Functions where

import Instruction

printLines :: [String] -> IO ()
printLines xs = putStr (unlines xs)

printInstructions = printLines instructionsText