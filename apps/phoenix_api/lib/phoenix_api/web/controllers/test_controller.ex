defmodule PhoenixApi.Web.TestController do
  use PhoenixApi.Web, :controller

  def greet(conn, _params) do
    conn
    |> put_status(200)
    |> json(%{"hello" => "world"})
  end

  def reverse(conn, %{"username" => username, "password" => _password}) do
    conn
    |> put_status(200)
    |> json(%{"username" => String.reverse(username)})
  end

end
