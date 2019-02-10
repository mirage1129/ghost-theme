# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :imlost,
  ecto_repos: [Imlost.Repo]

# Configures the endpoint
config :imlost, ImlostWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ErLKtA6BJRSbUwBBC/UqK2Zhp94zWG97dXWYBZXYE9gcss+KStlRdmlousJBI0gq",
  render_errors: [view: ImlostWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Imlost.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
