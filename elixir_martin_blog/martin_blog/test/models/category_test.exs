defmodule MartinBlog.CategoryTest do
  use MartinBlog.ModelCase

  alias MartinBlog.Category

  @valid_attrs %{created: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010}, name: "some content", updated: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010}}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Category.changeset(%Category{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Category.changeset(%Category{}, @invalid_attrs)
    refute changeset.valid?
  end
end
