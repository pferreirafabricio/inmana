defmodule Inmana.RestaurantTest do
  use Inmana.DataCase, async: true

  alias Ecto.Changeset
  alias Inmana.Restaurant

  describe "changeset/1" do
    test "when all params are valid, returns a valid changeset" do
      params = %{name: "Três Irmãos", email: "tresirmaos@gmail.com"}

      response = Restaurant.changeset(params)

      assert %Changeset{
               changes: %{email: "tresirmaos@gmail.com", name: "Três Irmãos"},
               valid?: true
             } = response
    end

    test "when the are invalid params, returns an invalid changeset" do
      params = %{name: "T", email: ""}

      expected_response = %{
        email: ["can't be blank"],
        name: ["should be at least 2 character(s)"]
      }

      response = Restaurant.changeset(params)

      assert %Changeset{valid?: false} = response

      assert errors_on(response) == expected_response
    end
  end
end
