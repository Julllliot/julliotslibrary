data merge storage julliapi:setobj {index0:0}
data merge storage julliapi:setobj {index1:1}
data merge storage julliapi:setobj {index2:2}

scoreboard players set dummy julliapi.setobjQuantity -1

$execute as @e[type=marker,nbt=$(markernbt)] at @s if entity @s[tag=julliapi.isBlock] run setblock ~ ~ ~ $(block)

$execute as @e[type=marker,nbt=$(markernbt)] at @s unless entity @s[tag=julliapi.isEntity] run return fail

    $execute as @e[type=marker,nbt=$(markernbt)] at @s run summon $(entity) ~ ~1 ~ $(entitynbt)
    $execute as @e[type=marker,nbt=$(markernbt)] at @s run tag @n[type=$(entity)] add julliapi.setobjEntity