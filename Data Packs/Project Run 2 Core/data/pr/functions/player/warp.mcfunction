# Teleport to the other area

scoreboard players set #boolean pr.value 0
execute positioned 0 0 0 if entity @s[distance=..32768] run scoreboard players set #boolean pr.value 1
execute if score #boolean pr.value matches 0 at @s run tp @s ~-65536 ~ ~
execute if score #boolean pr.value matches 1 at @s run tp @s ~65536 ~ ~
execute if score #boolean pr.value matches 0 run tellraw @s {"text":"You've been warped to the main build zone","color":"gold"}
execute if score #boolean pr.value matches 1 run tellraw @s {"text":"You've been warped to the temporary build zone","color":"gold"}

scoreboard players set @s warp 0