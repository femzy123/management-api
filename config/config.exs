# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :management_api,
  ecto_repos: [ManagementApi.Repo]

# Configures the endpoint
config :management_api, ManagementApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xqCtSDB9SDZYIhS7hmeeC13n7lmXZo5MM+B+IYpaMyy4wVTJ/ZVhhCKTy68v9Flo",
  render_errors: [view: ManagementApiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ManagementApi.PubSub,
  live_view: [signing_salt: "iVaYRUzp"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
