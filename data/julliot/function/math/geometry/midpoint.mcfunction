##  To calculate the midpoint between two points in 3D space. Always use first point's x, y, z AS $a, $b, $c; and second $d, $e, $f.
##  TO AVOID CONFUSION
#   DON'T BOTHER ADDING ".5" OR SHITASS NUMBER IN THE COORDINATES FOR CENTERING PURPOSES, THE FUNCTION DOES THAT FOR YOU. 
#   INSTEAD JUST INPUT THE NORMAL INTEGER COORDINATE.

$scoreboard players set $a n $(a)
$scoreboard players set $b n $(b)
$scoreboard players set $c n $(c)
$scoreboard players set $d n $(d)
$scoreboard players set $e n $(e)
$scoreboard players set $f n $(f)

scoreboard players operation $a n *= 100 n
scoreboard players operation $b n *= 100 n
scoreboard players operation $c n *= 100 n
scoreboard players operation $d n *= 100 n
scoreboard players operation $e n *= 100 n
scoreboard players operation $f n *= 100 n

scoreboard players add $a n 50
scoreboard players add $b n 50
scoreboard players add $c n 50
scoreboard players add $d n 50
scoreboard players add $e n 50
scoreboard players add $f n 50

scoreboard players operation $a n += $d n
scoreboard players operation $a n /= #2 n
execute store result storage julliapi:jam midpoint[0] float 0.01 run scoreboard players get $a n

scoreboard players operation $b n += $e n
scoreboard players operation $b n /= #2 n
execute store result storage julliapi:jam midpoint[1] float 0.01 run scoreboard players get $b n

scoreboard players operation $c n += $f n
scoreboard players operation $c n /= #2 n
execute store result storage julliapi:jam midpoint[2] float 0.01 run scoreboard players get $c n

function julliot:math/answer/midpoint with storage julliapi:jam