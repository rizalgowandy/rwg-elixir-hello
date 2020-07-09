# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rwg_hello,
  ecto_repos: [RwgHello.Repo]

# Configures the endpoint
config :rwg_hello, RwgHelloWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "h0dR+auHhXXcUZ82Fe8XN1AiuHOG/7d6S8CeJrRh23wlmy5/jyv3SY9fwmeJyvn8",
  render_errors: [view: RwgHelloWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: RwgHello.PubSub,
  live_view: [signing_salt: "1ZdHXmnS"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
