defmodule RwgHelloWeb.PageController do
  use RwgHelloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
