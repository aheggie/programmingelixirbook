defmodule Flatten do
  import Enum, only: [reduce: 3]

  # A shallow flatten
  def flatten(list) do
    reduce(list, [], &flattener/2)
  end

  defp flattener(item, accumulator) when is_list(item) do
    accumulator ++ item
  end
  defp flattener(item, accumulator) do
    accumulator ++ [item]
  end

  # Flattens all the way down
  def deepFlatten(list) do
    reduce(list, [], &deepFlattener/2)
  end

  defp deepFlattener(item, output_list) when is_list(item) do
    output_list ++ deepFlatten(item)
  end
  # base case
  defp deepFlattener(item, output_list), do: output_list ++ [item]
end
