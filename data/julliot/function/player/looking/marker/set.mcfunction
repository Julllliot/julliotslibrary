$execute anchored feet positioned ^ ^ ^ run tp @n[type=marker,tag=target.feet,tag=$(temp)] ~ ~ ~
$execute anchored eyes positioned ^ ^ ^ run tp @n[type=marker,tag=target.eyes,tag=$(temp)] ~ ~ ~

execute if entity @s[tag=anchored] run return 1

$execute anchored feet positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["so","so.marker","target.feet","target.anchor","$(temp)"]}
$execute anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["so","so.marker","target.eyes","target.anchor","$(temp)"]}

tag @s add anchored