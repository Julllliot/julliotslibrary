# ## setup of variables and raycast before the main looking detection function
#
# @context as $(player_selector)
# @within julliapi:player/looking/target/set
# @using storage julliapi:player looking.$(temp)

$execute unless entity $(target_selector) run return run function julliapi:player/looking/target/not_found

$execute as $(target_selector) at @s run function julliapi:math/geometry/distance_from_target with storage julliapi:player looking.$(temp)
$function julliapi:player/looking/precision/adjust with storage julliapi:player looking.$(temp)

$function julliapi:player/raycast/targeted/set with storage julliapi:player looking.$(temp)

$execute store result storage julliapi:player looking.$(temp).player_inv_yaw float -1 run data get entity @s Rotation[0]
$execute store result storage julliapi:player looking.$(temp).player_inv_pitch float -1 run data get entity @s Rotation[1]
summon area_effect_cloud ~ ~ ~ {Tags:["so.entity","vector"],Radius:0f}
$tp @n[type=area_effect_cloud,tag=vector,distance=..1] ~ ~ ~ facing entity $(target_selector)
$data modify storage julliapi:player looking.$(temp).vec_to_target_pitch set from entity @n[type=area_effect_cloud,tag=vector,distance=..1] Rotation[1]
kill @n[type=area_effect_cloud,tag=vector,distance=..1]

$execute facing entity $(target_selector) feet store success score @s julliapi.lookingAtTarget run function julliapi:player/looking/target/detect with storage julliapi:player looking.$(temp)
