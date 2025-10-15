# this function calculates the radius precision of players looking-at-target detection macros used in julliot:player/looking/target/detect

$scoreboard players operation $(player_selector) julliapi.distanceFromTarget *= #100 n
scoreboard players set $tmp n 006

$scoreboard players operation $tmp n *= $(player_selector) julliapi.distanceFromTarget
scoreboard players operation $tmp n /= #100 n
scoreboard players operation $tmp n += #1.88 n

$execute store result storage julliapi:player looking.$(temp).precision float .01 run scoreboard players get $tmp n

# scoreboard players set $tmp n 0011

# $scoreboard players operation $tmp n *= $(player_selector) julliapi.distanceFromTarget
# scoreboard players operation $tmp n /= #1000 n
# scoreboard players operation $tmp n += #1.98 n

# $execute store result storage julliapi:player looking.$(temp).precision_center float .01 run scoreboard players get $tmp n

$scoreboard players operation $(player_selector) julliapi.distanceFromTarget /= #100 n