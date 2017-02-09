defmodule LeaseWeb.Mixfile do
  use Mix.Project

  def project do
    [
     app: :leaseweb,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     description: description,
     package: package
   ]
  end

  def application do
    [extra_applications: [:logger, :inets, :ssl]]
  end

  defp deps do
    []
  end

  defp description do
    """
    Elixir Wrapper for Leaseweb infrastructure.
    """
  end

  defp package do
    [
     name: :leaseweb,
     files: ["lib", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     maintainers: ["Mahesh Reddy","Anwesh Reddy","John Ankanna"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/ahamtech/elixir-leaseweb"}]
  end
end
