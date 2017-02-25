defmodule GuessNum.Mixfile do
  use Mix.Project

  def project do
    [app: :guess_num,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     escript: [main_module: GuessNum]]
  end
end
