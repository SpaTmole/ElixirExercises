defmodule GCD do
  def of(a, 0), do: a
  def of(a, b), do: of(b, rem(a, b))
end
