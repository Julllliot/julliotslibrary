#   This gives the radius of the circumsphere of the cube volume.

$function julliot:math/geometry/3d_euclidean_distance {a:$(a),b:$(b),c:$(c),d:$(d),e:$(e),f:$(f)}

scoreboard players operation out jam.n *= 10 jam.n
scoreboard players operation out jam.n /= 2 jam.n

execute store result storage julliapi:jam ccinsq double 0.01 run scoreboard players get out jam.n
function julliot:math/answer/circumsphere_in_cube with storage julliapi:jam