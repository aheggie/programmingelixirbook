defmodule MyList do
  def len([]), do: 0
  def len([_h | t]), do: 1 + len(t)

  def square([]), do: []
  def square([h | t]), do: [h * h | square(t)]

  def add1([]), do: []
  def add1([h | t]), do: [h + 1 | add1(t)]

  def map([], _f), do: []
  def map([h|t], f), do: [f.(h)| map(t, f)]

  def add2(list), do: map(list, &(&1 + 2))

  def reduce([], output_value, _func), do: output_value
  def reduce([h|t], acc, func), do: reduce(t, func.(acc, h), func)

  def sum(list) when is_list(list), do: reduce(list, 0, &(&1 + &2))

  def mapsum(list, map_func), do: list |> map(map_func) |> reduce(0, &(&1 + &2))

  def max([h|t]), do: reduce(t, h, &max_of_two/2)

  def max_of_two(a, b) when b > a, do: b
  def max_of_two(a, b) when a > b, do: a

  def caesar([charlist]) when is_list(charlist), do: map(charlist, &caesar_encypher/1)

  defp caesar_encypher(n) when is_integer(n) and n >=65 and n <=90, do: caesar_encypher(n, 65)
  defp caesar_encypher(n) when is_integer(n) and n >=97 and n <=122, do: caesar_encypher(n, 97)
  defp caesar_encypher(n) when is_integer(n), do: n

  defp caesar_encypher(n, offset), do: rem(n-offset+13,26)+offset
end
