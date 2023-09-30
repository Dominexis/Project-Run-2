# Denullify state value

execute unless score @s kello.entity.state = @s kello.entity.state run function kello:entity/thrown/large_cog/state/throw/start
execute unless score @s kello.entity.state = @s kello.entity.state run scoreboard players set @s kello.entity.state 0







# Change state based on preexisting conditions

scoreboard players operation #state kello.value = @s kello.entity.state

execute if score @s kello.entity.state matches 00 run function kello:entity/thrown/large_cog/state/throw/state
execute if score @s kello.entity.state matches 01 run function kello:entity/thrown/large_cog/state/recoil/state
execute if score @s kello.entity.state matches 03 run function kello:entity/thrown/large_cog/state/fixed/state
execute if score @s kello.entity.state matches 04 run function kello:entity/thrown/large_cog/state/launcher/state

scoreboard players operation @s kello.entity.state = #state kello.value







# Run function for specific state

execute if score @s kello.entity.state matches 00 run function kello:entity/thrown/large_cog/state/throw/main
execute if score @s kello.entity.state matches 01 run function kello:entity/thrown/large_cog/state/recoil/main
execute if score @s kello.entity.state matches 02 run function kello:entity/thrown/large_cog/state/pickup/main
execute if score @s kello.entity.state matches 03 run function kello:entity/thrown/large_cog/state/fixed/main
execute if score @s kello.entity.state matches 04 run function kello:entity/thrown/large_cog/state/launcher/main
execute if score @s kello.entity.state matches 05 run function kello:entity/thrown/large_cog/state/despawn/main

scoreboard players operation @s kello.entity.state = #state kello.value
