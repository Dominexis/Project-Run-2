execute at @e[type=marker,tag=LucumaExitDoor,tag=pr.target] run clone ~ ~-4 ~-1 ~ ~-2 ~1 ~ ~ ~-1

setblock ~-33 ~1 ~0 lectern[facing=east]
setblock ~32 ~1 ~0 lectern[facing=west]

kill @e[type=marker,tag=pr.target,tag=LucumaExitDoor]