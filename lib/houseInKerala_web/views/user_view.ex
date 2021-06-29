defmodule HouseInKeralaWeb.UserView do
  use HouseInKeralaWeb, :view

  alias HouseInKerala.Accounts

  def first_name(%Accounts.User{name: name}) do
    name
    |> String.split(" ")
    |>Enum.at(0)
  end
end
