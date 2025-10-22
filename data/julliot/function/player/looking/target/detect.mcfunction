##at 2 blocks distance:
# desired angle detection:  
# 60 hor
# 70 ver
# distance radius: 
# 2sin(60/2) = 1        hor
# 2sin(70/2) = 1.147    ver

##at <5 blocks distance:
# distance radius: 
# 2sin(53/2) ~ 0.91     hor
# 2sin(50/2) ~ 0.85      ver

##at <10 blocks distance:
# distance radius: 
# 2sin(52/2) ~ 0.88     hor
# 2sin(41/2) ~ 0.7      ver

##at <20 blocks distance:
# distance radius: 
# 2sin(51.9/2) = 0.875  hor
# 2sin(38.1/2) = 0.652  ver
execute unless score @s julliapi.raycastHit matches 1..3 run return fail

#$say r_hor $(radius_hor), r_ver $(radius_ver)

# left
#$execute rotated ~ ~ positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..$(radius_hor)] run return 1

$execute positioned ^ ^ ^1 rotated as @s rotated ~ ~$(player_inv_pitch) rotated ~ ~$(vec_to_target_pitch) positioned ^ ^ ^-1 unless entity @s[distance=..$(radius_hor)] run return fail
$execute rotated 0 0 rotated ~ ~$(vec_to_target_pitch) positioned ~ ~-.015 ~ positioned ^ ^ ^1 rotated as @s rotated ~$(player_inv_yaw) ~ positioned ^ ^ ^-1 unless entity @s[distance=..$(radius_ver)] run return fail

# center
#$execute positioned ^ ^ ^1 rotated as @s rotated ~ ~$(player_inv_pitch) rotated ~ ~$(vec_to_target_pitch) positioned ^ ^ ^-1 if entity @s[distance=..$(radius_hor)] positioned ~ ~ ~ rotated 0 0 rotated ~ ~$(vec_to_target_pitch) positioned ~ ~-.025 ~ positioned ^ ^ ^1 rotated as @s rotated ~$(player_inv_yaw) ~ positioned ^ ^ ^-1 if entity @s[distance=..$(radius_ver)] run return 1

return 1