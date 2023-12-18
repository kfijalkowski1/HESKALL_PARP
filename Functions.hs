module Functions where

import Instruction
import State
import Location
import Item


printLines :: [String] -> IO ()
printLines xs = putStr (unlines xs)

printInstructions = printLines instructionsText

mapPrint :: State -> IO()
mapPrint state = do
  let currentLocation = i_am_at state
  let paths = loc_paths currentLocation
  putStrLn ("Z " ++ (loc_name currentLocation) ++ " prowadzą ścieżki do ")
  putStrLn "---------"
  printLocNames paths

printLocNames :: [Location] -> IO ()
printLocNames (location: locations) = do
  let listLength = length locations
  let msg = loc_name location
  putStrLn ("-- " ++ msg)
  if (listLength /= 0) then do
    printLocNames locations
  else do
    putStrLn "---------"

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


