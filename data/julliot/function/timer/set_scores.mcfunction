tag @s add julliapi.timer.triggered

$execute store result score @s julliapi.timerTicks run $(store_ticks_get)
$execute $(exe_repeat_args)run scoreboard players set @s julliapi.timerRepeat $(repeat)