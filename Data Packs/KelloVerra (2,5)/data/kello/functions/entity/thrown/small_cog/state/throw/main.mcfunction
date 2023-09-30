# Simulate throw

tp @s ^ ^ ^1.65
execute positioned as @s rotated as @s on passengers run tp @s ~ ~ ~ ~ ~

scoreboard players remove @s kello.sound.timer 1
execute if score @s kello.sound.timer matches ..1 run function kello:entity/thrown/small_cog/state/throw/sfx