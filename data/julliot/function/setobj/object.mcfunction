data merge storage julliapi:setobj {index0:0}
data merge storage julliapi:setobj {index1:1}
data merge storage julliapi:setobj {index2:2}

scoreboard players set dummy julliapi.setobjQuantity -1

$execute as @e[type=marker,nbt=$(markernbt)] at @s if entity @s[tag=julliapi.setobj.marker.block] run setblock ~ ~ ~ $(block)

$execute as @e[type=marker,nbt=$(markernbt),tag=!julliapi.setobj.marker.entity] at @s run return fail

    say entidade summonada
    $execute as @e[type=marker,nbt=$(markernbt)] at @s run summon $(entity) ~ ~1 ~ $(entitynbt)
    $execute as @e[type=marker,nbt=$(markernbt)] at @s run tag @n[type=$(entity)] add julliapi.setobj.entity