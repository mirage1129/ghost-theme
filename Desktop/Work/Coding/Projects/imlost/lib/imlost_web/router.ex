defmodule ImlostWeb.Router do
  use ImlostWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ImlostWeb do
    pipe_through :api
  end
end
