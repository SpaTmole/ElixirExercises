defmodule Mylist do
  def len([]), do: 0
  def len([_head|tail]), do: 1 + len(tail)
  def map(_fun, []), do: []
  def map(fun, [head|tail]), do: [fun.(head)|map(fun, tail)]
  def sum(lst), do: _sum(lst, 0)
  defp _sum([], count), do: count
  defp _sum([head|tail], count), do: _sum(tail, count + head)
  def reduce(_fun, init, []), do: init
  def reduce(fun, init, [head|tail]) do
    reduce(fun, fun.(init, head), tail)
  end
  def mapsum(fun, lst), do: sum(map(fun, lst))
  def max(lst), do: reduce(&(max(&1, &2)), hd(lst), lst)
  def min(lst), do: reduce(&(min(&1, &2)), hd(lst), lst)
  def caesar(lst, n), do: map(&(rem(&1 + n - 97, 26) + 97), lst)
  def swap([a,b|tail]), do: [b,a|swap(tail)]
  def swap([a]), do: [a]
  def swap([]), do: []
end
