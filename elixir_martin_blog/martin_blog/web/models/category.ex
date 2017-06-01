defmodule MartinBlog.Category do
  use MartinBlog.Web, :model

  schema "categories" do
    field :name, :string
    field :created, Ecto.DateTime
    field :updated, Ecto.DateTime
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :created, :updated])
    |> validate_required([:name, :created])
  end
end
