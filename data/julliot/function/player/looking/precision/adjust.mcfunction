# this function calculates the radius precision of players looking-at-target detection macros used in julliot:player/looking/target/detect

$execute if score @s julliapi.distanceFromTarget matches ..500 run return run function julliot:player/looking/precision/less_than_five with storage julliapi:player looking.$(temp)
$execute if score @s julliapi.distanceFromTarget matches ..1000 run return run function julliot:player/looking/precision/less_than_ten with storage julliapi:player looking.$(temp)
$function julliot:player/looking/precision/more_than_ten with storage julliapi:player looking.$(temp)