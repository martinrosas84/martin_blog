%% @author martinrosas
%% @doc @todo Add description to post.

-module(post, [Id::serial(), Title, Content, Introduction, Category_id, Pinned, Created, Updated]).
-compile(export_all).