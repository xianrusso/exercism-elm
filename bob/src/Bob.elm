module Bob exposing (hey)

import Regex


regex : Regex.Regex
regex =
    Maybe.withDefault Regex.never <|
        Regex.fromString "[a-zA-Z]+"

isQuestion str =
    String.endsWith "?" str

isYelling str =
    String.toUpper str == str

isWord str =
    Regex.contains regex str

hey : String -> String
hey remark =
    let
        str = String.trim remark
    in
    if (isYelling str) && (isQuestion str) && (isWord str) then
        "Calm down, I know what I'm doing!"
    else if (isYelling str) && (isWord str) then
        "Whoa, chill out!"
    else if isQuestion str then
        "Sure."   
    else if String.trim str |> String.isEmpty then
        "Fine. Be that way!"
    else
        "Whatever."
