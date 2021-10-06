IO.puts(
  Enum.reduce(["now", "is", "the", "time"], 0, fn word, longest ->
    if String.length(word) > longest, do: String.length(word), else: longest
  end)
)
