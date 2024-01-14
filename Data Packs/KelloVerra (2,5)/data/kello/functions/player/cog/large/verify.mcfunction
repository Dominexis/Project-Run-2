# Choose to recoil or throw

scoreboard players operation #crosshair_state kello.value = @s kello.player.cog.l
scoreboard players set #boolean kello.value 0


execute store success score #boolean kello.value if score @s kello.player.cog.l matches 1 anchored eyes positioned ^ ^-.0125 ^2 run function kello:player/cog/large/throw/main
execute store success score #boolean kello.value unless score @s[tag=!kello.player.has_recoiled_cogwheel] kello.player.cog.l matches 1 run function kello:player/cog/large/recoil/main

scoreboard players operation @s kello.player.cog.l = #crosshair_state kello.value

# Return when fail choosing to avoid resetting both the response and cooldown timer

execute if score #boolean kello.value matches 0 run return 0

scoreboard players set @s kello.player.cog.l_response 0
scoreboard players operation @s kello.player.cog.l_cooldown += #throw_cooldown kello.value
return 1