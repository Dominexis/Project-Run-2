execute unless score @s bnsd.sound.jungle matches ..-10 run scoreboard players add @s[tag=pr.target] bnsd.sound.jungle 1
execute unless score @s bnsd.sound.jungle matches ..-10 if entity @s[tag=bnsd.in2d] if block ~ ~ ~ minecraft:iron_trapdoor[waterlogged=true] run scoreboard players set @s bnsd.sound.jungle 1401
execute if score @s bnsd.sound.jungle matches 0 run stopsound @s master bansed:ambience.jungle_start
execute if score @s bnsd.sound.jungle matches 0 run playsound bansed:ambience.jungle_start master @s ~ ~ ~
execute if score @s bnsd.sound.jungle matches 130 run stopsound @s master bansed:ambience.jungle_loop
execute if score @s bnsd.sound.jungle matches 130 run playsound bansed:ambience.jungle_loop master @s ~ ~ ~
execute if score @s bnsd.sound.jungle matches 1323..1400 run scoreboard players set @s bnsd.sound.jungle 129
#execute if score @s bnsd.sound.jungle matches 362 run playsound bansed:ambience.jungle_loop master @s ~ ~ ~

execute if score @s bnsd.sound.jungle matches 1401.. run stopsound @s master bansed:ambience.jungle_loop
execute if score @s bnsd.sound.jungle matches 1401.. run playsound bansed:ambience.jungle_end master @s ~ ~ ~
execute if score @s bnsd.sound.jungle matches 1401.. run scoreboard players set @s bnsd.sound.jungle -100

 
