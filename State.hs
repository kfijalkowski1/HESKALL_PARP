module State where

import Item
import Location

data State = State
  { i_am_at :: Location,
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
    holding = [],
    takeable = [patyk],
    hp = 5,
    atack = 5,
    dead = False,
    finished = True
}

