execute as @e[type=!minecraft:player,tag=pr.target] at @s run function ykw:tick/entity
execute as @a[tag=pr.target] at @s run function ykw:tick/player

execute if score plot ykw.cooldown matches 0.. run scoreboard players remove plot ykw.cooldown 1

return 1