scoreboard players operation out jam.n += tmp jam.n
scoreboard players operation out jam.n /= 2 jam.n

scoreboard players operation tmp jam.n = a jam.n
scoreboard players operation tmp jam.n /= out jam.n

execute store result storage julliapi:jam sqrt double 0.1 run scoreboard players get out jam.n

execute if score out jam.n > tmp jam.n run return run function julliot:math/algebra/sqrt

function julliot:math/answer/sqrt with storage julliapi:jam