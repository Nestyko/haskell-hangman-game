module Lib
  ( hangmanGameManager,
  )
where

import Hangman (hangmanGame)

maxAttempts = 7

manager :: String -> [Char] -> IO ()
manager word attempts =
  if length attempts >= maxAttempts
    then do
      putStrLn "Max number of attempts reached, Game Over :("
    else do
      putStrLn "Guess: "
      letterGuess <- getLine
      let newAttempts = attempts ++ letterGuess
       in do
            putStrLn (hangmanGame word newAttempts)
            manager word newAttempts

hangmanGameManager :: IO ()
hangmanGameManager = do
  putStrLn "Welcome to Hangman"
  manager "apple" []
