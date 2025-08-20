data merge storage julliapi:setobj {index0:0}
data merge storage julliapi:setobj {index1:1}
data merge storage julliapi:setobj {index2:2}

scoreboard players set dummy julliapi.setobjQuantity -1

execute as @e[type=marker,tag=julliapi.setobj.marker.block] at @s run setblock ~ ~ ~ air

kill @e[tag=julliapi.setobj.entity]
kill @e[type=marker,tag=julliapi.setobj.marker]