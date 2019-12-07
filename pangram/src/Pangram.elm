module Pangram exposing (isPangram)

import Set
import Regex

regex : Regex.Regex
regex =
    Maybe.withDefault Regex.never <|
        Regex.fromString "[^a-zA-Z]+"

isPangram : String -> Bool
isPangram sentence =
    let
        list = Regex.replace regex (\_-> "") sentence
            |> String.toLower
            |> String.toList
        set = Set.fromList list
    in
    Set.size set == 26