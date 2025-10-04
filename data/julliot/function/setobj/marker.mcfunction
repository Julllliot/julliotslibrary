$summon marker $(x) $(y) $(z) $(markernbt)
$execute positioned $(x) $(y) $(z) run tag @e[type=marker,nbt=$(markernbt),tag=!so.marker,distance=...1] add so.marker_id$(marker_id)
$execute positioned $(x) $(y) $(z) run tag @e[type=marker,nbt=$(markernbt),distance=...1] add so.marker