scoreboard players set fan rko.ambient 0

# Right #
execute positioned ~17.5 ~20 ~21.5 run playsound minecraft:ui.toast.out master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 1 0.8
execute positioned ~25.5 ~48 ~29.5 run playsound minecraft:ui.toast.out master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 1 0.8
execute positioned ~21 ~69 ~-1 run playsound minecraft:ui.toast.out master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 1 0.8

# Left #
execute positioned ~-17.5 ~20 ~21.5 run playsound minecraft:ui.toast.out master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 1 0.8
execute positioned ~-25.5 ~48 ~29.5 run playsound minecraft:ui.toast.out master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 1 0.8
execute positioned ~-21 ~69 ~-1 run playsound minecraft:ui.toast.out master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 1 0.8
return 1