module TwoFer exposing (twoFer)

twoFer : Maybe String -> String
twoFer name =
    case name of
        Nothing -> 
            "One for you, one for me."
        Just val -> 
            "One for " ++ val ++ ", one for me."
