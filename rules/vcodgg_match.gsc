cvars()
{
	// Use match ruleset. But overwrite them below.
	rules\match::cvars();

	// LABEL
	game["p_istr_label_left"] = &"vCoD.gg Match";

	// MATCH
	setCvar("scr_sd_scorelimit", 0);
	setCvar("scr_sd_roundlimit", 20);

	setCvar("p_msg_1", "Welcome to vCoD.gg match.");
	setCvar("p_msg_2", "I wish you the very best with killing.");
	setCvar("p_msg_3", "Don't whine too much about this mod.");
	setCvar("p_msg_4", "And be happy.");

	// STRAT
	setCvar("p_strat", true);
	setCvar("scr_sd_graceperiod", 3);

	// WEAPONS
	setCvar("p_weapons", "mosin_nagant kar98k");
	setCvar("p_allow_pistol", false);
	setCvar("p_allow_nades", false);
	setCvar("p_allow_MG42", false);
	setCvar("scr_allow_bar", false);
	setCvar("scr_allow_bren", false);
	setCvar("scr_allow_enfield", false);
	setCvar("scr_allow_fg42", false);
	setCvar("scr_allow_kar98k", false);
	setCvar("scr_allow_kar98ksniper", false);
	setCvar("scr_allow_m1carbine", false);
	setCvar("scr_allow_m1garand", false);
	setCvar("scr_allow_mp40", false);
	setCvar("scr_allow_mp44", false);
	setCvar("scr_allow_nagant", false);
	setCvar("scr_allow_nagantsniper", false);
	setCvar("scr_allow_panzerfaust", false);
	setCvar("scr_allow_ppsh", false);
	setCvar("scr_allow_springfield", false);
	setCvar("scr_allow_sten", false);
	setCvar("scr_allow_thompson", false);

	// TIMEOUTS
	setcvar("g_timeoutsAllowed", true);
	setcvar("g_timeoutLength",  300000);
	setcvar("g_timeoutRecovery", 10000);
	setcvar("g_timeoutBank",    600000);

	// STOCK
	setCvar("scr_teambalance", false);
}