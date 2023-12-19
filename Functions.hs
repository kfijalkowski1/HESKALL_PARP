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

printGoResult :: State -> State -> IO()
printGoResult state newState = do
  let currentLocation = i_am_at newState
  let pastLocation = i_am_at state
  let currentHP = hp newState
  let pastHp = hp state
  if loc_name(currentLocation) == loc_name(pastLocation) && currentHP /= pastHp then do
    putStrLn "Niestety pomimo zaciętej walki ponosisz porażkę."
    putStrLn "---------"
  else do
    putStrLn (loc_win_atack currentLocation)
    putStrLn "---------"

-- hpChange :: State -> State -> IO()
-- hpChange state newState = do
--   let currentHP = hp newState
--   let pastHp = hp state
--   let changedHp = currentHP - pastHp
--   if currentHP == pastHp then do
--     putStrLn ""
--   else if changedHp > 0 then do
--     putStrLn ("Zyskałeś: " ++ changedHp ++ " hp")
--   else do
--     putStrLn ("Straciłeś: " ++ changedHp ++ " hp")

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
  printSearch state "ekwipunku"



printSearch :: State -> String -> IO()
printSearch state place = do
    let items = loc_items (i_am_at state)
    let listLength = length items
    if (listLength /= 0) then do
      putStrLn ("W " ++ (place) ++ " znajduje się: ")
      putStrLn "---------"
      printItems( items )
    else do
      putStrLn ("W " ++ (place) ++ " nic nie ma.")


printItems :: [Item] -> IO()
printItems (item: items) = do
  let listLength = length items
  let msg = item_name item
  putStrLn ("-- " ++ msg)
  if (listLength /= 0) then do
    printItems items
  else do
    putStrLn "---------"


