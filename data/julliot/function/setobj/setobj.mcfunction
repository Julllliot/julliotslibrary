#to set with storage julli:setobj

$summon marker $(x) $(y) $(z) $(markernbt)

$execute as @e[type=marker,nbt=$(markernbt)] if entity @s[tag=isBlock] run setblock $(x) $(y) $(z) $(block)
$execute as @e[type=marker,nbt=$(markernbt)] if entity @s[tag=isEntity] run summon $(entity) $(x) $(y) $(z) $(entitynbt)
$execute as @e[type=marker,nbt=$(markernbt)] if entity @s[tag=isEntity] at @s unless block ~ ~ ~ air run tp @e[type=$(entity),nbt=$(entitynbt),sort=nearest,limit=1] ~ ~1 ~