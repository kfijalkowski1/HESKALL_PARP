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
  let pastHP = hp state

  if loc_name(currentLocation) == loc_name(pastLocation) then do
    if currentHP /= pastHP then do
      putStrLn "Niestety pomimo zaciętej walki ponosisz porażkę."
      putStrLn "---------"
    else do
      putStrLn "Nie ma przejścia do lokacji o podanej nazwie."
      putStrLn "Pozostajesz w tej samej lokacji."
      putStrLn "---------"
  else do
    if loc_attack_required(currentLocation) > 0 then do
      putStrLn (loc_win_attack currentLocation)
      putStrLn "---------"
    else do
      putStr ""


printLook :: State -> IO()
printLook state = do
  let msg = loc_description (i_am_at state)
  printLines msg


printLookSearch :: State -> IO()
printLookSearch state = do
  let msg = loc_search (i_am_at state)
  printLines msg


printStats :: State -> IO()
printStats state = do
  let health = hp state
  let cur_attack = attack state
  putStrLn ("Aktualna ilość hp: " ++ show health)
  putStrLn ("Aktualna ilość ataku: " ++ show cur_attack)
  printSearch (holding state) "ekwipunku"


printSearch :: [Item] -> String -> IO()
printSearch items place = do
    let listLength = length items

    if (listLength /= 0) then do
      putStrLn ("W " ++ (place) ++ " znajduje się: ")
      putStrLn "---------"
      printItems (items)
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
