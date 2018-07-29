//Only execute on host
if(isServer)then{
 
//List of all transformers defined within 20,000 meters of bottom-left corner of map
//[0,0,0] can be changed to an object's variable name, such as mySource
//Add more classnames to array and/or adjust radius as needed
private _powerSources=nearestObjects[
[0,0,0],
["land_spp_Transformer_F"],
20000];
 
{_x addMPEventHandler["MPKilled",{
 
//_tower is the transmitter tower that has been destroyed
private _tower=_this select 0;
 
//_nearStreetLights gathers all of the street lights within 500m of the destroyed tower
private _nearStreetLights=nearestObjects[_tower,["Lamps_base_F","PowerLines_base_F","PowerLines_Small_base_F"],1000];
 
//Disable all the lights within 1000m of the transformer
hint "Boom!";
{
_x setHit["light_1_hitpoint",0.97];
_x setHit["light_2_hitpoint",0.97];
_x setHit["light_3_hitpoint",0.97];
_x setHit["light_4_hitpoint",0.97];
}forEach _nearStreetLights;
 
}];
}forEach _powerSources;
 
//DEBUG:
hint format["Number of Transmitter Towers Found: %1",count _powerSources];
};