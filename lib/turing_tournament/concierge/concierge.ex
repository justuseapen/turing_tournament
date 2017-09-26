defmodule TuringTournament.Concierge do
  alias TuringTournament.Concierge.NewUserRoutine
  def check_in do
    IO.puts "CHECKING IN"
    NewUserRoutine.greeting
  end
end
