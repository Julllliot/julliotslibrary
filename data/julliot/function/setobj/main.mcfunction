execute if score dummy setobjQuantity matches 0 run return run function julliot:setobj/object with storage julli:setobj

$data modify storage julli:setobj x set from storage julli:setobj xyz[$(index0)]
$data modify storage julli:setobj y set from storage julli:setobj xyz[$(index1)]
$data modify storage julli:setobj z set from storage julli:setobj xyz[$(index2)]

function julliot:setobj/marker with storage julli:setobj

    scoreboard players remove dummy setobjQuantity 1

    execute store result score dummy setobjX run data get storage julli:setobj index0
    execute store result score dummy setobjY run data get storage julli:setobj index1
    execute store result score dummy setobjZ run data get storage julli:setobj index2

    scoreboard players add dummy setobjX 3
    scoreboard players add dummy setobjY 3
    scoreboard players add dummy setobjZ 3

    execute store result storage julli:setobj index0 int 1 run scoreboard players get dummy setobjX
    execute store result storage julli:setobj index1 int 1 run scoreboard players get dummy setobjY
    execute store result storage julli:setobj index2 int 1 run scoreboard players get dummy setobjZ

    function julliot:setobj/main with storage julli:setobj