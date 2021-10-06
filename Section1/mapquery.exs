people = [
  %{name: "Helene", height: 1.24},
  %{name: "Anna", height: 1.88},
  %{name: "Stacie", height: 1.32},
  %{name: "Joanna", height: 2.16},
  %{name: "Jaunita", height: 1.28}
]

IO.inspect(for person = %{height: height} <- people, height > 1.5, do: person)
