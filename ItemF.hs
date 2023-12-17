module ItemF where

import Item
import State
import Location
import System.IO ( hFlush, stdout )

takeItem :: State -> String -> State
takeItem state item = do
  if itemExists (loc_items (i_am_at state)) item then do
    let itemObj = getItemByName (loc_items (i_am_at state)) item
    let itemHP = item_health_change itemObj
    let itemAt = item_attack_change itemObj
    state {
        holding = holding state ++ [itemObj],
        hp = (hp state) + itemHP,
        atack = (atack state) + itemAt
      }
  else state


itemExists :: [Item] -> String -> Bool
itemExists (item: items) iName = do
  if (item_name(item)) == iName then do
    True
  else do itemExists items iName
itemExists [] _ = False


getItemByName :: [Item] -> String -> Item
getItemByName (item: items) iName = do
  if (item_name(item)) == iName then do
    item
  else do getItemByName items iName



printTake :: State -> String -> IO()
printTake state item = do
  if itemExists (loc_items (i_am_at state)) item then do
    let itemObj = getItemByName (loc_items (i_am_at state)) item
    let msg = item_description itemObj
    putStr msg
  else do putStr (item ++ " nie istnieje")


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