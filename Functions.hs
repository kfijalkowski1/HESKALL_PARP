module Functions where

import Instruction
import State
import Location

printLines :: [String] -> IO ()
printLines xs = putStr (unlines xs)

printInstructions = printLines instructionsText


printLook :: State -> IO()
printLook state = do
  let msg = loc_description (i_am_at state)
  printLines msg