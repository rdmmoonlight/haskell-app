{-# LANGUAGE OverloadedStrings #-}

module Main where

import Web.Scotty
import Data.Aeson (object, (.=))
import Network.HTTP.Types (status200)

main :: IO ()
main = scotty 3000 $ do
  get "/health" $ do
    status status200
    json $ object ["status" .= ("OK" :: String)]