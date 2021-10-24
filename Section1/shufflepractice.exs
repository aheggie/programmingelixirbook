defmodule Deck do
  import Enum, only: [shuffle: 1]

  # page 102
  def unshuffled_deck do
    for rank <- '23456789TQJKA', suit <- 'CDHS', do: [rank, suit]
    # for rank <- '23456789TQJKA', suit <- '♣♦♥♠', do: [suit, rank]
  end

  def new_deck do
    unshuffled_deck() |> shuffle
  end
end

defmodule TrackedDeck do
  import Deck, only: [new_deck: 0]

  defstruct deck: new_deck(), dealt: 0

  def deal_n(n, %TrackedDeck{deck: deck, dealt: dealt}) when n + dealt <= 52 do
    {Enum.take(deck, n), %TrackedDeck{deck: Enum.drop(deck, n), dealt: dealt + n}}
  end

  def deal_n(n, %TrackedDeck{deck: deck, dealt: dealt}) do
    next_n = n + dealt - 52
    next_deck = new_deck()

    {Enum.concat(deck, Enum.take(next_deck, next_n)),
     %TrackedDeck{deck: Enum.drop(next_deck, next_n), dealt: next_n}}
  end
end
