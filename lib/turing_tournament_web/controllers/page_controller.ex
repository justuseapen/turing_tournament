defmodule TuringTournamentWeb.PageController do
  use TuringTournamentWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
