# Goes through every coordinate set in xyz array and spawn markers to each one
#
# @context any
# @internal

$execute if score $setobj.quantity julliapi matches 0 run return run function julliot:setobj/set/obj with storage julliapi:setobj macros.$(temp)

$data modify storage julliapi:setobj macros.$(temp).x set from storage julliapi:setobj macros.$(temp).xyz[$(index0)]
$data modify storage julliapi:setobj macros.$(temp).y set from storage julliapi:setobj macros.$(temp).xyz[$(index1)]
$data modify storage julliapi:setobj macros.$(temp).z set from storage julliapi:setobj macros.$(temp).xyz[$(index2)]

$function julliot:setobj/marker with storage julliapi:setobj macros.$(temp)

scoreboard players remove $setobj.quantity julliapi 1

scoreboard players add $setobj.x julliapi 3
scoreboard players add $setobj.y julliapi 3
scoreboard players add $setobj.z julliapi 3
$execute store result storage julliapi:setobj macros.$(temp).index0 int 1 run scoreboard players get $setobj.x julliapi
$execute store result storage julliapi:setobj macros.$(temp).index1 int 1 run scoreboard players get $setobj.y julliapi
$execute store result storage julliapi:setobj macros.$(temp).index2 int 1 run scoreboard players get $setobj.z julliapi

scoreboard players add $setobj.markerID julliapi 1
$execute store result storage julliapi:setobj macros.$(temp).marker_id int 1 run scoreboard players get $setobj.markerID julliapi

$function julliot:setobj/index with storage julliapi:setobj macros.$(temp)