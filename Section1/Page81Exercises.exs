defmodule Exercises do
  def span(from, to) when is_integer(from) and is_integer(to) and from < to do
    span(from, to, [])
  end
  def span(a,b) when is_integer(a) and is_integer(b), do: raise "The first item must be lesser than the second item"
  def span(_,_), do: raise "Both arguments must be integers"

  defp span(same, same, output_list), do: [same | output_list]
  defp span(from, to, output_list), do: span(from, to-1, [to | output_list])
end
