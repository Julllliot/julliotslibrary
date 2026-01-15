# @context any
# @within julliapi:setobj/iterate
# @using storage julliapi:setobj temp.$(temp)
# @internal

$data modify storage julliapi:setobj temp.$(temp).block_read set value '$(block)'
$data modify storage julliapi:setobj temp.$(temp).entity_read set value '$(entity)'

$execute store success score #compare_string julliapi run data modify storage julliapi:setobj temp.$(temp).block_read set value 'none'
$execute unless score #compare_string julliapi matches 0 as @e[type=marker,tag=so.marker,tag=this] at @s run function julliapi:setobj/set/block with storage julliapi:setobj temp.$(temp)

$execute store success score #compare_string julliapi run data modify storage julliapi:setobj temp.$(temp).entity_read set value 'none'
$execute unless score #compare_string julliapi matches 0 as @e[type=marker,tag=so.marker,tag=this] at @s positioned ~ ~1 ~ run function julliapi:setobj/set/entity with storage julliapi:setobj temp.$(temp)

