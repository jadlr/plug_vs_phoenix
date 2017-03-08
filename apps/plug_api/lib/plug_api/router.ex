defmodule PlugApi.Router do
  use Plug.Router

  import PlugApi.TestController

  plug :match
  plug Plug.Parsers, parsers: [:json],
                     pass:  ["application/json"],
                     json_decoder: Poison
  plug :dispatch

  get "/greet", do: greet(conn)

  post "/reverse", do: reverse(conn, conn.body_params)

  match _ do
    send_resp(conn, 404, "not found")
  end
end
