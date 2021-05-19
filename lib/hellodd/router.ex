defmodule Hellodd.Router do
  use Phoenix.Router, namespace: HelloddWeb

  # get("/", HelloddWeb.HomeController, :index)
  get("/tweets", HelloddWeb.HomeController, :index)
  get("/tweets/:id", HelloddWeb.HomeController, :show)
  put("/tweets/:id", HelloddWeb.HomeController, :update)



end
