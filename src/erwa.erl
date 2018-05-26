%%
%% Copyright (c) 2018 Bas Wegh
%%

-module(erwa).

%% API for router
-export([start_realm/1]).
-export([stop_realm/1]).


-export([get_version/0]).


get_version() ->
    ct_router:agent_identification().

start_realm(Name) when is_binary(Name) ->
    {ok, _} = cta_realm:new(Name),
    ok;
start_realm(Name) when is_list(Name) ->
    start_realm(list_to_binary(Name)).


stop_realm(Name) when is_binary(Name) ->
    cta_realm:delete(Name),
    ok;
stop_realm(Name) when is_list(Name) ->
    stop_realm(list_to_binary(Name)).
