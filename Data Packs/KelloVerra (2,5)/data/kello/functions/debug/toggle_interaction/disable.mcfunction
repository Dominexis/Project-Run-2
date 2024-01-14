# Tag

tag @s add kello.debug.no_interaction




# Terminate

scoreboard players operation #local kello.player.id = @s kello.player.id
execute as @e[type=minecraft:interaction,tag=kello.entity.interactable] if score @s kello.player.id = #local kello.player.id run kill @s




# Clear

clear @s minecraft:diamond_horse_armor{large_cog:1b}
clear @s minecraft:diamond_horse_armor{small_cog:1b}





# Boolean

scoreboard players set #boolean kello.value 1
return 1