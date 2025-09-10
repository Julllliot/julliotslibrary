execute if score dummy julliapi.setobjQuantity matches 0 run return run function julliot:setobj/object with storage julliapi:setobj

$data modify storage julliapi:setobj x set from storage julliapi:setobj xyz[$(index0)]
$data modify storage julliapi:setobj y set from storage julliapi:setobj xyz[$(index1)]
$data modify storage julliapi:setobj z set from storage julliapi:setobj xyz[$(index2)]

function julliot:setobj/marker with storage julliapi:setobj
#}

scoreboard players remove dummy julliapi.setobjQuantity 1
execute store result score dummy julliapi.setobjX run data get storage julliapi:setobj index0
execute store result score dummy julliapi.setobjY run data get storage julliapi:setobj index1
execute store result score dummy julliapi.setobjZ run data get storage julliapi:setobj index2

scoreboard players add dummy julliapi.setobj.marker_id 1
execute store result storage julliapi:setobj marker_id int 1 run scoreboard players get dummy julliapi.setobj.marker_id

scoreboard players add dummy julliapi.setobjX 3
scoreboard players add dummy julliapi.setobjY 3
scoreboard players add dummy julliapi.setobjZ 3

execute store result storage julliapi:setobj index0 int 1 run scoreboard players get dummy julliapi.setobjX
execute store result storage julliapi:setobj index1 int 1 run scoreboard players get dummy julliapi.setobjY
execute store result storage julliapi:setobj index2 int 1 run scoreboard players get dummy julliapi.setobjZ

function julliot:setobj/main with storage julliapi:setobj