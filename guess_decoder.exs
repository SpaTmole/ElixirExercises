defmodule Letme do
  def guess(x, a..b) when x == div(b - a, 2) + a, do: IO.puts "It is #{div(b - a, 2) + a}"
  def guess(x, a..b) when x > div(b - a, 2) + a do
    IO.puts "Is it #{div(b - a, 2) + a}?"
    guess(x, (div(b - a, 2) + a)..b)
  end
  def guess(x, a..b) when x < div(b - a, 2) + a do
    IO.puts "Is it #{div(b - a, 2) + a}?"
    guess(x, a..(div(b - a, 2) + a))
  end
end

