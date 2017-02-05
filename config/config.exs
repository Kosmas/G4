# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :g4,
  ecto_repos: [G4.Repo]

# Configures the endpoint
config :g4, G4.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fkKNJCdygsLSSVjimVD0NYDBEFHw66euUpyfNYYXljKhwIHHZUW2WOcINik16PTq",
  render_errors: [view: G4.ErrorView, accepts: ~w(html json)],
  pubsub: [name: G4.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
