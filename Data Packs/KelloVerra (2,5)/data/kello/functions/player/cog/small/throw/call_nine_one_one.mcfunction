scoreboard players set @s kello.player.cog.r 1
function kello:player/tick/check_interaction

clear @s diamond_horse_armor{small_cog:1b}
item replace entity @s hotbar.0 with diamond_horse_armor{small_cog:1b,CustomModelData:351901}
item replace entity @s hotbar.1 with diamond_horse_armor{small_cog:1b,CustomModelData:351901}
item replace entity @s hotbar.2 with diamond_horse_armor{small_cog:1b,CustomModelData:351901}
item replace entity @s hotbar.3 with diamond_horse_armor{small_cog:1b,CustomModelData:351901}
item replace entity @s hotbar.4 with diamond_horse_armor{small_cog:1b,CustomModelData:351901}
item replace entity @s hotbar.5 with diamond_horse_armor{small_cog:1b,CustomModelData:351901}
item replace entity @s hotbar.6 with diamond_horse_armor{small_cog:1b,CustomModelData:351901}
item replace entity @s hotbar.7 with diamond_horse_armor{small_cog:1b,CustomModelData:351901}
item replace entity @s hotbar.8 with diamond_horse_armor{small_cog:1b,CustomModelData:351901}


# SFX

execute at @s run function kello:generic/sfx/cog_pickup/small


# Untag

tag @s remove kello.state.cogwheel_was_attached_r
tag @s remove kello.player.has_recoiled_cogwheel