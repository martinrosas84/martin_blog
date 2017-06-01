defmodule MartinBlog.MainController do
  use MartinBlog.Web, :controller
  alias MartinBlog.Category
  alias MartinBlog.Post

  def index(conn, _params) do
  	#category = Repo.get!(Category, 1)
  	#categories = Repo.all(from u in Category, where: u.name == "Erlang")
  	# Me traigo todas
  	all_categories = Repo.all(Category)
    #all_categories = spawn(fn -> Repo.all(Category) end)
    #q_1 = from post in Post, where: post.pinned == true
    #pinned_posts = spawn(fn -> Repo.all(from post in Post, where: post.pinned == true) end)
    pinned_posts = Repo.all(from post in Post, where: post.pinned == true)
    #n_p = Repo.all(Post |> limit(6) |> order_by(desc: :created))
    new_posts = Repo.all(from p in Post, limit: 6, order_by: [desc: p.created])
    #q_2 = from p in Post, limit: 6, order_by: [desc: p.created]
    #new_posts = spawn(fn -> Repo.all(from p in Post, limit: 6, order_by: [desc: p.created]) end)
    render conn, "index.html"
  end
end
