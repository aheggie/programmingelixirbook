cast = %{
  buttercup: %{
    actor: {"Robin", "Wright"},
    role: "princess"
  },
  westley: %{
    actor: {"Carey", "Elwes"},
    role: "Farm boy"
  }
}

IO.inspect(get_in(cast, [Access.key(:westley), :actor, Access.elem(1)]))
IO.inspect(get_in(cast, [:westley, :actor, Access.elem(1)]))

IO.inspect(get_and_update_in(cast, [Access.key(:buttercup), :role], &{&1, "queen"}))
