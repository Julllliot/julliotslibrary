scoreboard players remove @s julliapi.timerRepeat 1

$execute if score @s julliapi.timerRepeat matches ..0 run return run function julliot:timer/end with storage $(temp_memory_pointer)

$execute store result score @s julliapi.timerTicks run $(store_ticks_get)

tag @s add julliapi.timer.triggered