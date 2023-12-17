module Travel where

import Item
import ItemF
import State
import Location
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
  else do putStr ("Aby polecieć na księżyc potrzebujessz portalOne, portalTwo, portalThree w swoim ekwipunku")