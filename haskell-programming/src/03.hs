-- TemplateHaskell --
-- tag::exercies-5-6[]
module Reverse where

rvrs :: String -> String
rvrs xs =
  let curry = take 5 xs
      _is_ = take 4 $ drop 5 xs
      awesome = take 7 $ drop 9 xs
  in awesome ++ _is_ ++ curry

main :: IO ()
main = print (rvrs "Curry is awesome")
-- end::exercies-5-6[]
