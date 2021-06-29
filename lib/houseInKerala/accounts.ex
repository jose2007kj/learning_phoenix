defmodule HouseInKerala.Accounts do
  @moduledoc """
    The accounr context
  """
  alias HouseInKerala.Repo
  alias HouseInKerala.Accounts.User

  def list_users do
    Repo.all(User)
  end

  def get_user!(id) do
    Repo.get!(User, id)
  end

  def get_user(id) do
    Repo.get(User, id)
  end

  def get_user_by(params) do
    Repo.get_by(User, params)
  end

  def change_user(%User{} =user) do
    User.changeset(user, %{})
  end
end