item replace entity @s[tag=pr.target] armor.chest with elytra{HideFlags: 55, Unbreakable: 1, Enchantments: [{id: "minecraft:binding_curse", lvl: 1}, {id: "minecraft:vanishing_curse", lvl: 1}], tag: {map: 1}} 1
playsound item.armor.equip_leather master @s[tag=pr.target] ~ ~ ~ 100 1 1
title @s[tag=pr.target] actionbar {"text":"You equipped elytra","color":"gold","bold":true}
scoreboard players set @s aljaz.hotbar_timer 30
tag @s add pr.hide_timer