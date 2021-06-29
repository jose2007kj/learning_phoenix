defmodule HouseInKeralaWeb.PageController do
  use HouseInKeralaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
