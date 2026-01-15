# @within julliapi:timer/main

execute unless score @s julliapi.timerTicks matches ..0 run return run scoreboard players remove @s julliapi.timerTicks 1

$execute unless score @s julliapi.timerRepeat matches ..0 run return run function julliapi:timer/repeat with storage julliapi:timer args.$(temp)

tag @s add julliapi.timer.end
tag @s remove julliapi.timer.running
