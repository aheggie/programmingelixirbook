_prefix = fn first ->
  fn last ->
    first <> " " <> last
  end
end

times_2 = fn n -> n * 2 end

apply = fn func, arg -> func.(arg) end

IO.puts(apply.(times_2, 5))
