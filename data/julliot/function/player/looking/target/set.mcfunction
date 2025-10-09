$execute unless entity $(target_selector) run return run function julliot:player/looking/target/not_found with storage julliapi:player looking.$(temp)

$execute as $(target_selector) at @s run function julliot:math/geometry/distance_from_target with storage julliapi:player looking.$(temp)
$function julliot:player/looking/adjust_precision with storage julliapi:player looking.$(temp)

$execute anchored eyes positioned ^ ^ ^ run function julliot:player/raycast/targeted/set with storage julliapi:player looking.$(temp)
$execute anchored eyes store result score @s julliapi.lookingAtTarget run function julliot:player/looking/target/detect with storage julliapi:player looking.$(temp)