defmodule PlugApi.Application do
  use Application

  def start(_type, _args) do
    children = [
      Plug.Adapters.Cowboy.child_spec(:http, PlugApi.Pipeline, [], [port: 4001])
    ]

    opts = [strategy: :one_for_one, name: PlugApi.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
