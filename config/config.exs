# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :twit,
  ecto_repos: [Twit.Repo]

# Configures the endpoint
config :twit, TwitWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yXlsyDw8pflM1ATDLDQcjka9VU1s18nRIDaktc4jBeLQA1QhZvsmSzso7IBitDlj",
  render_errors: [view: TwitWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Twit.PubSub,
  live_view: [signing_salt: "4KfIzMbW"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
