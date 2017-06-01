defmodule MartinBlog.CategoryView do
  use MartinBlog.Web, :view

  def render("category.json", %{category: category}) do
    %{name: category.name, id: category.id}
  end

  def render("categories.json", %{categories: categories}) do
    %{data: render_many(categories, MartinBlog.CategoryView, "category.json")}
  end
end