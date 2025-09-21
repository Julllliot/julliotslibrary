#   This function will reinitialize every other functions.
#   It is important that you have a way to take everything back to normal if needed.
#   I recommend you to put this function in the tag minecraft:load so that /reload reinitialize things for you.

function julliot:setobj/init
function julliot:math/init

scoreboard players set @a julliapi.panic 0
scoreboard players enable @a julliapi.panic