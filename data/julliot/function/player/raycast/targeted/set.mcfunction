# Arguments

# execute this as @a[limit=1] at @s anchored eyes positioned ^ ^ ^
# Macros: max_distance
# the target entity MUST have "ray.target" tag

#tag @s add ray.caster
summon area_effect_cloud ~ ~ ~ {Tags:["so.entity","so.marker","ray"],NoGravity:1b,Radius:0f}
$execute as @n[type=area_effect_cloud,tag=ray,distance=..1] run function julliot:player/raycast/targeted/aim_target with storage julliapi:player looking.$(temp)