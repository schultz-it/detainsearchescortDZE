_newCiv = cursorTarget;
_dist = player distance _newCiv;
_newCiv setVariable ["Detain",0,true];
player removeMagazine "PartGeneric";
 
sleep 1;
player playActionNow "Medic";
_newCiv setVariable ["Detain",1,true];
PVDZ_ply_Arrst = _newCiv;
publicVariable "PVDZ_ply_Arrst";
[objNull, _newCiv, rswitchmove ,"ActsPsitMstpSnonWunaDnon_sceneNikitinDisloyalty_Sykes"] call RE;
[objNull, _newCiv, rDisableuserinput,true] call RE;
