# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bug_project,
  ecto_repos: [BugProject.Repo]

# Configures the endpoint
config :bug_project, BugProjectWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jjxpf1/kpeI2jSy/mXFZIt0z+bYM/6cu4JIXP/TQGm8VyDPPpSine+vEV6z5Yoxi",
  render_errors: [view: BugProjectWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BugProject.PubSub,
  live_view: [signing_salt: "ZFELXea3"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
