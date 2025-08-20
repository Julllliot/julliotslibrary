#-2 -52 21 #-3 -52 25 #2 -51 26 #3 -52 22 #0 -50 23

data merge storage julliapi:setobj {xyz:["-2","-52","21","-3","-52","25","2","-51","26","3","-52","22","0","-50","23"],markernbt:"{Tags:[\"julliapi.isEntity\",\"julliapi.isBlock\",\"tag\"]}",block:"lodestone",entity:"zombie",entitynbt:"{Silent:1,NoAI:1,Tags:[\"zombie\"],equipment:{head:{id:\"minecraft:allium\",count:1}}}"}
scoreboard players set dummy julliapi.setobjQuantity 5
function julliot:setobj/main with storage julliapi:setobj