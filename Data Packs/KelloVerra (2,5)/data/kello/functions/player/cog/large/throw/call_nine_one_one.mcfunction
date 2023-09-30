scoreboard players set @s kello.player.cog.l 1
function kello:player/tick/check_interaction

clear @s diamond_horse_armor{large_cog:1b}
item replace entity @s weapon.offhand with diamond_horse_armor{large_cog:1b,CustomModelData:351902}


# SFX

execute at @s run function kello:generic/sfx/cog_pickup/large


# Untag

tag @s remove kello.state.cogwheel_was_attached_l
tag @s remove kello.player.has_recoiled_cogwheel