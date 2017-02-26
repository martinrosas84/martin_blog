%% @author martinrosas
%% @doc @todo Add description to martin_blog_posts_controller.

-module(martin_blog_posts_controller, [Req]).
-compile(export_all).

category('GET', [Category_id]) ->
	Categories = boss_db:find(category, []),
	erlang:display("entreeeeee"),
	Posts_resp = case boss_db:find(post, [{category_id, 'equals', Category_id}]) of
					{error, Error} -> [];
					Posts -> Posts
				end,
	{ok, [{categories, Categories}, {posts, Posts_resp}]}.
%% 	case boss_db:find(post, [{category_id, 'equals', Category_id}]) of
%% 		{error, Error} -> {ok, [{categories, Categories}, {posts, []}]};
%% 		Posts -> {ok, [{categories, Categories}, {posts, Posts}]}
%% 	end.
