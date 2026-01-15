# ## places blocks and/or summons entities of the same type and saves all the spawn positions with markers. All unloads when reloading in-game
#
# prefer use apostrophes to write 'strings'.
#
# @context any
# @macros
#   markernbt: '{Tags:["foo"]}' string
#   xyz: [x1,y1,z1, x2,y2,z2, ... xn,yn,zn] int
#   quantity: n int
#   block: string
#   entity: string
#   entitynbt: "{NoAI:1}" string
#   temp: string

$scoreboard players set $setobj.quantity julliapi $(quantity)

# exception handling
execute if score $setobj.quantity julliapi matches 0 run return run tellraw @a[tag=julliapi_debug] {"text":"[julliapi:setobj] FAIL: object quantity must not be zero.","color":"red"}

$data merge storage julliapi:setobj {\
  temp: {\
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

$data merge storage julliapi:setobj {\
  temp: {\
    $(temp): {\
      marker_id:0,\
      index0:0,\
      index1:1,\
      index2:2\
    }\
  }\
}

scoreboard players set $setobj.markerID julliapi 0
scoreboard players set $setobj.x julliapi 0
scoreboard players set $setobj.y julliapi 1
scoreboard players set $setobj.z julliapi 2

$function julliapi:setobj/iterate with storage julliapi:setobj temp.$(temp)

$execute as @e[type=marker,tag=this,limit=$(quantity)] run tag @s remove this
$data remove storage julliapi:setobj temp.$(temp)
