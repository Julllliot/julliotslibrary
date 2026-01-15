#   execute this function as the entity you want to detect the light level
#   check for light level 7..15
execute if predicate julliapi:chk_light_lvl/is_high run return run function julliapi:chk_light_lvl/is_high/step
#   check for light level 0..6
function julliapi:chk_light_lvl/is_low/step
