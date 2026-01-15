$scoreboard players set $a n $(a)
$scoreboard players set $b n $(b)
$scoreboard players set $c n $(c)
$scoreboard players set $d n $(d)
$scoreboard players set $e n $(e)
$scoreboard players set $f n $(f)

#(x2 - x1)^2 + (y2 - y1)^2 + (x2 - x1)^2

scoreboard players operation $a n -= $d n
scoreboard players operation $a n *= $a n

scoreboard players operation $b n -= $e n
scoreboard players operation $b n *= $b n

scoreboard players operation $c n -= $f n
scoreboard players operation $c n *= $c n

scoreboard players operation $a n += $b n
scoreboard players operation $a n += $c n

#   sqrt setup
scoreboard players operation $out n = $a n
scoreboard players operation $out n *= 100 n
scoreboard players set $tmp n 100

function julliapi:math/algebra/sqrt

execute store result storage julliapi:jam distance double 0.1 run scoreboard players get $out n

function julliapi:math/answer/3d_euclidean_distance with storage julliapi:jam
