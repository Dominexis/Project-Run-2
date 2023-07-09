### Extends the dripleaf in level 3 by simulating bone meal usage and starts a timer
# Called by lvl3/tick
setblock ~27 ~25 ~17 big_dripleaf_stem
setblock ~27 ~26 ~17 big_dripleaf
playsound item.bone_meal.use block @a[tag=pr.target] ~27 ~25 ~17
particle happy_villager ~27 ~25.5 ~17 .2 .2 .2 1 15 normal
scoreboard players set sdmc.leaf sdmc.sys 0
clear @s bone_meal