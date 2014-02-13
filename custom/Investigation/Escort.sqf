_newCiv = cursorTarget;
_dist = player distance _newCiv;
player removeAction s_player_escort;
player removeAction s_player_search;
player removeAction s_player_release;
 
// set cursortarget to variable
_cursorTarget = cursorTarget;
 
_isMan = _cursorTarget isKindOf "Man";
_isAlive = alive _cursorTarget;
 
[objNull, _newCiv, rswitchmove ,"ActsPercMstpSnonWrflDnon_interrogate02_forgoten"] call RE;
[objNull, _newCiv, rDisableuserinput,true] call RE;
player forceWalk True;
[objNull, _newCiv, rforceWalk,true] call RE;
_newCiv attachto [player,[-0.2, 0.7, 0]];
player setVariable ["Detainee", _newCiv, false];
act4 = player addaction ['<t color="#00ff00">' + "Stop Escorting" + '</t>', "Scripts\Investigation\stop_escort.sqf",_cursorTarget, 1, true, true, "", ""];
