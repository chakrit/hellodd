import Config

config :phoenix, :json_library, Jason

config :hellodd, Hellodd.Endpoint,
  url: [host: "0.0.0.0"],
  http: [port: 4000],
  server: true

config :hellodd, Hellodd.Repo,
  url: "postgres://0.0.0.0:5432/ecto_simple?sslmode=disable"

config :hellodd,
  ecto_repos: [
    Hellodd.Repo
  ]
