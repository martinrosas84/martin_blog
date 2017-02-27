%% @author martinrosas
%% @doc @todo Add description to martin_blog_posts_controller.

-module(martin_blog_posts_controller, [Req]).
-compile(export_all).

category('GET', [Category_id]) ->
%% 	CUALQUIERA!!!
	IId = common_funcs:tokenizer(Category_id),
	Category = boss_db:find(Category_id),
	Categories = boss_db:find(category, []),
	Posts_resp = case boss_db:find(post, [{category_id, 'equals', IId}]) of
					{error, Error} -> [];
					Posts -> Posts
				end,
	{ok, [{categories, Categories}, {posts, Posts_resp}, {category, Category}]}.
%% 	case boss_db:find(post, [{category_id, 'equals', Category_id}]) of
%% 		{error, Error} -> {ok, [{categories, Categories}, {posts, []}]};
%% 		Posts -> {ok, [{categories, Categories}, {posts, Posts}]}
%% 	end.

view('GET', [Post_id]) ->
	Categories = boss_db:find(category, []),
	Post_resp = try case boss_db:find(Post_id) of
					{error, Error} -> [];
					Post -> Post
				end
			catch
				_:_ -> []
			end,
	erlang:display("entre acaaa"),
	{ok, [{categories, Categories}, {post, Post_resp}]}.
