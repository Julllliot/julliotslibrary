$execute as @e[type=marker,nbt=$(markernbt)] at @s if entity @s[tag=isBlock] run setblock ~ ~ ~ air

$kill @e[type=marker,nbt=$(markernbt)]