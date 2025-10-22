scoreboard players set $tmp n -300

scoreboard players operation $tmp n *= @s julliapi.distanceFromTarget
scoreboard players operation $tmp n /= #10000 n
scoreboard players operation $tmp n += #1.06 n

$execute store result storage julliapi:player looking.$(temp).radius_hor double .01 run scoreboard players get $tmp n

scoreboard players set $tmp n -500

scoreboard players operation $tmp n *= @s julliapi.distanceFromTarget
scoreboard players operation $tmp n /= #10000 n
scoreboard players operation $tmp n += #1.10 n

$execute store result storage julliapi:player looking.$(temp).radius_ver double .01 run scoreboard players get $tmp n