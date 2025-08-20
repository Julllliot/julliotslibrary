execute unless score @s julliapi.timerTicks matches 0 run return run scoreboard players remove @s julliapi.timerTicks 1

execute unless score @s julliapi.timerRepeat matches 0 run function julliot:timer/repeat