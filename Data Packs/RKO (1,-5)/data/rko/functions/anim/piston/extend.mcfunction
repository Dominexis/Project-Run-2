# Right #
clone ~26 ~11 ~20 ~33 ~17 ~26 ~25 ~11 ~20 replace move
clone ~32 ~11 ~20 ~32 ~17 ~26 ~33 ~11 ~20 replace force
fill ~31 ~11 ~20 ~31 ~17 ~26 minecraft:air replace minecraft:polished_andesite

playsound rko:piston.extend master @a[tag=pr.target,sort=arbitrary] ~30 ~14 ~23 2 1

# Left #
clone ~-26 ~11 ~20 ~-33 ~17 ~26 ~-32 ~11 ~20 replace move
clone ~-32 ~11 ~20 ~-32 ~17 ~26 ~-33 ~11 ~20 replace force
fill ~-31 ~11 ~20 ~-31 ~17 ~26 minecraft:air replace minecraft:polished_andesite

playsound rko:piston.extend master @a[tag=pr.target,sort=arbitrary] ~-30 ~14 ~23 2 1