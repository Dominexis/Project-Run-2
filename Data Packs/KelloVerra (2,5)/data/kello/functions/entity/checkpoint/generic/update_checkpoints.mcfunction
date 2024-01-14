# Verify players

execute as @e[type=minecraft:item_display,tag=pr.target,tag=kello.entity.type.checkpoint] run function kello:entity/checkpoint/generic/update_individual
return 1