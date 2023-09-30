scoreboard players remove @s[scores={kello.player.title_timer=1..}] kello.player.title_timer 1

execute if score @s kello.player.title_state matches 0 run function kello:player/tick/title/galaxy_glazed/main
execute if score @s kello.player.title_state matches 1 run function kello:player/tick/title/galaxy_recoil_guide/main
execute if score @s kello.player.title_state matches 2 run function kello:player/tick/title/vine_spread/main