defmodule Hellodd.Repo do
  use Ecto.Repo,
    otp_app: :hellodd,
    adapter: Ecto.Adapters.Postgres
end
