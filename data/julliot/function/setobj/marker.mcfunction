#to set with storage julliapi:setobj

$summon marker $(x) $(y) $(z) $(markernbt)
$execute positioned $(x) $(y) $(z) run tag @n[type=marker,nbt=$(markernbt)] add julliapi.setobj.marker