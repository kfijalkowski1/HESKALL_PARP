module ItemF where

import Item
import State
import Location
import System.IO ( hFlush, stdout )

takeItem :: State -> String -> State
takeItem state item = do
  if itemIn (loc_items (i_am_at state)) item then do
    let itemObj = getItemByName (loc_items (i_am_at state)) item
    let itemHP = item_health_change itemObj
    let itemAt = item_attack_change itemObj
    state {
        holding = holding state ++ [itemObj],
        hp = (hp state) + itemHP,
        atack = (atack state) + itemAt
      }
  else state


itemIn :: [Item] -> String -> Bool
itemIn (item: items) iName = do
  if (item_name(item)) == iName then do
    True
  else do itemIn items iName
itemIn [] _ = False


getItemByName :: [Item] -> String -> Item
getItemByName (item: items) iName = do
  if (item_name(item)) == iName then do
    item
  else do getItemByName items iName

printTake :: State -> String -> IO()
printTake state item = do
  if itemIn (loc_items (i_am_at state)) item then do
    let itemObj = getItemByName (loc_items (i_am_at state)) item
    let msg = item_description itemObj
    putStr msg
  else do putStr (item ++ " nie istnieje")