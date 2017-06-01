defmodule MartinBlog.PostTest do
  use MartinBlog.ModelCase

  alias MartinBlog.Post

  @valid_attrs %{content: "some content", created: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010}, introduction: "some content", pinned: true, title: "some content", updated: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010}}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Post.changeset(%Post{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Post.changeset(%Post{}, @invalid_attrs)
    refute changeset.valid?
  end
end
