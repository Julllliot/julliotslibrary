#2 -51 35 # 0 -51 35 # -2 -51 35 #

data merge storage julli:setobj {xyz:["2","-51","35","0","-51","35","-2","-51","35"],block:"candle[candles=4]",markernbt:"{Tags:[\"isBlock\",\"candle\"]}"}
scoreboard players set dummy setobjQuantity 3
function julliot:setobj/main with storage julli:setobj