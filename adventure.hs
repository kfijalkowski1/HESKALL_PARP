import Control.Monad.State


introductionText = [
    "A long time ago, in a galaxy far, far away...",
    "",
    "It is a period of civil war. Rebel",
    "spaceships, striking from a hidden",
    "base, have won their first victory",
    "against the evil Galactic Empire.",
    "",
    "During the battle, Rebel spies managed",
    "to steal secret plans to the Empire's",
    "ultimate weapon, the Death Star, an",
    "armored space station with enough",
    "power to destroy an entire planet.",
    "",
    "Pursued by the Empire's sinister agents,",
    "Princess Leia races home aboard her",
    "starship, custodian of the stolen plans",
    "that can save her people and restore",
    "freedom to the galaxy....",
    ""
    ]

instructionsText = [
    "Available commands are:",
    "",
    "instructions  -- to see these instructions.",
    "quit          -- to end the game and quit.",
    ""
    ]

-- Definiujemy typ dla stanu
data GameState = GameState { healthPoints :: Int }

-- Funkcje do operacji na stanie
getHealth :: State GameState Int
getHealth = do
  gameState <- get
  return $ healthPoints gameState

setHealth :: Int -> State GameState ()
setHealth newHealth = do
  gameState <- get
  put $ gameState { healthPoints = newHealth }

-- Funkcja wykonująca obliczenia związane ze stanem
performAction :: State GameState ()
performAction = do
  currentHealth <- getHealth
  if currentHealth > 0
    then do
      setHealth (currentHealth - 10)
      putStr "Zadano 10 obrażeń!"
    else
      putStr "Postać już nie żyje."




-- print strings from list in separate lines
printLines :: [String] -> IO ()
printLines xs = putStr (unlines xs)

printIntroduction = printLines introductionText
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
        "health" -> do performAction
                        gameLoop
        "quit" -> return ()
        _ -> do printLines ["Unknown command.", ""]
                gameLoop

main = do
    printIntroduction
    printInstructions
    gameLoop

