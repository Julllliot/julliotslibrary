execute as @e[type=marker,tag=so.marker.block] at @s run setblock ~ ~ ~ air

kill @e[type=marker,tag=so.marker]
kill @e[type=marker,tag=so.marker.entity]
kill @e[type=marker,tag=so.marker.block]
kill @e[tag=so.entity]
kill @e[tag=so]