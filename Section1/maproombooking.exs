people = [
  %{name: "Helene", height: 1.24},
  %{name: "Anna", height: 1.88},
  %{name: "Stacie", height: 1.32},
  %{name: "Joanna", height: 2.16},
  %{name: "Jaunita", height: 1.28}
]

defmodule HotelRoom do
  def book(%{name: name, height: height})
      when height > 1.9 do
    IO.puts("Need extra-long bed for #{name}")
  end

  def book(%{name: name, height: height})
      when height < 1.3 do
    IO.puts("Need low shower controls for #{name}")
  end

  def book(%{name: name}) do
    IO.puts("Need regular bed for #{name}")
  end
end

people |> Enum.each(&HotelRoom.book/1)
