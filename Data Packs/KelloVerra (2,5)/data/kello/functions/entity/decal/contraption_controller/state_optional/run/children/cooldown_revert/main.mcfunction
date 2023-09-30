execute if entity @s[tag=kello.entity.type.small] run scoreboard players set #state_cog_r kello.value 1
execute if entity @s[tag=kello.entity.type.large] run scoreboard players set #state_cog_l kello.value 1
tag @s remove kello.static
scoreboard players operation #local kello.player.id = @s kello.player.id
execute as @a if score @s kello.player.id = #local kello.player.id run function kello:entity/decal/contraption_controller/state_optional/run/children/cooldown_revert/state