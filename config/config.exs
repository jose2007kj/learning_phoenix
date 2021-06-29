# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :houseInKerala,
  ecto_repos: [HouseInKerala.Repo]

# Configures the endpoint
config :houseInKerala, HouseInKeralaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "a/ZzdRHRq0OiI2K5G0e/PyFFh9Lopdw8ccH6WgoLm5Fg2MooeSZ1x+8XNQpHuLXj",
  render_errors: [view: HouseInKeralaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HouseInKerala.PubSub,
  live_view: [signing_salt: "WY/KbVXZ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
