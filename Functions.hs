module Functions where

import Instruction
import State
import Location
import Item


printLines :: [String] -> IO ()
printLines xs = putStr (unlines xs)

printInstructions = printLines instructionsText

map :: State -> IO()
map state = do
  let currentLocation = i_am_at state
      paths = loc_paths currentLocation
  in printLocNames paths

printLocNames :: [Location] -> IO ()
printLocNames locations =
  mapM_ (putStrLn . loc_name) locations

printLook :: State -> IO()
printLook state = do
  let msg = loc_description (i_am_at state)
  printLines msg


printStats :: State -> IO()
printStats state = do
  let health = hp state
  let cur_atack = atack state
  putStrLn ("Aktualna ilość hp: " ++ show health)
  putStrLn ("Aktualna ilość ataku: " ++ show cur_atack)


printSearch :: State -> IO()
printSearch state = do
    putStrLn ("W " ++ (loc_name (i_am_at state)) ++ "znajduje się: ")
    putStrLn "---------"
    printItems( (loc_items (i_am_at state)) )


printItems :: [Item] -> IO()
printItems (item: items) = do
  let listLength = length items
  let msg = item_name item
  putStrLn ("-- " ++ msg)
  if (listLength /= 0) then do
    printItems items
  else do
    putStrLn "---------"


