module State where

import Item
import Location


data State = State
  { i_am_at :: Location,
    holding :: [Item],
    hp :: Integer,
    attack :: Integer,
    finished :: Bool
  }


initialState :: State
initialState = State {
    i_am_at = laka,
    holding = [],
    hp = 20,
    attack = 4,
    finished = True
}
