%%
%% Copyright (c) 2018 Bas Wegh
%%

%% @private
-module(erwa_app).
-behaviour(application).

%% API.
-export([start/2]).
-export([stop/1]).

%% API.

start(_Type, _Args) ->
    application:set_env(ct_gate, router_if, ct_router_local),
    erwa_sup:start_link().


stop(_State) ->
	ok.
