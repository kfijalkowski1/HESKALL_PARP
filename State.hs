module State where

import Place
import Object
import Person
import Abstract

data State = State
  { i_am_at :: Place,
    object_at :: [(Object, Place)],
    holding :: [Object],
    takeable :: [Object],
    hp :: Int,
    atack :: Int,
    dead :: Bool,
    finished :: Bool
  }

initialState :: State
initialState = State {
    i_am_at = laka,
    object_at = [(patyk, laka)],
    holding = [],
    takeable = [patyk],
    hp = 5,
    dead = False,
    finished = True
}

