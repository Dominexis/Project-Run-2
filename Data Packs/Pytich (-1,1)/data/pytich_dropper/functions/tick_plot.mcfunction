#Teleport player up to dropper
execute as @a[tag=pr.target,predicate=pytich_dropper:start] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[tag=pr.target,predicate=pytich_dropper:start] run tp @s ~-33 ~212 ~-32 -45 0

#Finish Forward
execute as @a[tag=pr.target,predicate=pytich_dropper:finish1] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[tag=pr.target,predicate=pytich_dropper:finish1] run tp @s ~-36 ~1 ~0 90 0

#Finish Left
execute as @a[tag=pr.target,predicate=pytich_dropper:finish2] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[tag=pr.target,predicate=pytich_dropper:finish2] run tp @s ~0 ~1 ~36 0 0