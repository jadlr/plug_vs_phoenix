defmodule PlugApi.Pipeline do
  use Plug.Builder

  # define plug the pipeline here
  plug Plug.RequestId
  plug Plug.Logger

  plug PlugApi.Router
end
