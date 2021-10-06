defmodule Example do
  def authors() do
    [
      %{name: "Jose", language: "Elixir"},
      %{name: "Megan", language: "Ruby"},
      %{name: "Peark", language: "PERL"}
    ]
  end

  def languages_with_an_r(:get, collection, next_fn) do
    for row <- collection do
      if String.contains?(row.language, "R") do
        next_fn.(row)
      end
    end
  end
end
