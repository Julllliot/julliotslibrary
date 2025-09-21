execute as @e[type=marker,tag=candle] at @s if score @s julliapi.timerTicks matches 0 run function julliot:main/candle/age
execute as @e[type=marker,tag=candle,tag=!julliapi.timer.triggered] at @s if block ~ ~ ~ candle[lit=true] run function julliot:main/candle/timersetup
execute as @e[type=marker,tag=candle,tag=julliapi.timer.triggered] run function julliot:timer/main with storage julliapi:timer

execute if entity @a[scores={julliapi.panic=1..}] run function julliot:main/_panic