$execute store result score $player_x n run data get entity $(player_selector) Pos[0] 100
$execute store result score $player_y n run data get entity $(player_selector) Pos[1] 100
$execute store result score $player_z n run data get entity $(player_selector) Pos[2] 100
execute store result score $target_x n run data get entity @s Pos[0] 100
execute store result score $target_y n run data get entity @s Pos[1] 100
execute store result score $target_z n run data get entity @s Pos[2] 100

scoreboard players operation $player_x n -= $target_x n
scoreboard players operation $player_x n *= $player_x n

scoreboard players operation $player_y n -= $target_y n
scoreboard players operation $player_y n *= $player_y n

scoreboard players operation $player_z n -= $target_z n
scoreboard players operation $player_z n *= $player_z n


scoreboard players operation $player_x n += $player_y n
scoreboard players operation $player_x n += $player_z n

#   sqrt setup
scoreboard players operation $out n = $player_x n
scoreboard players set $tmp n 100

function julliot:math/algebra/sqrt

$scoreboard players operation $(player_selector) julliapi.distanceFromTarget = $out n