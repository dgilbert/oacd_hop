-module(oacd_hop_rabbit).

-behaviour(gen_bunny).

-export([
	init/1,
	handle_message/2,
	handle_call/3,
	handle_cast/2,
	handle_info/2,
	terminate/2,
	code_change/3
]).

%% api
-export([
	start/1,
	start_link/1
]).

-record(state, {
	cpx :: 'undefined' | pid()
}).

%% ========================================================================
%% API
%% ========================================================================

start(Opts) ->
	gen_bunny:start(?MODULE, Opts, []).

start_link(Opts) ->
	gen_bunny:start_link(?MODULE, Opts, []).

%% ========================================================================
%% INIT
%% ========================================================================

init(Opts) ->
	{ok, #state{}}.

%% ========================================================================
%% HANDLE_CALL
%% ========================================================================

handle_message(_Msg, State) ->
	{noreply, State}.

%% ========================================================================
%% HANDLE_CALL
%% ========================================================================

handle_call(Msg, _From, State) ->
	{reply, {error, Msg}, State}.

%% ========================================================================
%% HANDLE_CAST
%% ========================================================================

handle_cast(_Msg, State) ->
	{noreply, State}.

%% ========================================================================
%% HANDLE_INFO
%% ========================================================================

handle_info(_Msg, State) ->
	{noreply, State}.

%% ========================================================================
%% TERMINATE
%% ========================================================================

terminate(_,_) -> ok.

%% ========================================================================
%% CODE_CHANGE
%% ========================================================================

code_change(_, _, State) ->
	{ok, State}.

%% ========================================================================
%% INTERNAL
%% ========================================================================

%% ========================================================================
%% TEST
%% ========================================================================
