execute unless score @s julliapi.timerTicks matches ..0 run return run scoreboard players remove @s julliapi.timerTicks 1

tag @s remove julliapi.timer.triggered

$function julliot:timer/repeat/set with storage julliapi:timer $(temp_memory_pointer)