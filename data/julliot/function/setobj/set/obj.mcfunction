data modify storage julliapi:setobj index0 set value 0
data modify storage julliapi:setobj index1 set value 1
data modify storage julliapi:setobj index2 set value 2
data modify storage julliapi:setobj marker_id set value 0

scoreboard players set dummy julliapi.setobjQuantity -1
scoreboard players set dummy julliapi.setobj.marker_id 0

$execute as @e[type=marker,nbt=$(markernbt),tag=so.marker.block] at @s run function julliot:setobj/set/block with storage julliapi:setobj
$execute as @e[type=marker,nbt=$(markernbt),tag=so.marker.entity] at @s run function julliot:setobj/set/entity with storage julliapi:setobj