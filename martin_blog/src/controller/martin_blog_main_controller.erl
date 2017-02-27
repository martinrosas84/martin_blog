%% @author martinrosas
-module(martin_blog_main_controller, [Req]).
-compile(export_all).

main('GET', []) ->
	Categories = boss_db:find(category, []),
	Posts = boss_db:find(post, [{pinned, 'equals', true}]),
	New_posts = boss_db:find(post, [], [{limit, 6}, {order_by, created}, descending]),
%% 	boss_db:find(post, [], [{limit,4},{offset,0},{order_by,timestamp}, descending]),
	{ok, [{title, "Pagina principal"}, {categories, Categories},
		  {pinned_posts, Posts}, {new_posts, New_posts}]}.
