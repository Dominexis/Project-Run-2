execute if entity @s[tag=kello.entity.type.small] run function kello:entity/decal/contraption_controller/state_optional/run/children/cooldown_reset/small
execute if entity @s[tag=kello.entity.type.large] run function kello:entity/decal/contraption_controller/state_optional/run/children/cooldown_reset/large
scoreboard players add @s kello.entity.timer 64
tag @s add kello.static
scoreboard players operation #local kello.player.id = @s kello.player.id
execute as @a if score @s kello.player.id = #local kello.player.id run function kello:entity/decal/contraption_controller/state_optional/run/children/cooldown_reset/state
return 1