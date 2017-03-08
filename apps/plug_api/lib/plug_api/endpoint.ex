defmodule PlugApi.Endpoint do
  defmacro __using__(_args) do
    quote do
      import Plug.Conn
      import PlugApi.ConnHelper

      # Add API endpoint specific stuff here
    end
  end
end
