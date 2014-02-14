player removeAction act4;
player forceWalk false;
player getVariable ["Detainee", false];
_dist = player distance _newCiv;
_newCiv setVariable ["Detain",0,true];
player setVariable ["Detainee", nil, true];
sleep 1;

detach _newCiv;
player playActionNow "Medic";
_newCiv setVariable ["Detain",1,true];
PVDZ_ply_Arrst = _newCiv;
publicVariable "PVDZ_ply_Arrst";
_newCiv switchMove "ActsPsitMstpSnonWunaDnon_sceneNikitinDisloyalty_Sykes";
[objNull, _newCiv, rDisableuserinput,true] call RE;
