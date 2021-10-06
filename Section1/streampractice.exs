Stream.cycle(~w{ green white })
|> Stream.zip(1..5)
|> Enum.map(fn {class, value} -> "<tr class='#{class}'><td>#{value}</td></tr>\n" end)
|> IO.puts()

Stream.repeatedly(fn -> :random.uniform() > 0.5 end)
|> Enum.take(3)
|> IO.inspect()

powers_iterate = fn n -> Stream.iterate(n, &(&1 * n)) end

powers_iterate.(2)
|> Enum.take(5)
|> IO.inspect()
