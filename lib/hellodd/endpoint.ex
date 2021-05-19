defmodule Hellodd.Endpoint do
  use Phoenix.Endpoint, otp_app: :hellodd

  plug(Hellodd.Router)
end
