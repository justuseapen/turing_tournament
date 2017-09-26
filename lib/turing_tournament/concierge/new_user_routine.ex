defmodule TuringTournament.Concierge.NewUserRoutine do
  @moduledoc """
  NewUserRoutine handles unrecognized users.
  """

  @doc """
  Greets and requests identification
  """
  def greeting do
    IO.puts "Hello there!? Who goes there!"
  end
end
