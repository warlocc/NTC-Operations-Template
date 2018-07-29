//Disables Artillery Computer
enableEngineArtillery false;

//Respawn Loadouts
if (hasInterface) then {
    [] spawn {
        waitUntil {alive player};
        player setVariable ["loadout",getUnitLoadout player,false];
        player addEventHandler ["Respawn", {
            player setUnitLoadout (player getVariable "loadout");
        }];
    };
};
//Lights linked to solar transformers
if(isServer)then{execVM "Scripts\lamp.sqf";};

CHVD_allowNoGrass = false; // Set 'false' if you want to disable "None" option for terrain (default: true)
CHVD_maxView = 7000; // Set maximum view distance (default: 12000)
CHVD_maxObj = 5000; // Set maximimum object view distance (default: 12000)