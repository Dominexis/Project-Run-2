scoreboard players set correct inquognito.keypad 1

execute unless entity @s[tag=inquognitokeyused] run playsound minecraft:entity.player.levelup block @a[tag=pr.target] ~ ~ ~ 2 1 0
execute unless entity @s[tag=inquognitokeyused] run scoreboard players add goal inquognito.keypad 1

tag @s add inquognitokeyused

execute if score goal inquognito.keypad matches 1 run tag @a[tag=pr.target,sort=nearest,limit=1] add inquognito.clearance.nova

return 1