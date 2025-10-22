scoreboard players set $tmp n -060

scoreboard players operation $tmp n *= @s julliapi.distanceFromTarget
scoreboard players operation $tmp n /= #10000 n
scoreboard players operation $tmp n += #0.94 n

$execute store result storage julliapi:player looking.$(temp).radius_hor double .01 run scoreboard players get $tmp n

scoreboard players set $tmp n -300

scoreboard players operation $tmp n *= @s julliapi.distanceFromTarget
scoreboard players operation $tmp n /= #10000 n
scoreboard players operation $tmp n += #1.00 n

$execute store result storage julliapi:player looking.$(temp).radius_ver double .01 run scoreboard players get $tmp n