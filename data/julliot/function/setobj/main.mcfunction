execute if score $setobj.quantity julliapi matches ..-1 run return 0
execute if score $setobj.quantity julliapi matches 0 run return run function julliot:setobj/set/obj with storage julliapi:setobj

$data modify storage julliapi:setobj x set from storage julliapi:setobj xyz[$(index0)]
$data modify storage julliapi:setobj y set from storage julliapi:setobj xyz[$(index1)]
$data modify storage julliapi:setobj z set from storage julliapi:setobj xyz[$(index2)]

function julliot:setobj/marker with storage julliapi:setobj

scoreboard players remove $setobj.quantity julliapi 1
execute store result score $setobj.x julliapi run data get storage julliapi:setobj index0
execute store result score $setobj.y julliapi run data get storage julliapi:setobj index1
execute store result score $setobj.z julliapi run data get storage julliapi:setobj index2

scoreboard players add $setobj.x julliapi 3
scoreboard players add $setobj.y julliapi 3
scoreboard players add $setobj.z julliapi 3

execute store result storage julliapi:setobj index0 int 1 run scoreboard players get $setobj.x julliapi
execute store result storage julliapi:setobj index1 int 1 run scoreboard players get $setobj.y julliapi
execute store result storage julliapi:setobj index2 int 1 run scoreboard players get $setobj.z julliapi

scoreboard players add $setobj.markerID julliapi 1
execute store result storage julliapi:setobj marker_id int 1 run scoreboard players get $setobj.markerID julliapi

function julliot:setobj/main with storage julliapi:setobj