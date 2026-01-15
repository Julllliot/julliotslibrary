execute as @e[type=marker,tag=so.marker.block] at @s run setblock ~ ~ ~ air

kill @e[type=marker,tag=so.marker]
kill @e[tag=so.entity]
kill @e[tag=so]

tellraw @a[tag=julliapi_debug] "[julliapi] Mo daijoubu! Naze tte? Watashi ga kita!"
