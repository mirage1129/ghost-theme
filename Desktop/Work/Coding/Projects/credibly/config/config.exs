# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :credibly,
  ecto_repos: [Credibly.Repo]

# Configures the endpoint
config :credibly, CrediblyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "g0a2RyuY3L2myp939H1bjy7sKtZM0DoMb9LEIN9Zn+nW923Jq83FWrUsArB4i1BJ",
  render_errors: [view: CrediblyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Credibly.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
