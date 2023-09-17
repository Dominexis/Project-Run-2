### Level 2

# Pick up crossbow
execute at @e[tag=pr.target,tag=sdmc.display-crossbow] as @a[distance=..1.3,tag=pr.target] store result score @s sdmc.item.crossbow run clear @s crossbow 0
execute at @e[tag=pr.target,tag=sdmc.display-crossbow] as @a[distance=..1.3,tag=pr.target,scores={sdmc.item.crossbow=0}] run function simondmc:lvl2/replace_crossbow

# Replenish crossbow
execute at @e[tag=pr.target,tag=sdmc.display-crossbow] as @a[distance=..1.3,tag=pr.target] store result score @s sdmc.item.crossbow run clear @s crossbow{Charged:0b} 0
execute at @e[tag=pr.target,tag=sdmc.display-crossbow] as @a[distance=..1.3,tag=pr.target,scores={sdmc.item.crossbow=1..}] run function simondmc:lvl2/replace_crossbow