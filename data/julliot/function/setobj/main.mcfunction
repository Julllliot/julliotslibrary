# ## Places blocks and/or summons entities of the same type and saves all the spawn positions with markers. All unloads when reloading in-game
#
# @context any
# @macros
#   markernbt: "{Tags:['foo']}" string
#   xyz: [x1,y1,z1, x2,y2,z2, ... xn,yn,zn] int
#   quantity: n int
#   block: string
#   entity: string
#   entitynbt: "{NoAI:1}" string
#   temp: string

$data merge storage julliapi:setobj {\
  macros: {\
    $(temp): {\
      xyz:$(xyz),\
      markernbt:'$(markernbt)',\
      block:'$(block)',\
      entity:'$(entity)',\
      entitynbt:'$(entitynbt)',\
      temp:'$(temp)'\
    }\
  }\
}

$data modify storage julliapi:setobj macros.$(temp).index0 set value 0
$data modify storage julliapi:setobj macros.$(temp).index1 set value 1
$data modify storage julliapi:setobj macros.$(temp).index2 set value 2
$data modify storage julliapi:setobj macros.$(temp).marker_id set value 0

$scoreboard players set $setobj.quantity julliapi $(quantity)

scoreboard players set $setobj.x julliapi 0
scoreboard players set $setobj.y julliapi 1
scoreboard players set $setobj.z julliapi 2

$function julliot:setobj/index with storage julliapi:setobj macros.$(temp)

$data remove storage julliapi:setobj macros.$(temp)