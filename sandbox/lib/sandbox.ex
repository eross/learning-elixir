defmodule Sandbox do
  @moduledoc """
  Documentation for `Sandbox`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Sandbox.hello()
      :world

  """
  def hello do
    :world
  end

  def extract_login(%{"login" => login}), do: {:ok, login}
  def extract_login(_), do: {:error, "login missing"}

  defp extract_email(%{"email" => email}), do: {:ok, email}
  defp extract_email(_), do: {:error, "email missing"}

  defp extract_password(%{"password" => password}), do: {:ok, password}
  defp extract_password(_), do: {:error, "password missing"}

  def extract_user(user) do
    with {:ok, login} <- extract_login(user),
         {:ok, email} <- extract_email(user),
         {:ok, password} <- extract_password(user) do
      {:ok, %{login: login, email: email, password: password}}
    end
  end
end
