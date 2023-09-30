scoreboard players set #boolean kello.value 0
execute as @e[type=item_display,tag=kello.entity.type.thrown_cogwheel,tag=kello.entity.type.small] if score @s kello.player.id = #local kello.player.id run scoreboard players set #boolean kello.value 1

execute if score #boolean kello.value matches 0 run function kello:player/cog/small/throw/call_nine_one_one