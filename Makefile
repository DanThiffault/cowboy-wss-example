PROJECT = wss_example

DEPS = cowboy lager
dep_cowboy = https://github.com/extend/cowboy.git 0.9.0
dep_lager = https://github.com/basho/lager

release: clean-release all projects
	    relx -o rel/$(PROJECT)
		 
clean-release: clean-projects
	    rm -rf rel/$(PROJECT)

include erlang.mk
