# ## iterates every coordinate set in xyz array and spawn markers to each one
#
# @context any
# @within julliapi:setobj/main
# @using storage julliapi:setobj temp.$(temp)
# @internal

$execute if score $setobj.quantity julliapi matches 0 run return run function julliapi:setobj/set/obj with storage julliapi:setobj temp.$(temp)

$data modify storage julliapi:setobj temp.$(temp).x set from storage julliapi:setobj temp.$(temp).xyz[$(index0)]
$data modify storage julliapi:setobj temp.$(temp).y set from storage julliapi:setobj temp.$(temp).xyz[$(index1)]
$data modify storage julliapi:setobj temp.$(temp).z set from storage julliapi:setobj temp.$(temp).xyz[$(index2)]

$function julliapi:setobj/marker with storage julliapi:setobj temp.$(temp)

scoreboard players add $setobj.x julliapi 3
scoreboard players add $setobj.y julliapi 3
scoreboard players add $setobj.z julliapi 3
$execute store result storage julliapi:setobj temp.$(temp).index0 int 1 run scoreboard players get $setobj.x julliapi
$execute store result storage julliapi:setobj temp.$(temp).index1 int 1 run scoreboard players get $setobj.y julliapi
$execute store result storage julliapi:setobj temp.$(temp).index2 int 1 run scoreboard players get $setobj.z julliapi
scoreboard players add $setobj.markerID julliapi 1
$execute store result storage julliapi:setobj temp.$(temp).marker_id int 1 run scoreboard players get $setobj.markerID julliapi

scoreboard players remove $setobj.quantity julliapi 1
$function julliapi:setobj/iterate with storage julliapi:setobj temp.$(temp)
