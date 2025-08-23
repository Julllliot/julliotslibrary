##  To calculate the midpoint between two points in 3D space.
#   Always use first point's x, y, z AS a, b, c; and second d, e, f.
#
##  TO AVOID CONFUSION
#
##  Always multiply your numbers by 100 to get around the problem that scoreboards only accepts integers.
#   E.g.: a = 2
#   Write a as 200 and treat it like 2.00.
#
##  DON'T BOTHER ADDING ".5" OR SHITASS NUMBER IN THE COORDINATES FOR CENTERING PURPOSES, THE FUNCTION DOES THAT FOR YOU.
#   INSTEAD JUST INPUT THE NORMAL INTEGER COORDINATE.

$scoreboard players set jam jam.a $(a)
$scoreboard players set jam jam.b $(b)
$scoreboard players set jam jam.c $(c)
$scoreboard players set jam jam.d $(d)
$scoreboard players set jam jam.e $(e)
$scoreboard players set jam jam.f $(f)

#   to center coords
scoreboard players add jam jam.a 50
scoreboard players add jam jam.b 50
scoreboard players add jam jam.c 50
scoreboard players add jam jam.d 50
scoreboard players add jam jam.e 50
scoreboard players add jam jam.f 50


scoreboard players operation jam jam.a += jam jam.d
scoreboard players operation jam jam.a /= jam jam.2
execute store result storage julliapi:jam midpoint[0] float 0.01 run scoreboard players get jam jam.a

scoreboard players operation jam jam.b += jam jam.e
scoreboard players operation jam jam.b /= jam jam.2
execute store result storage julliapi:jam midpoint[1] float 0.01 run scoreboard players get jam jam.b

scoreboard players operation jam jam.c += jam jam.f
scoreboard players operation jam jam.c /= jam jam.2
execute store result storage julliapi:jam midpoint[2] float 0.01 run scoreboard players get jam jam.c

function julliot:math/answer/midpoint with storage julliapi:jam