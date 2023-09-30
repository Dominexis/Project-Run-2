# Reference

scoreboard players operation #local kello.player.id = @s kello.player.id
scoreboard players set #boolean kello.value 0
tag @s add kello.entity.player.target




# Recoil

execute as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=aj.cogwheel.root,tag=kello.entity.type.thrown_cogwheel,tag=kello.entity.type.small,tag=!kello.static                ] if score @s kello.player.id = #local kello.player.id if score @s kello.entity.state matches 1 run scoreboard players set #boolean kello.value 2
execute as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=aj.cogwheel.root,tag=kello.entity.type.thrown_cogwheel,tag=kello.entity.type.small,tag=!kello.static,distance=4..   ] if score @s kello.player.id = #local kello.player.id if score @s kello.entity.state matches 0000 at @s run tag @s add kello.state.force_recoil
execute as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=aj.cogwheel.root,tag=kello.entity.type.thrown_cogwheel,tag=kello.entity.type.small,tag=!kello.static                ] if score @s kello.player.id = #local kello.player.id if score @s kello.entity.state matches 3..4 at @s run tag @s add kello.state.force_recoil



# Dereference

tag @s remove kello.entity.player.target



# SFX

execute if score #boolean kello.value matches 1 at @s run function kello:generic/sfx/cog_recoil/small
execute if score #boolean kello.value matches 0 run playsound minecraft:block.note_block.guitar master @s ^-1 ^ ^-.25 0.56 1 0