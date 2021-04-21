defmodule Inmana.Supplies.Index do
  alias Inmana.{Repo, Supply}

  def call do
    case Repo.all(Supply) do
      nil -> {:error, %{result: "None supply found", status: :not_found}}
      supplies -> {:ok, supplies}
    end
  end
end
