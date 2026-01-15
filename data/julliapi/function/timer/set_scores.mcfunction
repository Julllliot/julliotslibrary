# @within julliapi:timer/main

tag @s add julliapi.timer.running

$$(custom_cmd)

$scoreboard players set @s julliapi.timerTicks $(ticks)
$scoreboard players set @s julliapi.timerRepeat $(repeat)
