tag @s add julliapi.timer.touched

execute store result score @s julliapi.timerTicks run random value 80..120

execute if block ~ ~ ~ candle[candles=4] run return run scoreboard players set @s julliapi.timerRepeat 3
execute if block ~ ~ ~ candle[candles=3] run return run scoreboard players set @s julliapi.timerRepeat 2
execute if block ~ ~ ~ candle[candles=2] run return run scoreboard players set @s julliapi.timerRepeat 1
scoreboard players set @s julliapi.timerRepeat 0