item replace entity @s[tag=pr.target] armor.chest with minecraft:elytra{HideFlags:55,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],tag:{map:1}} 1
playsound minecraft:item.armor.equip_leather master @s[tag=pr.target] ~ ~ ~ 100 1 1
title @s[tag=pr.target] actionbar {"text":"You equipped elytra","color":"gold","bold":true,"type":"text"}
scoreboard players set @s aljaz.hotbar_timer 30
tag @s add pr.hide_timer
return 1