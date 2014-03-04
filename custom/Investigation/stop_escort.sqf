player removeAction act4;
player forceWalk false;
_newCiv = Detainee;
_dist = player distance _newCiv;
_newCiv setVariable ["Detain",0,true];
sleep 1;

detach _newCiv;
player playActionNow "Medic";
_newCiv setVariable ["Detain",1,true];
Detainee = nil;
PVDZ_ply_Arrst = _newCiv;
publicVariable "PVDZ_ply_Arrst";
[objNull, _newCiv, rswitchmove ,"ActsPsitMstpSnonWunaDnon_sceneNikitinDisloyalty_Sykes"] call RE;
[objNull, _newCiv, rDisableuserinput,true] call RE;
