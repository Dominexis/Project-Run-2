execute at @e[type=marker,tag=LucumaExitDoor,tag=pr.target] if block ^ ^ ^5 lectern[has_book=true ] unless block ~ ~ ~ air run playsound minecraft:entity.frog.ambient master @a ~ ~ ~ 1 0.5
execute at @e[type=marker,tag=LucumaExitDoor,tag=pr.target] if block ^ ^ ^5 lectern[has_book=true ] unless block ~ ~ ~ air run playsound minecraft:entity.frog.ambient master @a ~ ~ ~ 1 0.1
execute at @e[type=marker,tag=LucumaExitDoor,tag=pr.target] if block ^ ^ ^5 lectern[has_book=true ] unless block ~ ~ ~ air run fill ~ ~ ~-1 ~ ~2 ~1 air
execute at @e[type=marker,tag=LucumaExitDoor,tag=pr.target] if block ^ ^ ^5 lectern[has_book=false] if block ~ ~ ~ air run clone ~ ~-4 ~-1 ~ ~-2 ~1 ~ ~ ~-1


# execute at @e[type=minecraft:armor_stand,tag=LucumaExitDoor,tag=pr.target] positioned ~-1 ~ ~-1 as @a[dy=5,dz=-1,tag=pr.target,tag=!LucumaExitKey] run tellraw @s "It is not your time. Seek the answer."

# execute at @e[type=minecraft:armor_stand,tag=LucumaExitDoor,tag=pr.target] positioned ~-1 ~ ~-1 as @a[dy=5,dz=-1,tag=pr.target,tag=!LucumaExitKey] run tp @s ~2 ~3 ~


function lucumaprpack:resetchests

execute as @e[type=item,tag=pr.target,tag=!lucuma.processed] run function lucumaprpack:process_item

execute positioned ~-33 ~1 ~0 unless entity @a[distance=..10,tag=pr.target] run setblock ~ ~ ~ lectern[facing=east]
execute positioned ~032 ~1 ~0 unless entity @a[distance=..10,tag=pr.target] run setblock ~ ~ ~ lectern[facing=west]