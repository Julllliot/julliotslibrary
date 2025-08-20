execute unless score @s julliapi.timerTicks matches 0 run return run scoreboard players remove @s julliapi.timerTicks 1

tag @s remove julliapi.touched

execute unless entity @s[tag=julliapi.repeat] run return fail

    execute if entity @s[tag=julliapi.stepEvents] run scoreboard players add @s julliapi.timerEvent 1
    tag @s add julliapi.touched