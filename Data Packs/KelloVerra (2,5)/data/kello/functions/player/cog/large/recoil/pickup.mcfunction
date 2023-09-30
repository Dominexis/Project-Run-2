# Change state

item replace entity @s weapon.offhand with diamond_horse_armor{large_cog:1b,CustomModelData:351902}
scoreboard players set @s kello.player.cog.l 1
scoreboard players set @s kello.player.l_cogwheel_timeout -1



# SFX

execute at @s run function kello:generic/sfx/cog_pickup/large




# Offset cooldown

scoreboard players set @s[tag=kello.state.cogwheel_was_attached_l] kello.player.cog.l_cooldown -5
scoreboard players operation @s[tag=!kello.state.cogwheel_was_attached_l] kello.player.cog.l_cooldown += #throw_cooldown kello.value

tag @s remove kello.state.cogwheel_was_attached_l



# Untag

tag @s remove kello.player.has_recoiled_cogwheel