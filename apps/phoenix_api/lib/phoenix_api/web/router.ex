defmodule PhoenixApi.Web.Router do
  use PhoenixApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixApi.Web do
    pipe_through :api

    get "/greet",    TestController, :greet
    post "/reverse", TestController, :reverse
  end
end
