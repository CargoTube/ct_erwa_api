%%
%% Copyright (c) 2018 Bas Wegh
%%


%% @private
-module(erwa_sup).
-behaviour(supervisor).

%% API.
-export([start_link/0]).

%% supervisor.
-export([init/1]).

%% API.
-spec start_link() -> {ok, pid()}.
start_link() ->
  supervisor:start_link(?MODULE, []).

%% supervisor.

init([]) ->
    {ok, {{one_for_all, 0, 1}, []}}.
