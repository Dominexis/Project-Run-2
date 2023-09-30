# Choose to recoil or throw

scoreboard players operation #crosshair_state kello.value = @s kello.player.cog.r
scoreboard players set #boolean kello.value 0


execute store success score #boolean kello.value if score @s kello.player.cog.r matches 1 anchored eyes positioned ^ ^-0.075 ^1 run function kello:player/cog/small/throw/main
execute store success score #boolean kello.value unless score @s[tag=!kello.player.has_recoiled_cogwheel] kello.player.cog.r matches 1 run function kello:player/cog/small/recoil/main

scoreboard players operation @s kello.player.cog.r = #crosshair_state kello.value

# Return when fail choosing to avoid resetting both the response and cooldown timer

execute if score #boolean kello.value matches 0 run return 0

scoreboard players set @s kello.player.cog.r_response 0
scoreboard players operation @s kello.player.cog.r_cooldown += #throw_cooldown kello.value