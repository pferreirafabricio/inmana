defmodule InmanaWeb.SuppliesController do
  use InmanaWeb, :controller

  alias Inmana.Supply
  alias InmanaWeb.FallbackController

  action_fallback FallbackController

  def index(conn, _params) do
    with {:ok, supplies} <- Inmana.index_supply() do
      conn
      |> put_status(:ok)
      |> render("index.json", supplies: supplies)
    end
  end

  def create(conn, params) do
    with {:ok, %Supply{} = supply} <- Inmana.create_supply(params) do
      conn
      |> put_status(:created)
      |> render("create.json", supply: supply)
    end
  end

  def show(conn, %{"id" => uuid}) do
    with {:ok, %Supply{} = supply} <- Inmana.show_supply(uuid) do
      conn
      |> put_status(:ok)
      |> render("show.json", supply: supply)
    end
  end
end
