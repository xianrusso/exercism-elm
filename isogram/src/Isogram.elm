module Isogram exposing (isIsogram)

import Regex
import Set


regex : Regex.Regex
regex =
    Maybe.withDefault Regex.never <|
        Regex.fromString "[^a-zA-Z]+"


isIsogram : String -> Bool
isIsogram sentence =
    let
        newSentence =
            Regex.replace regex (\_ -> "") sentence
                |> String.toLower

        set =
            String.toList newSentence
                |> Set.fromList

        list =
            Set.toList set
                |> List.map (\x -> String.fromChar x)

        len =
            String.join "" list
                |> String.length
    in
    if len == String.length newSentence then
        True

    else
        False
