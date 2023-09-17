### Clears a player's bone meal and plays a sound effect with particles
# Called by lvl3/tick
execute at @s run playsound block.fire.extinguish master @s
execute at @s run particle large_smoke ~ ~ ~ .2 .2 .2 0 10 normal
clear @s bone_meal