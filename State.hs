module State where

import Item
import Location

data State = State
  { i_am_at :: Location,
    item_at :: [(Item, Location)],
    holding :: [Item],
    takeable :: [Item],
    hp :: Integer,
    atack :: Integer,
    dead :: Bool,
    finished :: Bool
  }

initialState :: State
initialState = State {
    i_am_at = laka,
    item_at = [(patyk, laka)],
    holding = [],
    takeable = [patyk],
    hp = 5,
    atack = 5,
    dead = False,
    finished = True
}

