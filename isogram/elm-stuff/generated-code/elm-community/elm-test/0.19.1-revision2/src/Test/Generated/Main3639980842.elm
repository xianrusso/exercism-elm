module Test.Generated.Main3639980842 exposing (main)

import Tests

import Test.Reporter.Reporter exposing (Report(..))
import Console.Text exposing (UseColor(..))
import Test.Runner.Node
import Test

main : Test.Runner.Node.TestProgram
main =
    [     Test.describe "Tests" [Tests.tests] ]
        |> Test.concat
        |> Test.Runner.Node.run { runs = Nothing, report = (ConsoleReport UseColor), seed = 290188722199137, processes = 8, paths = ["C:\\Users\\xian\\Exercism\\elm\\isogram\\tests\\Tests.elm"]}