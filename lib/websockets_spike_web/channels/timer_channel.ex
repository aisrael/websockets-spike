defmodule AppWeb.TimerChannel do
  use Phoenix.Channel

  require Logger

  def join("timer:update", msg, socket) do
    Logger.debug(fn -> "join(timer:update, #{inspect(msg)}, #{inspect(socket)})" end)
    {:ok, socket}
  end

  def handle_in("new_time", msg, socket) do
    Logger.debug(fn -> ~s[handle_in("new_time", #{inspect(msg)}, #{inspect(socket)})] end)
    push(socket, "new_time", msg)
    {:noreply, socket}
  end
end
