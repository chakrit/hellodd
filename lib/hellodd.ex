defmodule Hellodd do
  use Application

  @impl true
  def start(_type, _args) do
    IO.puts("hello , world")

    children = [
      Hellodd.Endpoint,
      Hellodd.Repo
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
