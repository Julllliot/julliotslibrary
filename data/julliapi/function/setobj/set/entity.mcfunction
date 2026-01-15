# @context as @e[type=marker,tag=so.marker,tag=this] at @s positioned ~ ~1 ~
# @within julliapi:setobj/set/obj
# @internal

$summon $(entity) ~ ~ ~ $(entitynbt)
$tag @n[type=$(entity),dy=0,tag=!so.entity] add so.entity
tag @s add so.marker.entity
