defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there is a file with the given name, returns the sum of numbers"
      response = Numbers.sum_from_file("numbers")

      expected_response = {ok:, %{result: 37}}

      assert = response == expected_response

    test "when there is no file with the given name, returns an error"
      response = Numbers.sum_from_file("error")

      expected_response = {:error, %{message: "Invalid file!"}}

      assert = response == expected_response
  end
end
