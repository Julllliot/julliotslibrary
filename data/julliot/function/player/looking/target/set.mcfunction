$execute unless entity $(target_selector) run return run scoreboard players set $(player_selector) julliapi.raycastHit 0

$execute as $(target_selector) at @s run function julliot:math/geometry/distance_from_target with storage julliapi:player looking.$(temp)
#$function julliot:player/looking/adjust_precision with storage julliapi:player looking.$(temp)

$function julliot:player/raycast/targeted/set with storage julliapi:player looking.$(temp)
$execute store result score @s julliapi.lookingAtTarget run function julliot:player/looking/target/detect with storage julliapi:player looking.$(temp)