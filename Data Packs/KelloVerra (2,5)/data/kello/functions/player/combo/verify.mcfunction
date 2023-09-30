# Remove timer

scoreboard players remove @s[scores={kello.player.l_combo_timer=1..}] kello.player.l_combo_timer 1
scoreboard players remove @s[scores={kello.player.r_combo_timer=1..}] kello.player.r_combo_timer 1




# Reset combos

execute if score @s kello.player.l_combo_timer matches 0 run function kello:player/combo/large_reset
execute if score @s kello.player.r_combo_timer matches 0 run function kello:player/combo/small_reset