# Right #
clone ~15 ~26 ~14 ~22 ~34 ~16 ~16 ~26 ~14 replace force

clone ~26 ~26 ~14 ~33 ~34 ~16 ~25 ~26 ~14 replace force

execute if score hand rko.time matches 80 positioned ~25 ~34 ~15 run playsound rko:gate.close master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 0.4 1

# Left #
clone ~-15 ~26 ~14 ~-22 ~34 ~16 ~-23 ~26 ~14 replace force

clone ~-26 ~26 ~14 ~-33 ~34 ~16 ~-32 ~26 ~14 replace force

execute if score hand rko.time matches 80 positioned ~-25 ~34 ~15 run playsound rko:gate.close master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 0.4 1