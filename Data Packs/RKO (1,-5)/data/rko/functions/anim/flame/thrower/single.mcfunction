execute as @e[tag=pr.target,tag=rko_ft1,sort=arbitrary] run data merge entity @s {transformation:{scale:[2.0,2.0,7.0]},start_interpolation:-1,interpolation_duration:5}

execute positioned ~-14 ~113.5 ~25 run playsound rko:flame master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 1 1
execute positioned ~14 ~113.5 ~25 run playsound rko:flame master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 1 1