##  To calculate the midpoint between two points in 3D space. Always use first point's x, y, z AS a, b, c; and second d, e, f.
##  TO AVOID CONFUSION
#   DON'T BOTHER ADDING ".5" OR SHITASS NUMBER IN THE COORDINATES FOR CENTERING PURPOSES, THE FUNCTION DOES THAT FOR YOU. 
#   INSTEAD JUST INPUT THE NORMAL INTEGER COORDINATE.

$scoreboard players set a jam.n $(a)
$scoreboard players set b jam.n $(b)
$scoreboard players set c jam.n $(c)
$scoreboard players set d jam.n $(d)
$scoreboard players set e jam.n $(e)
$scoreboard players set f jam.n $(f)

scoreboard players operation a jam.n *= 100 jam.n
scoreboard players operation b jam.n *= 100 jam.n
scoreboard players operation c jam.n *= 100 jam.n
scoreboard players operation d jam.n *= 100 jam.n
scoreboard players operation e jam.n *= 100 jam.n
scoreboard players operation f jam.n *= 100 jam.n

scoreboard players add a jam.n 50
scoreboard players add b jam.n 50
scoreboard players add c jam.n 50
scoreboard players add d jam.n 50
scoreboard players add e jam.n 50
scoreboard players add f jam.n 50

scoreboard players operation a jam.n += d jam.n
scoreboard players operation a jam.n /= 2 jam.n
execute store result storage julliapi:jam midpoint[0] float 0.01 run scoreboard players get a jam.n

scoreboard players operation b jam.n += e jam.n
scoreboard players operation b jam.n /= 2 jam.n
execute store result storage julliapi:jam midpoint[1] float 0.01 run scoreboard players get b jam.n

scoreboard players operation c jam.n += f jam.n
scoreboard players operation c jam.n /= 2 jam.n
execute store result storage julliapi:jam midpoint[2] float 0.01 run scoreboard players get c jam.n

function julliot:math/answer/midpoint with storage julliapi:jam