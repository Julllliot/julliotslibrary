scoreboard players operation $out n += $tmp n
scoreboard players operation $out n /= #2 n

scoreboard players operation $tmp n = $player_x n
scoreboard players operation $tmp n /= $out n

execute store result storage julliapi:jam sqrt double 0.1 run scoreboard players get $out n

execute if score $out n > $tmp n run return run function julliot:math/algebra/sqrt

#function julliot:math/answer/sqrt with storage julliapi:jam