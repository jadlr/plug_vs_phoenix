defmodule PlugApi.RouterTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts PlugApi.Router.init([])

  test "getting greet returns 200 and the greeting json" do
    conn =
      conn(:get, "/greet")
      |> PlugApi.Router.call(@opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == ~s/{"hello":"world"}/
  end

  test "posting to reverse returns 200 and reversed username" do
    conn =
      conn(:post, "/reverse", ~s/{"username": "jonas", "password": 1234}/)
      |> put_req_header("content-type", "application/json")
      |> PlugApi.Router.call(@opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == ~s/{"username":"sanoj"}/
  end
end
