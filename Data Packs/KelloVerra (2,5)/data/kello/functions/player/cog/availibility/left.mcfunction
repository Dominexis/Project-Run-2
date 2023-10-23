scoreboard players set #boolean kello.value 0
execute as @e[type=item_display,tag=pr.target,tag=kello.entity.type.thrown_cogwheel,tag=kello.entity.type.large] if score @s kello.player.id = #local kello.player.id run scoreboard players set #boolean kello.value 1

execute if score #boolean kello.value matches 0 as @e[type=item_display,tag=kello.entity.type.thrown_cogwheel,tag=kello.entity.type.large] if score @s kello.player.id = #local kello.player.id run function kello:player/cog/availibility/terminate
execute if score #boolean kello.value matches 0 run function kello:player/cog/large/throw/call_nine_one_one