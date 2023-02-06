module HangmanSpec (testGuessOneLetter, testGuessTwoLetters) where

import Hangman (hangmanGame)
import Test.HUnit

testGuessOneLetter =
  TestCase
    ( assertEqual
        "guess 'a' in apple"
        "a _ _ _ _"
        (hangmanGame "apple" ['a'])
    )

testGuessTwoLetters =
  TestCase
    ( assertEqual
        "guess 'ap' in apple"
        "a p p _ _"
        (hangmanGame "apple" ['a', 'p'])
    )