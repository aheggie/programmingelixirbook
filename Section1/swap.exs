defmodule Swapper do
  def swap([]), do: []
  def swap([b|[]]), do: [b|[]]
  def swap([a,b|tail]), do: [b,a|swap(tail)]
end
