defmodule LeaseWeb.Mixfile do
  use Mix.Project

  def project do
    [app: :leaseweb,
     version: "0.1.0",
     elixir: "~> 1.5-dev",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger, :inets, :ssl]]
  end

  defp deps do
    []
  end
end
