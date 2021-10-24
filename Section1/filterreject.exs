defmodule FilterReject do
  import Enum, only: [filter: 2, reject: 2]

  # page 100

  def filter_reject(list, func) do
    {
      filter(list, func),
      reject(list, func)
    }
  end
end
