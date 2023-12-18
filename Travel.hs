module Travel where

import Item
import ItemF
import State
import Location
import Functions
import System.IO ( hFlush, stdout )
import System.Exit (exitWith, ExitCode(..))


goToMoon :: State -> State
goToMoon state = do
  if (itemIn (holding state) "portalOne") && (itemIn (holding state) "portalTwo") && (itemIn (holding state) "portalThree") then do
    state {
        i_am_at = moon
      }
  else state


printGoingToMoon :: State -> IO()
printGoingToMoon state = do
  if (loc_name (i_am_at state)) == "moon" then do
    putStrLn "Jesteś na księżycu, fdsfs" --TODO napisać opis
    exitWith ExitSuccess
  else do putStr ("Aby polecieć na księżyc, potrzebujesz portalOne, portalTwo, portalThree w swoim ekwipunku.")

goToLocation :: State -> String -> State
goToLocation state locationName = do
  if connected state (loc_paths (i_am_at state)) locationName then do
    if checkAtack state (loc_paths (i_am_at state)) locationName then do
      goAt state locationName (loc_paths (i_am_at state))
    ---map tmpState
    --- let tmpState = 
    else do 
      takeDMG state (loc_paths (i_am_at state)) locationName
  else state

connected :: State -> [Location] -> String -> Bool
connected state (location: locations) locationName = do
  if (loc_name location) == locationName then do
    True
  else do connected state locations locationName
connected state [] _ = False

checkAtack :: State -> [Location] -> String -> Bool
checkAtack state (location: locations) locationName = do
  if (loc_name location) == locationName then do
    if (loc_attack_required location) >= (atack state) then do
      True
    else do 
      False
  else do checkAtack state locations locationName


takeDMG :: State -> [Location] -> String -> State
takeDMG state (location: locations) locationName = do
  if (loc_name location) == locationName then do
    state {hp = (hp state) - (loc_health_change location)}
  else do takeDMG state locations locationName


goAt :: State -> String -> [Location] -> State
goAt state locationName (location: locations) = do
  if locationName == (loc_name location) then do
    state {
      i_am_at = (location)
    }
  else do goAt state locationName locations

goAt state locationName [] = state

