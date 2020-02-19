PK3=zzz_svr_wrs.pk3
BIN_DIR ?= ../out

$(PK3): maps/MP/gametypes/*.gsc
	git archive --format=zip --worktree-attributes -o $(PK3) $$(git stash create || echo HEAD)

clean:
	rm -f $(PK3)
	rm -f ~/.callofduty/main/$(PK3)
	rm -f ~/.callofduty/main/*.cfg

install: clean $(PK3)
	cp -f $(PK3) ~/.callofduty/main/
	cp -f *.cfg ~/.callofduty/main/

run: install
	$(BIN_DIR)/cod_lnxded +set fs_basepath $(BIN_DIR) +set dedicated 2 +set logfile 2 +set g_logSync 3 +exec config_srv_base +exec config_srv_sd +set sv_hostname WALRUS +set rconPassword a
