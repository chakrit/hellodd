defmodule Hellodd.Router do
  use Phoenix.Router, namespace: HelloddWeb

  get("/", HelloddWeb.HomeController, :index)
end
