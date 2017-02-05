defmodule G4.PageController do
  use G4.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
