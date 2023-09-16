# Detect players from the POV of checkpoint entities

execute positioned ~ ~0.3 ~ run tag @a[tag=pr.target,distance=..0.7] add frostcobra.closePlayer

# Testing inequality of last checkpoint (using temporary scoreboard), so the same checkpoint doesn't trigger every tick

execute as @a[tag=pr.target,tag=frostcobra.closePlayer] run scoreboard players operation @s frostcobra.lastCp2 = @s frostcobra.lastCp
scoreboard players operation @a[tag=pr.target,tag=frostcobra.closePlayer] frostcobra.lastCp2 -= @s frostcobra.cpId
tag @a[tag=pr.target,tag=frostcobra.closePlayer,scores={frostcobra.lastCp2=..-1}] add frostcobra.addCheckpoint
tag @a[tag=pr.target,tag=frostcobra.closePlayer,scores={frostcobra.lastCp2=1..}] add frostcobra.addCheckpoint
tag @a[tag=pr.target] remove frostcobra.closePlayer

# Trigger checkpoint effects

execute as @a[tag=pr.target,tag=frostcobra.addCheckpoint] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.4 1
execute at @a[tag=pr.target,tag=frostcobra.addCheckpoint] at @s run particle minecraft:happy_villager ~ ~0.7 ~ 0.5 0.5 0.5 0.3 10
execute as @a[tag=pr.target,tag=frostcobra.addCheckpoint] at @s run function pr:player/checkpoint/mark

# Remember checkpoint and finish

scoreboard players operation @a[tag=pr.target,tag=frostcobra.addCheckpoint] frostcobra.lastCp = @s frostcobra.cpId
tag @a[tag=pr.target] remove frostcobra.addCheckpoint
