_newCiv = Detainee;
 
player playActionNow "Medic";
sleep 15;
player forceWalk False;
[objNull, _newCiv, rswitchmove ,""] call RE;
_newCiv setVariable ["Detain",0,true];
PVDZ_ply_Arrst = _newCiv;
publicVariable "PVDZ_ply_Arrst";
Detainee = nil;
