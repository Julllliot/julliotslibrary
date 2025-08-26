#   run this function with schedule's time in ticks argument to repeat it every ticks amount
#   clear schedule if you don't need it anymore with function julliot:main/_init_all
#   if you don't need it to repeat itself just put random shit in the argument so that this line doesn't run
$schedule function julliot:chk_light_lvl/main $(ticks)t

#   check for light level 7..15
execute if predicate julliot:chk_light_lvl/is_high run return run function julliot:chk_light_lvl/is_high/step
#   check for light level 0..6
function julliot:chk_light_lvl/is_low/step