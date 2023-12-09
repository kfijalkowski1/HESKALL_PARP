module Main where

import Instruction
import Location
import Item

-- print strings from list in separate lines
printLines :: [String] -> IO ()
printLines xs = putStr (unlines xs)

printInstructions = printLines instructionsText

readCommand :: IO String
readCommand = do
    putStr "> "
    xs <- getLine
    return xs

-- note that the game loop may take the game state as
-- an argument, eg. gameLoop :: State -> IO ()
gameLoop :: IO ()
gameLoop = do
    cmd <- readCommand
    case cmd of
        "instructions" -> do printInstructions
                             gameLoop
        "quit" -> return ()
        _ -> do printLines ["Unknown command.", ""]
                gameLoop

main = do
    printInstructions
    gameLoop

