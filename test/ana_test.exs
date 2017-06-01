defmodule AnaTest do
  use ExUnit.Case
  doctest Ana

  setup  do
    {status, _} = Ana.GenServer.start_link()
    status
  end

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "easy test empty list" do
    assert [] = Ana.GenServer.list()
  end

  test "put some words" do
    liste=["Anna", "Barbara"]
    Ana.GenServer.store(liste)
    assert ^liste = Ana.GenServer.list()
  end
end
