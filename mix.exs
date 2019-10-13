defmodule Bunq.MixProject do
  use Mix.Project

  def project do
    [
      app: :bunq,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:rsa_ex],
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tesla, "~> 1.2.0"},
      {:hackney, "~> 1.14.0"},
      {:poison, "~> 3.0"},
      {:jason, ">= 1.0.0"},
      {:rsa_ex, "~> 0.4"},
      {:uuid, "~> 1.1"},
      {:ecto, "~> 3.2.2"}
    ]
  end
end
