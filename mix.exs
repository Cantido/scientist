defmodule Scientist.Mixfile do
  use Mix.Project

  def project do
    [
      app: :scientist,
      version: "0.2.1",
      elixir: "~> 1.13",
      deps: deps(),
      package: package(),
      name: "Scientist",
      source_url: "https://github.com/Cantido/scientist",
      description: """
      A library for carefully refactoring critical paths in your elixir application.
      """
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.34.2", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      maintainers: ["Rosa Richter"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/Cantido/scientist"},
      files: ~w(lib LICENSE mix.exs README.md)
    ]
  end
end
