defmodule Inmana do
  alias Inmana.Restaurants.Create, as: RestaurantCreate
  alias Inmana.Supplies.Create, as: SupplyCreate
  alias Inmana.Supplies.Index, as: SupplyIndex
  alias Inmana.Supplies.Show, as: SupplyShow

  defdelegate create_restaurant(params), to: RestaurantCreate, as: :call

  defdelegate create_supply(params), to: SupplyCreate, as: :call
  defdelegate show_supply(uuid), to: SupplyShow, as: :call
  defdelegate index_supply(), to: SupplyIndex, as: :call
end
