defmodule HelloddWeb.HomeController do
  use Phoenix.Controller, namespace: HelloddWeb

  def index(conn, _params) do
    conn |> json(%{alive: true})
  end
end
