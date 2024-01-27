scoreboard players set @s kello.player.title_state 1
scoreboard players set @s kello.player.title_progress 0
scoreboard players set @s[scores={kello.player.title_timer=..9}] kello.player.title_timer 10

title @s clear


tag @s add kello.player.progress.recoil_guide

tag @s remove kello.death.was_transitioning
return 1