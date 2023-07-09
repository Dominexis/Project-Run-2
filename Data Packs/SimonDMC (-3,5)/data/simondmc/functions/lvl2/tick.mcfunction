### Level 2

# Pick up crossbow
execute at @e[tag=pr.target,tag=sdmc.display-crossbow] as @a[distance=..1.3,tag=pr.target,nbt=!{Inventory:[{id:"minecraft:crossbow"}]}] run function simondmc:lvl2/replace_crossbow

# Replenish crossbow
execute at @e[tag=pr.target,tag=sdmc.display-crossbow] as @a[distance=..1.3,tag=pr.target,nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:0b}}]}] run function simondmc:lvl2/replace_crossbow