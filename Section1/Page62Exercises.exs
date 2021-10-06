defmodule Exercise do
  def guess(actual, low..high) when low < actual and actual < high do
    guess(actual, low..high, midpoint(low..high))
  end

  # the base case
  defp guess(correct_guess, _range, correct_guess), do: correct_guess

  # guess is too high
  defp guess(actual, low.._high, current_guess) when actual < current_guess do
    IO.puts("Is it #{current_guess}")
    guess(actual, low..current_guess, midpoint(low..current_guess))
  end

  # guess is too low
  defp guess(actual, _low..high, current_guess) when actual > current_guess do
    IO.puts("Is it #{current_guess}")
    guess(actual, current_guess..high, midpoint(current_guess..high))
  end

  def midpoint(low..high) do
    # integer division
    div(low + high, 2)
  end
end
