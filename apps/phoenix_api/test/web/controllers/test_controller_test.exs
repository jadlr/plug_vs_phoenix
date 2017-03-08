defmodule PhoenixApi.TestControllerTest do
  use PhoenixApi.Web.ConnCase

  test "getting greet returns 200 and the greeting json" do
    conn = get build_conn(), "/greet"

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == ~s/{"hello":"world"}/
  end

  test "posting to reverse returns 200 and reversed username" do
    conn =
      build_conn()
      |> put_req_header("content-type", "application/json")
      |> post("/reverse", ~s/{"username": "jonas", "password": 1234}/)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == ~s/{"username":"sanoj"}/
  end
end
