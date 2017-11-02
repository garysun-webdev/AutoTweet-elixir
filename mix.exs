defmodule AutoTweet.Mixfile do
  use Mix.Project

  def project do
    [
      app: :auto_tweet,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :quantum, :extwitter],
      mod: {AutoTweet.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 0.8.8"},
      {:quantum, ">= 1.9.3"},
      {:extwitter, "~> 0.9.0"},
      {:oauth, github: "tim/erlang-oauth"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
