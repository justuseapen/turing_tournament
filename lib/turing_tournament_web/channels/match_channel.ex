defmodule TuringTournamentWeb.MatchChannel do
  use Phoenix.Channel

  def join("match:lobby", _message, socket) do
    {:ok, socket}
  end
  def join("match:" <> _private_match_id, _params, _socket) do
    {:error, %{reason: "unauthorized"}}
  end

  def handle_in("new_msg", %{"body" => body}, socket) do
    broadcast! socket, "new_msg", %{body: body}
    {:noreply, socket}
  end

  def handle_out("new_msg", payload, socket) do
    push socket, "new_msg", payload
    {:noreply, socket}
  end
end
