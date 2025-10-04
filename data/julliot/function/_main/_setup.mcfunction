function julliot:timer/setup
#function julliot:setobj/setup
function julliot:chk_light_lvl/setup
scoreboard objectives add julliapi dummy
function julliot:math/setup

data merge storage julliapi:setobj {markernbt:"{}",block:"foo",entity:"bar",entitynbt:"{}"}
data merge storage julliapi:jam {midpoint:[0f,0f,0f]}

function julliot:_main/init_all