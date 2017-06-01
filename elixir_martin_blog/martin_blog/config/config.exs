# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :martin_blog,
  ecto_repos: [MartinBlog.Repo]

# Configures the endpoint
config :martin_blog, MartinBlog.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iMA2TcYmlX+qMYbvurmRhynARUNJmgnBEr7jhJR4xztHeZuObKRqGrUKy+sNvq80",
  render_errors: [view: MartinBlog.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MartinBlog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
