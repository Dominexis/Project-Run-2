# Finding exit (using temporary scoreboard to test equality)

execute as @a[tag=pr.target] run scoreboard players operation @s frostcobra.tp2 = @s frostcobra.tp
scoreboard players operation @a[tag=pr.target] frostcobra.tp2 -= @s frostcobra.portals
tag @a[tag=pr.target,scores={frostcobra.tp2=0}] add frostcobra.teleported

# Trigger TP effects

execute at @a[tag=pr.target,tag=frostcobra.teleported] run particle minecraft:flash ~ ~ ~ 0 0 0 1 2 force
execute at @a[tag=pr.target,tag=frostcobra.teleported] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 2
tp @a[tag=pr.target,tag=frostcobra.teleported] ~ ~ ~
effect give @a[tag=pr.target,tag=frostcobra.teleported] minecraft:blindness 1 0 true
execute at @a[tag=pr.target,tag=frostcobra.teleported] run particle minecraft:flash ~ ~ ~ 0 0 0 1 2 force
execute at @a[tag=pr.target,tag=frostcobra.teleported] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 2

# Mark checkpoint automatically and finish

scoreboard players reset @a[tag=pr.target,tag=frostcobra.teleported] frostcobra.lastCp
execute as @a[tag=pr.target,tag=frostcobra.teleported] run function pr:player/checkpoint/mark
scoreboard players reset @a[tag=pr.target,tag=frostcobra.teleported] frostcobra.tp
tag @a[tag=pr.target] remove frostcobra.teleported

return 1