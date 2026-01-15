# @context any
# @within julliapi:setobj/iterate
# @using storage julliapi:setobj temp.$(temp)
# @internal

$summon marker $(x) $(y) $(z) $(markernbt)
$execute positioned $(x) $(y) $(z) run tag @n[type=marker,nbt=$(markernbt),distance=...01,tag=!so.marker] add this
$execute positioned $(x) $(y) $(z) run tag @n[type=marker,distance=...01,tag=this] add so.marker
$execute positioned $(x) $(y) $(z) run tag @n[type=marker,distance=...01,tag=this] add so.marker_id$(marker_id)
