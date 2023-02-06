import HangmanSpec
import Test.HUnit

main :: IO ()
main = do
  _ <- runTestTT tests
  return ()

foo _ = (1, 2)

test1 = TestCase (assertEqual "for (foo 3)," (1, 2) (foo 3))

tests =
  TestList
    [ TestLabel "test1" test1,
      TestLabel "HangmanGame" testGuessOneLetter,
      TestLabel "HangmanGame2" testGuessTwoLetters
    ]
