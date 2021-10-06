fizzBuzz = fn
  (0,0,_) -> "FizzBuzz"
  (_,0,_) -> "Buzz"
  (0,_,_) -> "Fizz"
  (_,_,c) -> c
end

fizzBuzzInts = fn
  n -> fizzBuzz.(rem(n,3), rem(n,5), n)
end

IO.puts fizzBuzzInts.(10)
IO.puts fizzBuzzInts.(11)
IO.puts fizzBuzzInts.(12)
IO.puts fizzBuzzInts.(13)
IO.puts fizzBuzzInts.(14)
IO.puts fizzBuzzInts.(15)
IO.puts fizzBuzzInts.(16)
