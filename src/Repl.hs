{-# LANGUAGE OverloadedStrings #-}

module Repl
  ( mainLoop,
  )
where

-- import Eval ( runParseTest )

import Control.Monad.Trans (MonadIO (liftIO))
import Data.Text as T (pack)
import Eval (evalText, safeExec)
import System.Console.Haskeline
  ( InputT,
    defaultSettings,
    getInputLine,
    outputStrLn,
    runInputT,
  )

type Repl a = InputT IO a

mainLoop :: IO ()
mainLoop = runInputT defaultSettings repl

repl :: Repl ()
repl = do
  minput <- getInputLine "λ> "
  case minput of
    Nothing -> outputStrLn "Invalid input. Goodbye."
    Just ":quit" -> outputStrLn "Leaving PPI"
    Just input -> liftIO (process input) >> repl

-- Just input -> (liftIO $ processToAST input) >> repl

process :: String -> IO ()
process str = do
  res <- safeExec $ evalText $ T.pack str
  either putStrLn return res
