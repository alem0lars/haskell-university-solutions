module Lab1 ( ex1
            , ex2
            )
where

{-|
  Write a program that prints out "Hello worlds" and terminates.

  Expected output:

  ```
  Hello World
  ```
-}
ex1 :: IO ()
ex1 = putStrLn "Hello World"

{-|
  Write a program that welcomes the user, asks for his/her name, greets user and
  terminates.

  Expected output:

  ```
  Hello, what is your name?
  Pawel
  Nice to meet you Pawel
  ```
-}
ex2 :: IO ()
ex2 = return () -- TODO
