defmodule Digger.Mixfile do
  use Mix.Project

  def project do
    [
      app: :digger,
      version: "1.0.0",
      elixir: ">= 1.3.2",
      start_permanent: Mix.env == :prod,
      test_coverage: [tool: ExCoveralls],
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Bruce Park"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/treble37/digger"}
    ]
  end

  defp description do
    """
    A collection of helpers to operate on nested maps. See README for the complete list of helpers.
    The test suite is also helpful.
    """
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
     {:ex_doc, ">= 0.0.0", only: :dev},
     {:excoveralls, "~> 0.9.1", only: :test},
     {:inch_ex, "~> 1.0", only: :docs},
     {:credo, "~> 0.10.0", only: [:dev, :test]}
    ]
  end
end
