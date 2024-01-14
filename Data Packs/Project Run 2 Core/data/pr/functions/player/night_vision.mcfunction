# Toggle night vision

scoreboard players add @s pr.night_vision 1
execute if score @s pr.night_vision matches 2.. run scoreboard players set @s pr.night_vision 0

effect clear @s[scores={pr.night_vision=0},team=pr.spectator] minecraft:night_vision

tellraw @s[scores={pr.night_vision=0}] {"text":"Night vision disabled","color":"gold","type":"text"}
tellraw @s[scores={pr.night_vision=1}] {"text":"Night vision enabled","color":"gold","type":"text"}

scoreboard players set @s night_vision 0
return 1