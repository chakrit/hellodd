defmodule Hellodd.Router do
  require Logger

  use Phoenix.Router, namespace: HelloddWeb
  use Plug.ErrorHandler

  get("/tweets", HelloddWeb.HomeController, :index)
  get("/tweets/:id", HelloddWeb.HomeController, :show)
  put("/tweets/:id", HelloddWeb.HomeController, :update)

  defp handle_errors(conn, %{reason: %Phoenix.Router.NoRouteError{}}) do
    conn |> json(%{error: :not_found}) |> halt()
  end

  defp handle_errors(conn, err) do
    Logger.error("unknown error: #{Kernel.inspect(err)}")
    conn |> json(%{error: :unknown}) |> halt()
  end
end
