defmodule Arity do
  @moduledoc """
  Documentation for Arity.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Arity.hello()
      :world

  """
  def hello do
    :world
  end

  def fun(a, b \\ 1, c, d \\ 2) do
    a + b + c + d 
  end
end
