scoreboard players add rcount cobra2.temp 1
execute if score rcount cobra2.temp matches ..60 positioned ~ ~-0.5 ~ unless block ~ ~ ~ minecraft:gray_concrete run function cobra2:tp_recursive2
execute at @s run tp @s ~ ~-1 ~

return 1