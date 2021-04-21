defmodule InmanaWeb.SuppliesView do
  use InmanaWeb, :view

  def render("index.json", %{supplies: supplies}), do: %{supplies: supplies}

  def render("create.json", %{supply: supply}) do
    %{
      message: "Supply created",
      supply: supply
    }
  end

  def render("show.json", %{supply: supply}), do: %{supply: supply}
end
