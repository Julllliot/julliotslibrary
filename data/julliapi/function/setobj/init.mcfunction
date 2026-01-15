execute as @e[type=marker,tag=so.marker.block,tag=!ignore] at @s run setblock ~ ~ ~ air
kill @e[tag=so.entity,tag=!ignore]
kill @e[type=marker,tag=so.marker,tag=!ignore]
