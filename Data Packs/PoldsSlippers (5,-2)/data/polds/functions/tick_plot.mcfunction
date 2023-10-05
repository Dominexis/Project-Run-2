# This function will run every tick while players are in your plot on the center block at Y=0
scoreboard players add timer polds.system 1
execute if score timer polds.system matches 5.. run function polds:mover_tick
execute if score timer polds.system matches 5.. run scoreboard players reset timer polds.system

# Reset after touching water
# (tagged to preserve execute location at plot origin)
execute as @a[tag=pr.target] at @s if block ~ ~ ~ water run tag @s add polds.watertp
tp @a[tag=polds.watertp,tag=pr.target] ~-38 ~1 ~ -90 0
execute as @a[tag=polds.watertp,tag=pr.target] at @s run playsound minecraft:entity.skeleton.hurt master @s
clear @a[tag=polds.watertp,tag=pr.target]
tag @a[tag=pr.target] remove polds.watertp

# Reset after touching lava
# (tagged to preserve execute location at plot origin)
execute as @a[tag=pr.target] at @s if block ~ ~ ~ lava run tag @s add polds.lavatp
tp @a[tag=polds.lavatp,tag=pr.target] ~-10 ~2 ~-3 -90 0
execute as @a[tag=polds.lavatp,tag=pr.target] at @s run playsound minecraft:entity.wither_skeleton.hurt master @s
clear @a[tag=polds.lavatp,tag=pr.target]
tag @a[tag=pr.target] remove polds.lavatp

# Reset after touching red nether brick /* red concrete would have been better however red nether brick allegedly looks better */
# (tagged to preserve execute location at plot origin)
execute as @a[tag=pr.target] at @s if block ~ ~ ~ red_nether_bricks run tag @s add polds.blocktp
execute as @a[tag=pr.target] at @s if block ~ ~-0.1 ~ red_nether_bricks run tag @s add polds.blocktp
tp @a[tag=polds.blocktp,tag=pr.target] ~-10 ~2 ~-3 -90 0
execute as @a[tag=polds.blocktp,tag=pr.target] at @s run playsound minecraft:entity.wither.hurt master @s
clear @a[tag=polds.blocktp,tag=pr.target]
tag @a[tag=pr.target] remove polds.blocktp

## interaction entities

# polds credit
execute as @e[tag=pr.target,tag=polds.poldscredit] on target run tellraw @s ["",{"text":"Section by "},{"text":"PoldsSlippers","color":"#277ECD"},{"text":"\n"},{"text":"YouTube","color":"red","clickEvent":{"action":"open_url","value":"https://youtube.com/@Polds"}},{"text":"\n"},{"text":"Twitter","color":"aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/PoldsSlippers"}}]
execute as @e[tag=pr.target,tag=polds.poldscredit] run data remove entity @s interaction

# simon credit
execute as @e[tag=pr.target,tag=polds.simoncredit] on target run tellraw @s ["",{"text":"Datapack and Design Help by"},{"text":" ","color":"#277ECD"},{"text":"SimonDMC","color":"green","clickEvent":{"action":"open_url","value":"https://simondmc.com"}}]
execute as @e[tag=pr.target,tag=polds.simoncredit] run data remove entity @s interaction

# sussy blocks
execute if block ~-18 ~ ~3 sand run setblock ~-18 ~ ~3 suspicious_sand{item:{id:"minecraft:carrot",Count:1b,tag:{display:{Name:'{"text":"Up","italic":false}'}}}}
execute if block ~-15 ~1 ~-6 gravel run setblock ~-15 ~1 ~-6 suspicious_gravel{item:{id:"minecraft:potato",Count:1b,tag:{display:{Name:'{"text":"Down","italic":false}'}}}}

# give brush
execute positioned ~26 ~7 ~4 as @a[distance=..0.8,nbt=!{Inventory:[{id:"minecraft:brush"}]}] run item replace entity @s hotbar.0 with brush{CanPlaceOn:["minecraft:suspicious_sand","minecraft:suspicious_gravel"],display:{Lore:['{"text":"Used to dig up ancient relics.","color":"#7C0008","italic":false}']},HideFlags:4,Unbreakable:1b}
kill @e[type=item,tag=pr.target,tag=!polds.processed,nbt={Item:{"id":"minecraft:brush"}}]
tag @e[type=item,tag=pr.target] add polds.processed

# brush particles
particle dust 1.000 0.843 0.000 1 ~26 ~7.5 ~4 0 0 0 1 0 normal