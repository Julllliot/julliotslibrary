# A Minecraft datapack library to simplify map making

This datapack is made for 1.21.7 - 1.21.8. However, if there's a demand, I can port it to newer or older versions.

FIRSTESTLY, you'll need to setup all scoreboards and storages with the function julliot:_main/_setup for it to work.  
To uninstall, use julliot:_main/_uninstall and then you can delete the zip in peace.

In panic situations (whenever setobj spawns thousands of entities uncontrollably), use /function julliot:panic to kill ALL entities with following tags: so, so.marker, so.marker.entity, so.marker.block and so.entity.

## The tools

### Setobj

Setobj can spawn n number of markers within an array of respective coordinates "xyz" and set/summon a single type of block/entity in each spawned marker.

Behaviour:
 
- Every marker spawned with Setobj will be tagged "so.marker" and a custom id: so.marker_id0, so.marker_id1, etc.
- Every entity spawned with Setobj will be tagged "so.entity".
- It always prefers to summon the entity one block above the marker's position and the block at the exact position.
- Only one entity/block per marker.

**This tool needs setup for it to work.**  
1. All arguments must be stored in storage julliapi:setobj.  
  The necessary arguments must be setup before calling the main function.  
  The dummy's scoreboard julliapi.setobjQuantity must be setup before calling the main function. If you don't, the Setobj will spawn thousands of markers (I will fix this soon). Use /trigger julliapi.panic if needed.

2. julliapi.setobjQuantity : means the desired number of markers. Must be exactly the number of coordinates put in xyz argument.

3. Then you call the main function: julliot:setobj/main with storage julliapi:setobj

Arguments to merge in julliapi:setobj :
- xyz : Necessary. the coordinates must be put in order inside the array, e.g.: [1,2,3, 4,5,6 ,7,8,9]
- markernbt : Necessary. Must be in nbt structure, e.g.: {Tags:[\"foo\",\"bar\",\"so\"]}  
- block : Not necessary. e.g.: "acacia_planks"
- entity : Not necessary. e.g.: "bat"
- entitynbt : Not necessary. Must be in nbt structure.

   IMPORTANT NOTES:  
You need to specify what type of marker it is in his tags: use "so.marker.block" for to setblock and/or "so.marker.entity" to summon.  
It is advised to add your custom tag and the tag "so" for generic identification of a marker/entity spawned by Setobj (useful in panic situations).

 That's it!  
 Full example:

 ```
 data merge storage julliapi:setobj {xyz:[16,3,-3, 7,3,-2, 3,3,0, 9,3,8, 3,3,11, -3,3,7, -1,3,16, -3,3,24, 4,3,28], markernbt:"{Tags:[\"so\",\"candle\",\"so.marker.block\",\"so.marker.entity\"]}",block:"candle[lit=true]",entity:"bat",entitynbt:"{Tags:["so","batman"],NoAI:1b}"}
scoreboard players set dummy julliapi.setobjQuantity 9
function julliot:setobj/main with storage julliapi:setobj
 ```

### Chk_light_lvl

To return the value of the light level of the target entity's julliapi.lightLvl scoreboard. You can call this function as frequently as you like with schedule function!

Execute the main function julliot:chk_light_lvl/main as the desired target entity.

Example:
```
execute as @a[tag=foo] run julliot:chk_light_lvl/main
```
