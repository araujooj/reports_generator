defmodule ReportsGenerator.ParserTest do
  use ExUnit.Case
  alias ReportsGenerator.Parser

  describe "call/1" do
    test "parse the file" do
      file = "report_test"

      response =
        file
        |> Parser.call()
        |> Enum.map(& &1)

      expected_response = [
        ["1", "pizza", 48],
        ["2", "açaí", 45],
        ["3", "hambúrguer", 31],
        ["4", "esfirra", 42],
        ["5", "hambúrguer", 49],
        ["6", "esfirra", 18],
        ["7", "pizza", 27],
        ["8", "esfirra", 25],
        ["9", "churrasco", 24],
        ["10", "churrasco", 36]
      ]

      assert response == expected_response
    end
  end
end
