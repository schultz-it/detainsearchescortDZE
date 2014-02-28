if (isNil "Detainee") then {
	_newCiv = Detainee;
	_dist = player distance _newCiv;
	player removeAction s_player_escort;
	player removeAction s_player_search;
	player removeAction s_player_release;
	 
	// set cursortarget to variable
	_cursorTarget = cursorTarget;
	 
	_isMan = _cursorTarget isKindOf "Man";
	_isAlive = alive _cursorTarget;
	 
	_newCiv switchMove "ActsPercMstpSnonWrflDnon_interrogate02_forgoten";
	[objNull, _newCiv, rDisableuserinput,true] call RE;
	player forceWalk True;
	[objNull, _newCiv, rforceWalk,true] call RE;
	_newCiv attachto [player,[-0.2, 0.7, 0]];
	act4 = player addaction ['<t color="#00ff00">' + "Stop Escorting" + '</t>', "Scripts\Investigation\stop_escort.sqf",_cursorTarget, 1, true, true, "", ""];
} else {
titleText ["You are already detaining a player!", "PLAIN"];
};