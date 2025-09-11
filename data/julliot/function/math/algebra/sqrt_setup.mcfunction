#   you need to run this first to sqrt function to work.

$scoreboard players set a jam.n $(a)

scoreboard players operation a jam.n *= 100 jam.n
scoreboard players operation out jam.n = a jam.n
scoreboard players set tmp jam.n 100

function julliot:math/algebra/sqrt