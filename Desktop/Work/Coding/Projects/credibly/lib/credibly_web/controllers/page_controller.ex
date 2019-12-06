defmodule CrediblyWeb.PageController do
  use CrediblyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
