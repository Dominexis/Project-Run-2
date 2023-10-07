scoreboard players set @s kello.player.cog.l 1
function kello:player/tick/check_interaction

clear @s diamond_horse_armor{large_cog:1b}
item replace entity @s weapon.offhand with diamond_horse_armor{large_cog:1b,CustomModelData:351902,display:{Name:'[{"text":"Galaxy Glazed Cogwheel ","color":"#8E88DB","bold":true,"italic":false},{"text":"(","color":"#F2B150","bold":false,"italic":true},{"keybind":"key.attack","color":"#F2B150","bold":false,"italic":true},{"text":" to throw/recoil)","color":"#F2B150","bold":false,"italic":true}]'}}


# SFX

execute at @s run function kello:generic/sfx/cog_pickup/large


# Untag

tag @s remove kello.state.cogwheel_was_attached_l
tag @s remove kello.player.has_recoiled_cogwheel