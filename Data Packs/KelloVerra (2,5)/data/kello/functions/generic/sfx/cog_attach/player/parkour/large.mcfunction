playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 0.25 0.65 0
playsound minecraft:entity.player.attack.strong master @s ~ ~ ~ 0.35 0.65 0
playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.0475 0.1 0
playsound minecraft:block.amethyst_block.place master @s ~ ~ ~ 0.85 0.45 0
playsound minecraft:block.large_amethyst_bud.place master @s ~ ~ ~ 0.625 0.35 0
playsound minecraft:entity.player.big_fall master @s ~ ~ ~ 0.2 0.65 0
playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 0.5 0.65 0
playsound minecraft:item.axe.scrape master @s ~ ~ ~ 0.5 0.85 0
playsound minecraft:item.bottle.fill master @s ~ ~ ~ 0.2 0.25 0
playsound minecraft:block.lava.pop master @s ~ ~ ~ 0.3 0.85 0

scoreboard players add @s kello.player.sfx_alt 1
scoreboard players set @s[scores={kello.player.sfx_alt=2..}] kello.player.sfx_alt 0
scoreboard players operation #sfx_alt kello.value = @s kello.player.sfx_alt

scoreboard players operation #sfx_progress kello.value = @s kello.player.l_parkour_combo
scoreboard players operation @s kello.player.l_combo_timer = #combo_timer kello.value
scoreboard players add @s kello.player.l_parkour_combo 1

execute if score #sfx_progress kello.value matches 0 if score #sfx_alt kello.value matches 0 run playsound kello:large_cogwheel_attach_parkour0 master @s ~ ~ ~ 0.4425 1 0.4425
execute if score #sfx_progress kello.value matches 0 if score #sfx_alt kello.value matches 1 run playsound kello:large_cogwheel_attach_parkour0_alt master @s ~ ~ ~ 0.325 1 0.325
execute if score #sfx_progress kello.value matches 1 run playsound kello:large_cogwheel_attach_parkour1 master @s ~ ~ ~ 0.375 1 0.375
execute if score #sfx_progress kello.value matches 2.. if score #sfx_alt kello.value matches 0 run playsound kello:large_cogwheel_attach_parkour2 master @s ~ ~ ~ 0.35 1 0.35
execute if score #sfx_progress kello.value matches 2.. if score #sfx_alt kello.value matches 1 run playsound kello:large_cogwheel_attach_parkour2_alt master @s ~ ~ ~ 0.35 1 0.35
return 1