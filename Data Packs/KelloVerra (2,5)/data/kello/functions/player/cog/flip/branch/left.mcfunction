clear @s minecraft:diamond_horse_armor{large_cog:1b}
item replace entity @s weapon.offhand with minecraft:diamond_horse_armor{large_cog:1b,CustomModelData:351902,display:{Name:'[{"text":"Galaxy Glazed Cogwheel ","color":"#8E88DB","bold":true,"italic":false,"type":"text"},{"text":"(","color":"#F2B150","bold":false,"italic":true,"type":"text"},{"keybind":"key.attack","color":"#F2B150","bold":false,"italic":true,"type":"keybind"},{"text":" to throw/recoil)","color":"#F2B150","bold":false,"italic":true,"type":"text"}]'}}
function #kello:event/offhand
return 1