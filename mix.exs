defmodule Hellodd.MixProject do
  use Mix.Project

  def project do
    [
      app: :hellodd,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Hellodd, []}
    ]
  end

  defp deps do
    [
      {:jason, "~> 1.2.2"},
      {:phoenix, "~> 1.5.9"},
      {:plug_cowboy, "~> 2.5"},
      {:ecto, "~> 3.6.1"},
      {:phoenix_ecto, "~> 4.1"},
      {:ecto_sql, "~> 3.4"},
      {:postgrex, ">= 0.0.0"},
    ]
  end
end
