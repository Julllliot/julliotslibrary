particle dust{color:[0.000,0.000,1.000],scale:0.4} ~ ~ ~ 0 0 0 0 0 normal

execute if entity @s[distance=..1] run return run effect give @s glowing 1 0 true

scoreboard players remove @s julliapi.raycastDistance 1

$execute if score @s julliapi.raycastDistance matches 1.. positioned ^ ^ ^.25 run return run function julliot:player/raycast/default/vec3 with storage julliapi:player looking.$(temp)

execute positioned ^ ^ ^-2 run particle bubble ~ ~ ~ 0 0 0 0 0 normal
effect clear @s