#   always need setup for output and tmp = 1 before this

scoreboard players operation out jam.n += tmp jam.n
scoreboard players operation out jam.n /= 2 jam.n

scoreboard players operation tmp jam.n = a jam.n
scoreboard players operation tmp jam.n /= out jam.n

execute if score out jam.n > tmp jam.n run function julliot:math/arithmetic/sqrt