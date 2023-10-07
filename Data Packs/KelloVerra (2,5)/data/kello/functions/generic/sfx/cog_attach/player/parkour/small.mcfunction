scoreboard players add @s kello.player.sfx_alt 1
scoreboard players set @s[scores={kello.player.sfx_alt=2..}] kello.player.sfx_alt 0
scoreboard players operation #sfx_alt kello.value = @s kello.player.sfx_alt

scoreboard players operation #sfx_progress kello.value = @s kello.player.r_parkour_combo
scoreboard players operation @s kello.player.r_combo_timer = #combo_timer kello.value
scoreboard players add @s kello.player.r_parkour_combo 1

execute if score #sfx_progress kello.value matches 0 run playsound kello:small_cogwheel_attach_parkour0 master @s ~ ~ ~ 0.625 1 0.625
execute if score #sfx_progress kello.value matches 1 run playsound kello:small_cogwheel_attach_parkour1 master @s ~ ~ ~ 0.625 1 0.625
execute if score #sfx_progress kello.value matches 2.. if score #sfx_alt kello.value matches 0 run playsound kello:small_cogwheel_attach_parkour2 master @s ~ ~ ~ 0.625 1 0.625
execute if score #sfx_progress kello.value matches 2.. if score #sfx_alt kello.value matches 1 run playsound kello:small_cogwheel_attach_parkour2_alt master @s ~ ~ ~ 0.625 1 0.625