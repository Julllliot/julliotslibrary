scoreboard players reset @s julliapi.timerTicks

tag @s remove julliapi.timer.touched

execute if block ~ ~ ~ candle[candles=4] run return run setblock ~ ~ ~ candle[candles=3,lit=true]
execute if block ~ ~ ~ candle[candles=3] run return run setblock ~ ~ ~ candle[candles=2,lit=true]
execute if block ~ ~ ~ candle[candles=2] run return run setblock ~ ~ ~ candle[candles=1,lit=true]
setblock ~ ~ ~ candle[candles=1,lit=false]