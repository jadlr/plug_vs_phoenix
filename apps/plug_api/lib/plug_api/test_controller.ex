defmodule PlugApi.TestController do
  use PlugApi.Endpoint

  def greet(conn) do
    send_json(conn, 200, %{"hello" => "world"})
  end

  def reverse(conn, %{"username" => username, "password" => _password}) do
    send_json(conn, 200, %{"username" => String.reverse(username)})
  end

end
