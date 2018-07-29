// Initializes Dynamic Group.
["InitializePlayer",[player,true]]call BIS_fnc_dynamicGroups;
//Arsenal
[ missionNamespace, "arsenalOpened", {
    disableSerialization;
    _display = _this select 0;
    {
        ( _display displayCtrl _x ) ctrlSetText "Disabled";
        ( _display displayCtrl _x ) ctrlSetTextColor [ 1, 0, 0, 0.5 ];
        ( _display displayCtrl _x ) ctrlRemoveAllEventHandlers "buttonclick";
    }forEach [ 44146, 44147, 44151, 44150, 44148, 44149, 44346 ];
	{(_display displayCtrl _x) ctrlShow false} forEach [44151, 44150, 44146, 44147, 44148, 44149, 44346];
	_display displayAddEventHandler ["keydown", "_this select 3"];
} ] call BIS_fnc_addScriptedEventHandler;