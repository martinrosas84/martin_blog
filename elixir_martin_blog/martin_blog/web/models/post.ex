defmodule MartinBlog.Post do
  use MartinBlog.Web, :model

  schema "posts" do
    field :title, :string
    field :content, :string
    field :introduction, :string
    field :pinned, :boolean, default: false
    field :created, Ecto.DateTime
    field :updated, Ecto.DateTime
    belongs_to :category, MartinBlog.Category
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :content, :introduction, :pinned, :created, :updated])
    |> validate_required([:title, :content, :introduction, :created])
  end
end
