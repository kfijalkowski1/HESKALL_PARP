module Main where

import System.IO ( hFlush, stdout )
import System.Exit (exitWith, ExitCode(..))
import State
import Location
import Functions
import ItemF
import Travel


readCommand :: IO String
readCommand = do
    putStr "> "
    hFlush stdout
    getLine

gameLoop :: State -> IO ()
gameLoop state = do
    if dead state then do
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

        ["take", object] -> do
          let newState = takeItem state object
          printTake newState object
          gameLoop newState

        ["look"] -> do
          printLook state
          gameLoop state

        ["search"] -> do
          printSearch state
          gameLoop state

        ["goToMoon"] -> do
          let newState = goToMoon state
          printGoingToMoon newState
          gameLoop newState

        -- ["map"] -> do
        --   printSearch state
        --   gameLoop newState

        -- ["go", location] -> do
        --   let newState = goToLocation state location
        --   descLocation newState location
        --   gameLoop newState

        ["quit"] -> return ()

        _ -> do
          printLines ["Unknown command.", ""]
          gameLoop state

main = do
    -- printIntroduction
    gameLoop initialState
