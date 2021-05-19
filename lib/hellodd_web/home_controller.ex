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
    tweets = Hellodd.Tweet.update(id)
    conn |> json(tweets)
  end
end
