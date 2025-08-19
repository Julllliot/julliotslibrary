data merge storage julli:setobj {index0:0}
data merge storage julli:setobj {index1:1}
data merge storage julli:setobj {index2:2}

scoreboard players set dummy setobjQuantity -1

execute as @e[type=marker,tag=setobjMarker] at @s if entity @s[tag=isBlock] run setblock ~ ~ ~ air

kill @e[tag=setobjEntity]
kill @e[type=marker,tag=setobjMarker]