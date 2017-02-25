# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :kimia,
  ecto_repos: [Kimia.Repo]

# Configures the endpoint
config :kimia, Kimia.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "c1IpYOkNZ+LhvMm8RwRUT9Y1VN3VblwyPIOnsZX4LxsVpK4vCW4+umM2z+XZScbx",
  render_errors: [view: Kimia.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Kimia.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :addict,
  secret_key: "2432622431322454546b4d514a62783036553735543768467356505175",
  extra_validation: fn ({valid, errors}, user_params) -> {valid, errors} end, # define extra validation here
  user_schema: Kimia.User,
  repo: Kimia.Repo,
  from_email: "no-reply@example.com", # CHANGE THIS
mail_service: nil