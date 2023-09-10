execute as @e[tag=pr.target,tag=rko_ft4,sort=arbitrary] run data merge entity @s {transformation:{scale:[2.0,2.0,2.0]},start_interpolation:-1,interpolation_duration:3}

execute positioned ~6 ~112.5 ~-7 run playsound rko:flame_retract master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 1 1
execute positioned ~-6 ~112.5 ~-12 run playsound rko:flame_retract master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 1.3 1