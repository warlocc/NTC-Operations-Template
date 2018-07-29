var_removeMagazinesDead = true;
["CAManBase", "Killed", {
	params ["_unit"];
	if (!isPlayer _unit && var_removeMagazinesDead) then {
		{_unit removeMagazine _x} count magazines _unit;
		_unit setAmmo [handgunWeapon _unit, 0];
		_unit setAmmo [primaryWeapon _unit, 0];
		_unit setAmmo [secondaryWeapon _unit, 0];
	};
}, true, [], true] call CBA_fnc_addClassEventHandler;