%% @author martinrosas
-module(martin_blog_main_controller, [Req]).
-compile(export_all).

main('GET', []) ->
	Categories = boss_db:find(category, []),
	Posts = boss_db:find(post, [{pinned, 'equals', true}]),
	{ok, [{title, "Pagina principal"}, {categories, Categories}, {posts, Posts}]}.
