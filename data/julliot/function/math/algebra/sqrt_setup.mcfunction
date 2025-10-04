$scoreboard players set $a n $(a)

scoreboard players operation $out n = $a n
scoreboard players operation $out n *= #100 n
scoreboard players set $tmp n 100

function julliot:math/algebra/sqrt