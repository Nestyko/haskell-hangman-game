module Hangman (hangmanGame) where

import Data.List (unwords)
import Data.List.Split
import Debug.Trace
import Flow

monoTrace msg x = trace (msg ++ show x) x

splitEachLetter = tail . (splitOn "")

hangmanGame :: String -> [Char] -> String
hangmanGame word guesses =
  word
    |> map (replaceWithUnderscore guesses)
    |> splitEachLetter
    |> unwords

replaceWithUnderscore :: String -> Char -> Char
replaceWithUnderscore guesses x =
  if x `elem` guesses
    then x
    else '_'