module Main where

import System.IO
import System.Random

main = do
    hSetBuffering stdin LineBuffering
    --Picks a random int between 1 and 100--
    num <- randomRIO (1::Int, 100)
    putStrLn "I'm thinking of a number between 1 and 100"
    doGuessing num

doGuessing num = do
    putStrLn "Enter your guess:"
    guess <- getLine
    --converts guess from string to int, storing the result in guessNum 
    let guessNum = read guess
    if guessNum < num
        then do putStrLn "Too low!"
                doGuessing num
        else if guessNum > num
            then do putStrLn "Too high!"
                    doGuessing num
            else do putStrLn "You win!"
