# Kill interaction

scoreboard players operation #local kello.player.id = @s kello.player.id

# NOTE: Forgive me, there is an edge case where pr.target simply doesnt get applied to interaction
execute as @e[type=minecraft:interaction,tag=kello.entity.interactable] if score @s kello.player.id = #local kello.player.id run kill @s
execute as @e[type=minecraft:item_display,tag=kello.entity.type.thrown_cogwheel,tag=aj.cogwheel.root] run function kello:entity/thrown/large_cog/state/despawn/pre_start




# Reset ID

scoreboard players reset @s kello.player.id
scoreboard players reset @s kello.player.checkpoint.id




# Reset scores

scoreboard players reset @s kello.player.cog.l
scoreboard players reset @s kello.player.cog.r

scoreboard players reset @s kello.player.coglected

scoreboard players reset @s kello.player.cog.l_response
scoreboard players reset @s kello.player.cog.r_response
scoreboard players reset @s kello.player.cog.l_cooldown
scoreboard players reset @s kello.player.cog.r_cooldown