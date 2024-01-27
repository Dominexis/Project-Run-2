scoreboard players add @s kello.player.sfx_alt 1
scoreboard players set @s[scores={kello.player.sfx_alt=2..}] kello.player.sfx_alt 0
scoreboard players operation #sfx_alt kello.value = @s kello.player.sfx_alt

execute if score #sfx_progress kello.value matches 0 if score #sfx_alt kello.value matches 0 run playsound kello:large_cogwheel_launch0_alt master @s ~ ~ ~ 0.125 1 0.125
execute if score #sfx_progress kello.value matches 0 if score #sfx_alt kello.value matches 1 run playsound kello:large_cogwheel_launch0 master @s ~ ~ ~ 0.525 1 0.525
execute if score #sfx_progress kello.value matches 1 run playsound kello:large_cogwheel_launch1 master @s ~ ~ ~ 0.525 1.0001 0.525
execute if score #sfx_progress kello.value matches 2.. run playsound kello:large_cogwheel_launch2 master @s ~ ~ ~ 0.515 1.0025 0.515
return 1