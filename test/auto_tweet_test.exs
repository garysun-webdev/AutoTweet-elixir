defmodule AutoTweetTest do
  use ExUnit.Case
  doctest AutoTweet

  test "greets the world" do
    assert AutoTweet.hello() == :world
  end
end
