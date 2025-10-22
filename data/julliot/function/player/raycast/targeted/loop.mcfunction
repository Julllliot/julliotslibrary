#particle dust{color:[1,0,0],scale:0.4} ~ ~ ~ 0 0 0 0 1 normal

$execute as $(target_selector) positioned ~-.99 ~-.99 ~-.99 if entity @s[tag=ray.target,dx=0] run return run scoreboard players set $(player_selector) julliapi.raycastHit 1

scoreboard players remove @s julliapi.raycastDistance 1

$execute if score @s julliapi.raycastDistance matches 1.. if block ~ ~ ~ #julliot:non_solid unless block ~ ~ ~ #julliot:exceptions positioned ^ ^ ^.25 run return run function julliot:player/raycast/targeted/loop with storage julliapi:player looking.$(temp)

scoreboard players set @s julliapi.raycastHit 0