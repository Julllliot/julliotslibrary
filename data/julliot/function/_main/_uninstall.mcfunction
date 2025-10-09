scoreboard objectives remove julliapi
scoreboard objectives remove n
scoreboard objectives remove julliapi.lightLvl
scoreboard objectives remove julliapi.timerRepeat
scoreboard objectives remove julliapi.timerTicks
scoreboard objectives remove julliapi.raycastDistance
scoreboard objectives remove julliapi.raycastHit
scoreboard objectives remove julliapi.lookingAtTarget
scoreboard objectives remove julliapi.distanceFromTarget

data remove storage julliapi:jam distance
data remove storage julliapi:jam ccinsq
data remove storage julliapi:jam midpoint
data remove storage julliapi:jam sqrt

data remove storage julliapi:setobj x
data remove storage julliapi:setobj y
data remove storage julliapi:setobj z
data remove storage julliapi:setobj xyz
data remove storage julliapi:setobj index0
data remove storage julliapi:setobj index1
data remove storage julliapi:setobj index2
data remove storage julliapi:setobj markernbt
data remove storage julliapi:setobj marker_id
data remove storage julliapi:setobj entity
data remove storage julliapi:setobj entitynbt
data remove storage julliapi:setobj block

data remove storage julliapi:player looking

tellraw @a {"text":"<julliapi> Scoreboards and storages removed. You are now safe to unistall the datapack!"}
tellraw @a {"text":"<julliapi> If you want to remove all entities and blocks created by this pack, run julliot:main/_remove_all."}