$execute as @e[type=marker,nbt=$(markernbt)] at @s if entity @s[tag=isBlock] run setblock ~ ~ ~ $(block)

$execute as @e[type=marker,nbt=$(markernbt)] at @s unless entity @s[tag=isEntity] run return fail

    $execute as @e[type=marker,nbt=$(markernbt)] at @s run summon $(entity) ~ ~1 ~ $(entitynbt)
    $execute as @e[type=marker,nbt=$(markernbt)] at @s run tag @e[type=$(entity),sort=nearest,limit=1] add setobjEntity