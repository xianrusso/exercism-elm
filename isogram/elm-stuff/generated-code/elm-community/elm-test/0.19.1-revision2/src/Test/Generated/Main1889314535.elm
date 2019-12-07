module Test.Generated.Main1889314535 exposing (main)

import Tests

import Test.Reporter.Reporter exposing (Report(..))
import Console.Text exposing (UseColor(..))
import Test.Runner.Node
import Test

main : Test.Runner.Node.TestProgram
main =
    [     Test.describe "Tests" [Tests.tests] ]
        |> Test.concat
        |> Test.Runner.Node.run { runs = Nothing, report = (ConsoleReport UseColor), seed = 68967536698861, processes = 8, paths = ["C:\\Users\\xian\\Exercism\\elm\\isogram\\tests\\Tests.elm"]}