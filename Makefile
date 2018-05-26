REBAR = $(shell pwd)/rebar3

.PHONY: all compile

all: compile

compile:
	$(REBAR) compile
