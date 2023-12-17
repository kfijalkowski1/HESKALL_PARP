module ItemF where

import Item
import State
import Location
import System.IO ( hFlush, stdout )

takeItem :: State -> String -> State
takeItem state item = do
  if itemExists (item_at state) item then do
    let itemObj = getItemByName (item_at state) item
    let itemHP = item_health_change itemObj
    let itemAt = item_attack_change itemObj
    -- putStr item_description itemObj
    state {
        holding = holding state ++ [itemObj],
        hp = (hp state) + itemHP,
        atack = (atack state) + itemAt
      }
  else state


itemExists :: [(Item, Location)] -> String -> Bool
itemExists (item: items) iName = do
  if (item_name(fst(item))) == iName then do
    True
  else do itemExists items iName
itemExists [] _ = False


getItemByName :: [(Item, Location)] -> String -> Item
getItemByName (item: items) iName = do
  if (item_name(fst(item))) == iName then do
    fst(item)
  else do getItemByName items iName



printTake :: State -> String -> IO()
printTake state item = do
  if itemExists (item_at state) item then do
    let itemObj = getItemByName (item_at state) item
    let msg = item_description itemObj
    putStr msg
  else do putStr (item ++ " nie istnieje")
