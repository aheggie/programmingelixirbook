defmodule Exercise do
  # func needs to return a boolean value
  def all?([h | t], func) do
    all?(t, func.(h), func)
  end

  # any time there is a false result exit
  defp all?(_, false, _), do: false
  # if the list is empty and the last item was true then they were all true
  defp all?([], true, _), do: true

  # if a current item is true, keep looping
  defp all?([h | t], true, func) do
    all?(t, func.(h), func)
  end

  def each([], _func), do: :ok

  def each([h | t], func) do
    func.(h)
    each(t, func)
  end

  def filter([h | t], predicate_func) do
    filter(t, h, predicate_func.(h), [], predicate_func)
  end

  defp filter([], current_item, true, output_list, _predicate_func) do
    output_list ++ [current_item]
  end

  defp filter([], _current_item, false, output_list, _predicate_func) do
    output_list
  end

  defp filter([h | t], current_item, true, output_list, predicate_func) do
    filter(t, h, predicate_func.(h), output_list ++ [current_item], predicate_func)
  end

  defp filter([h | t], _current_item, false, output_list, predicate_func) do
    filter(t, h, predicate_func.(h), output_list, predicate_func)
  end

  # TODO: negative count, more efficient for count too high
  def split(list, count) when length(list) < count, do: {list, []}
  def split(list, count), do: split(list, count, [])

  defp split(remaining_input_list, 0, output_list), do: {output_list, remaining_input_list}

  defp split([h | t], current_count, output_list),
    do: split(t, current_count - 1, output_list ++ [h])

  def take(list, n) when length(list) < n, do: list
  def take(list, n), do: take(list, n, [])

  defp take(_list, 0, output_list), do: output_list
  defp take([h | t], n, output_list), do: take(t, n - 1, output_list ++ [h])
end
