import Config

config :phoenix, :json_library, Jason

config :hellodd, Hellodd.Endpoint,
  url: [host: "0.0.0.0"],
  http: [port: 4000],
  server: true
