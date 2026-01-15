#   This gives the radius of the circumsphere of the cube volume.

$function julliapi:math/geometry/3d_euclidean_distance {a:$(a),b:$(b),c:$(c),d:$(d),e:$(e),f:$(f)}

scoreboard players operation $out n *= #10 n
scoreboard players operation $out n /= #2 n

execute store result storage julliapi:jam ccinsq double 0.01 run scoreboard players get $out n
function julliapi:math/answer/circumsphere_in_cube with storage julliapi:jam
