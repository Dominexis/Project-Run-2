say snek

#execute if entity @s[tag=kello.player.flee_revertable] run function kello:player/flee/revert
scoreboard players add @s kello.player.sneak_time 1
scoreboard players set @s kello.player.sneak 0