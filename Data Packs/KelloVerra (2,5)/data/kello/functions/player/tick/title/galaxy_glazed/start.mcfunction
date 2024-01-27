scoreboard players set @s kello.player.title_state 0
scoreboard players set @s kello.player.title_progress 0
scoreboard players set @s[scores={kello.player.title_timer=..0}] kello.player.title_timer 1

title @s clear

tag @s remove kello.death.was_transitioning
return 1