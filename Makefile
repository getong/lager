.PHONY: all compile deps clean distclean test check_plt build_plt dialyzer \
	    cleanplt

all: deps compile

compile: deps
	rebar3 compile

deps:
	rebar3 deps

clean:
	rebar3 clean

distclean: clean
	rebar3 clean

DIALYZER_APPS = kernel stdlib erts sasl eunit syntax_tools compiler crypto \
				common_test

include tools.mk
