defmodule HouseInKeralaWeb.RentalController do
  use HouseInKeralaWeb, :controller

  def index(conn, %{"search" =>search }) do
    render(conn, "index.html", search: search)
  end
end
