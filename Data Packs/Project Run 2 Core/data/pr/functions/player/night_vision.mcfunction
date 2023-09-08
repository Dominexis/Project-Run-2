# Toggle night vision

scoreboard players add @s pr.night_vision 1
execute if score @s pr.night_vision matches 2.. run scoreboard players set @s pr.night_vision 0

effect clear @s[team=pr.spectator,scores={pr.night_vision=0}] night_vision

tellraw @s[scores={pr.night_vision=0}] {"text":"Night vision disabled","color":"gold"}
tellraw @s[scores={pr.night_vision=1}] {"text":"Night vision enabled","color":"gold"}

scoreboard players set @s night_vision 0