defmodule MartinBlog.Router do
  use MartinBlog.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MartinBlog do
    pipe_through :browser # Use the default browser stack

    get "/", MainController, :index
    get "/categorias", CategoryController, :get_all
  end

  # Other scopes may use custom stacks.
  # scope "/api", MartinBlog do
  #   pipe_through :api
  # end
end
