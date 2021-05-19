defmodule HelloddWeb.HomeController do
  use Phoenix.Controller, namespace: HelloddWeb

  def index(conn, _params) do
    tweets = Hellodd.Tweet.get_all()
    conn |> json(tweets)
  end

  def show(conn, %{"id" => id}) do
    tweets = Hellodd.Tweet.get(id)
    conn |> json(tweets)
  end

  def update(conn, %{"id" => id}) do
    result =
      case Hellodd.Tweet.update(id) do
        {:ok, tweet} ->
          tweet

        {:error, :not_found} ->
          %{error: "tweet not found"}
      end

    conn |> json(result)
  end
end
