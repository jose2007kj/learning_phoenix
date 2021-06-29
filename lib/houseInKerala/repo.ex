defmodule HouseInKerala.Repo do
  use Ecto.Repo,
    otp_app: :houseInKerala,
    adapter: Ecto.Adapters.Postgres
end
