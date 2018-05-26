%%
%% Copyright (c) 2018 Bas Wegh
%%

%% @private
-module(erwa_in_tcp).

-behaviour(gen_server).
-behaviour(ranch_protocol).


%% for ranch_protocol
-export([start_link/4]).

%% gen_server.
-export([init/1]).
-export([handle_call/3]).
-export([handle_cast/2]).
-export([handle_info/2]).
-export([code_change/3]).
-export([terminate/2]).


start_link(Ref, Socket, Transport, Opts) ->
    ct_gate_tcp:start_link(Ref, Socket, Transport, Opts).

init(Params) ->
    ct_gate_tcp:init(Params).

handle_info(Info, State) ->
    ct_gate_tcp:handle_info(Info, State).

handle_call(From, Message, State) ->
    ct_gate_tcp:handle_call(From, Message, State).

handle_cast(Cast, State) ->
    ct_gate_tcp:handle_cast(Cast, State).

terminate(Reason, State) ->
    ct_gate_tcp:terminate(Reason, State).

code_change(OldVsn, State, Extra) ->
    ct_gate_tcp:code_change(OldVsn, State, Extra).
