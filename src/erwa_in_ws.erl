%%
%% Copyright (c) 2018 Bas Wegh
%%

%% @private
-module(erwa_in_ws).
-behaviour(cowboy_websocket).


-export([init/2]).
-export([websocket_init/1]).
-export([websocket_handle/2]).
-export([websocket_info/2]).
-export([terminate/3]).


init(Req, State) ->
    ct_gate_ws:init(Req, State).

websocket_init(State) ->
    ct_gate_ws:websocket_init(State).

websocket_handle(Data, State) ->
    ct_gate_ws:websocket_handle(Data, State).

websocket_info(Info, State) ->
    ct_gate_ws:websocket_info(Info, State).

terminate(Reason, PartialReq, State) ->
    ct_gate_ws:terminate(Reason, PartialReq, State).
