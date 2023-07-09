### Clears a player's bone meal, plays a sound effect and replenishes both the barrel and the dripleaf
# Called by lvl3/tick
execute at @s run playsound block.fire.extinguish master @s
execute at @s run particle large_smoke ~ ~ ~ .2 .2 .2 0 10 normal
function simondmc:lvl3/reset_barrel
setblock ~27 ~25 ~17 big_dripleaf
clear @s bone_meal