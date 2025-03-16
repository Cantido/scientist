defmodule Scientist.Default do
  @moduledoc """
  The default Scientist experiment.

  This experiment module will be used when an experiment is created without a callback
  module specified. It has trivial implementations of the required callbacks for
  `Scientist.Experiment`.

  This experiment is always enabled and its results are never published.
  """
  use Scientist.Experiment

  @impl Scientist.Experiment
  def enabled?, do: true

  @impl Scientist.Experiment
  def publish(_), do: :ok
end
