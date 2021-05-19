defmodule HelloddTest do
  use ExUnit.Case
  doctest Hellodd

  test "greets the world" do
    assert Hellodd.hello() == :world
  end
end
