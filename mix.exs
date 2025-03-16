defmodule Scientist.Mixfile do
  use Mix.Project

  def project do
    [
      app: :scientist,
      version: "0.2.1",
      elixir: "~> 1.14",
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
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:ex_check, "~> 0.16.0", only: [:dev], runtime: false},
      {:credo, "~> 1.7", only: [:dev], runtime: false},
      {:dialyxir, "~> 1.4", only: [:dev], runtime: false},
      {:doctor, "~> 0.22.0", only: [:dev], runtime: false},
      {:ex_doc, "~> 0.37.3", only: [:dev], runtime: false},
      {:sobelow, "~> 0.13.0", only: [:dev], runtime: false},
      {:mix_audit, "~> 2.1", only: [:dev], runtime: false}
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
