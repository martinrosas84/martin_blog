%% @author martinrosas
%% @doc @todo Add description to martin_blog_db_controller.

-module(martin_blog_db_controller, [Req]).
-compile(export_all).

view('GET', []) ->
	case ets:info(db_ets) of
		undefined -> common_funcs:dets_to_ets();
		_ -> erlang:display("Ya existe y abro el ets"),
			  Cosa = ets:lookup(db_ets, cosa),
			  erlang:display(Cosa)
	end,
	{output, "ver db"}.
