%% @author martinrosas
%% @doc @todo Add description to common.


-module(common_funcs).
-export([tokenizer/1, dets_to_ets/0]).

tokenizer(Entity_id) ->
	[_, IId] = string:tokens(Entity_id, "-"),
	IId.

dets_to_ets() ->
	case dets:open_file("db.dets") of
		{ok, Id} -> erlang:display("Abro el dets"),
					Cosa = dets:lookup(Id, cosa),
					erlang:display(Cosa),
					ets:new(db_ets, [named_table]),
					dets:to_ets(Id, db_ets),
					dets:close(Id);
		{error, Reason} -> erlang:display("Error")
	end.