execute as @e[type=marker,tag=so.marker.block] at @s run setblock ~ ~ ~ air

kill @e[tag=so.entity]
kill @e[type=marker,tag=so.marker]
kill @e[tag=so]