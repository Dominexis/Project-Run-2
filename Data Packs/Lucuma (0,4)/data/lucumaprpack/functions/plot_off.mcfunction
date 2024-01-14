execute at @e[type=minecraft:marker,tag=LucumaExitDoor,tag=pr.target] run clone ~ ~-4 ~-1 ~ ~-2 ~1 ~ ~ ~-1

setblock ~-33 ~1 ~0 minecraft:lectern[facing=east]
setblock ~32 ~1 ~0 minecraft:lectern[facing=west]

kill @e[type=minecraft:marker,tag=pr.target,tag=LucumaExitDoor]
return 1