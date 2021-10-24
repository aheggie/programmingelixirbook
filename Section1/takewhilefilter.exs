defmodule TakeFilter do
  import Enum, only: [take_while: 2, filter: 2]

  # pag 101
  def take_while_filter(list, func) do
    {
      take_while(list, func),
      filter(list, func)
    }
  end
end
