#2 -51 35 # 0 -51 35 # -2 -51 35 #

data merge storage julliapi:setobj {xyz:["2","-51","35","0","-51","35","-2","-51","35"],block:"candle[candles=4]",markernbt:"{Tags:[\"julliapi.setobj.marker.block\",\"candle\"]}"}
scoreboard players set dummy julliapi.setobjQuantity 3
function julliot:setobj/main with storage julliapi:setobj