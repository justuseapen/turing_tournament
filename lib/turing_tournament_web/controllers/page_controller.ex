defmodule TuringTournamentWeb.PageController do
  use TuringTournamentWeb, :controller
  alias TuringTournament.Concierge

  def index(conn, _params) do
    Concierge.check_in
    render conn, "index.html"
  end
end
