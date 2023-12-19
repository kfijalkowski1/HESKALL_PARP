module Main where

import System.IO ( hFlush, stdout )
import System.Exit (exitWith, ExitCode(..))
import State
import Location
import Functions
import ItemFunctions
import Travel


readCommand :: IO String
readCommand = do
    putStr "> "
    hFlush stdout
    getLine


gameLoop :: State -> IO ()
gameLoop state = do
    if hp state <= 0 then do
      putStrLn "You died..."
      exitWith ExitSuccess
    else do
      putStrLn ""
      cmd <- readCommand
      putStrLn ""
      case words (cmd) of
        ["instructions"] -> do
          printInstructions
          gameLoop state

        ["stats"] -> do
          printStats state
          gameLoop state

        ["look"] -> do
          printLook state
          gameLoop state

        ["search"] -> do
          printSearch state (loc_name (i_am_at state))
          gameLoop state

        ["take", object] -> do
          let newState = takeItem state object
          printTake newState object
          gameLoop newState

        ["map"] -> do
          mapPrint state
          gameLoop state

        ["go", location] -> do
          let newState = goToLocation state location
          printGoResult state newState
          -- hpChange state newState
          printLook newState
          gameLoop newState

        ["goToMoon"] -> do
          let newState = goToMoon state
          printGoingToMoon newState
          gameLoop newState

        ["quit"] -> return ()

        _ -> do
          printLines ["Unknown command.", ""]
          gameLoop state


main = do
    printInstructions
    gameLoop initialState
