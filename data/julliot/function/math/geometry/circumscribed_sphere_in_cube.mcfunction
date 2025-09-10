#   This gives the radius of the circumsphere of the cube volume.

$scoreboard players set a jam.n $(a)
$scoreboard players set b jam.n $(b)
$scoreboard players set c jam.n $(c)
$scoreboard players set d jam.n $(d)
$scoreboard players set e jam.n $(e)
$scoreboard players set f jam.n $(f)

#(x2 - x1)^2 + (y2 - y1)^2 + (x2 - x1)^2

scoreboard players operation a jam.n -= d jam.n
scoreboard players operation a jam.n *= a jam.n

scoreboard players operation b jam.n -= e jam.n
scoreboard players operation b jam.n *= b jam.n

scoreboard players operation c jam.n -= f jam.n
scoreboard players operation c jam.n *= c jam.n

scoreboard players operation a jam.n += b jam.n
scoreboard players operation a jam.n += c jam.n

#   sqrt setup
scoreboard players operation a jam.n *= 100 jam.n
scoreboard players operation out jam.n = a jam.n
scoreboard players set tmp jam.n 100

function julliot:math/arithmetic/sqrt

scoreboard players operation out jam.n *= 10 jam.n
scoreboard players operation out jam.n /= 2 jam.n

execute store result storage julliapi:jam ccinsq double 0.01 run scoreboard players get out jam.n
function julliot:math/answer/circumsphere_in_cube with storage julliapi:jam