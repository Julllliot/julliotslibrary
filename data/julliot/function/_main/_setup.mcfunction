function julliot:timer/setup
function julliot:setobj/setup
function julliot:math/setup
function julliot:chk_light_lvl/setup

scoreboard objectives add julliapi.panic trigger
scoreboard players set @a julliapi.panic 0
scoreboard players enable @a julliapi.panic

function julliot:_main/_init_all