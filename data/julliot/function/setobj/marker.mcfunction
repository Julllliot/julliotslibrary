#to set with storage julliapi:setobj

$summon marker $(x) $(y) $(z) $(markernbt)
$execute positioned $(x) $(y) $(z) run tag @n[type=marker,nbt=$(markernbt),distance=..1] add so.marker
$execute positioned $(x) $(y) $(z) run tag @n[type=marker,nbt=$(markernbt),distance=..1] add so.marker_id$(marker_id)