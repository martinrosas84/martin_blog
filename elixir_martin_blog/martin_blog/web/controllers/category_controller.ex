defmodule MartinBlog.CategoryController do
  use MartinBlog.Web, :controller
  alias MartinBlog.Category
  alias MartinBlog.Post

  def get_all(conn, _params) do
  	#category = Repo.get!(Category, 1)
  	categories = Repo.all(from u in Category, where: u.name == "Erlang")
  	# Me traigo todas
  	all_categories = Repo.all(Category)
  	# Me lo traigo por id:
  	category = Repo.get(Category, 1)
  	#IO.puts(Enum.at(categories, 0).name)
  	render conn, "categories.json", categories: all_categories
  end
end
