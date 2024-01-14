# Right #
execute positioned ~18.5 ~29 ~33.5 run tag @a[distance=..20,tag=pr.target,scores={rko.checkpoint=0},sort=arbitrary] add rko_cp_particle
execute positioned ~16 ~29 ~32 if entity @a[tag=rko_cp_particle,sort=arbitrary] run function rko:particle/checkpoint/yellow/6x4

execute positioned ~18.5 ~29 ~33.5 run tag @a[distance=..20,tag=pr.target,scores={rko.checkpoint=1},sort=arbitrary] add rko_cp_particle
execute positioned ~16 ~29 ~32 if entity @a[tag=rko_cp_particle,sort=arbitrary] run function rko:particle/checkpoint/green/6x4

execute positioned ~17.5 ~29 ~-32 run tag @a[distance=..20,tag=pr.target,scores={rko.checkpoint=0..1},sort=arbitrary] add rko_cp_particle
execute positioned ~16 ~29 ~-34 if entity @a[tag=rko_cp_particle,sort=arbitrary] run function rko:particle/checkpoint/yellow/4x5

execute positioned ~17.5 ~29 ~-32 run tag @a[distance=..20,tag=pr.target,scores={rko.checkpoint=2},sort=arbitrary] add rko_cp_particle
execute positioned ~16 ~29 ~-34 if entity @a[tag=rko_cp_particle,sort=arbitrary] run function rko:particle/checkpoint/green/4x5

execute positioned ~30.5 ~41 ~19.5 run tag @a[distance=..20,tag=pr.target,scores={rko.checkpoint=2},sort=arbitrary] add rko_cp_particle
execute positioned ~29 ~41 ~18 if entity @a[tag=rko_cp_particle,sort=arbitrary] run function rko:particle/checkpoint/yellow/4x4

execute positioned ~30.5 ~41 ~19.5 run tag @a[distance=..20,tag=pr.target,scores={rko.checkpoint=3},sort=arbitrary] add rko_cp_particle
execute positioned ~29 ~41 ~18 if entity @a[tag=rko_cp_particle,sort=arbitrary] run function rko:particle/checkpoint/green/4x4

execute positioned ~22 ~108 ~5 run tag @a[distance=..20,tag=pr.target,scores={rko.checkpoint=3},sort=arbitrary] add rko_cp_particle
execute positioned ~20 ~108 ~3 if entity @a[tag=rko_cp_particle,sort=arbitrary] run function rko:particle/checkpoint/yellow/5x5

execute positioned ~22 ~108 ~5 run tag @a[distance=..20,tag=pr.target,scores={rko.checkpoint=4},sort=arbitrary] add rko_cp_particle
execute positioned ~20 ~108 ~3 if entity @a[tag=rko_cp_particle,sort=arbitrary] run function rko:particle/checkpoint/green/5x5

# Left #
execute positioned ~-20.5 ~29 ~33.5 run tag @a[distance=..20,tag=pr.target,scores={rko.checkpoint=0},sort=arbitrary] add rko_cp_particle
execute positioned ~-21 ~29 ~32 if entity @a[tag=rko_cp_particle,sort=arbitrary] run function rko:particle/checkpoint/yellow/6x4

execute positioned ~-20.5 ~29 ~33.5 run tag @a[distance=..20,tag=pr.target,scores={rko.checkpoint=1},sort=arbitrary] add rko_cp_particle
execute positioned ~-21 ~29 ~32 if entity @a[tag=rko_cp_particle,sort=arbitrary] run function rko:particle/checkpoint/green/6x4

execute positioned ~-18.5 ~29 ~-32 run tag @a[distance=..20,tag=pr.target,scores={rko.checkpoint=0..1},sort=arbitrary] add rko_cp_particle
execute positioned ~-19 ~29 ~-34 if entity @a[tag=rko_cp_particle,sort=arbitrary] run function rko:particle/checkpoint/yellow/4x5

execute positioned ~-18.5 ~29 ~-32 run tag @a[distance=..20,tag=pr.target,scores={rko.checkpoint=2},sort=arbitrary] add rko_cp_particle
execute positioned ~-19 ~29 ~-34 if entity @a[tag=rko_cp_particle,sort=arbitrary] run function rko:particle/checkpoint/green/4x5

execute positioned ~-31.5 ~41 ~19.5 run tag @a[distance=..20,tag=pr.target,scores={rko.checkpoint=2},sort=arbitrary] add rko_cp_particle
execute positioned ~-32 ~41 ~18 if entity @a[tag=rko_cp_particle,sort=arbitrary] run function rko:particle/checkpoint/yellow/4x4

execute positioned ~-31.5 ~41 ~19.5 run tag @a[distance=..20,tag=pr.target,scores={rko.checkpoint=3},sort=arbitrary] add rko_cp_particle
execute positioned ~-32 ~41 ~18 if entity @a[tag=rko_cp_particle,sort=arbitrary] run function rko:particle/checkpoint/green/4x4

execute positioned ~-22 ~108 ~5 run tag @a[distance=..20,tag=pr.target,scores={rko.checkpoint=3},sort=arbitrary] add rko_cp_particle
execute positioned ~-24 ~108 ~3 if entity @a[tag=rko_cp_particle,sort=arbitrary] run function rko:particle/checkpoint/yellow/5x5

execute positioned ~-22 ~108 ~5 run tag @a[distance=..20,tag=pr.target,scores={rko.checkpoint=4},sort=arbitrary] add rko_cp_particle
execute positioned ~-24 ~108 ~3 if entity @a[tag=rko_cp_particle,sort=arbitrary] run function rko:particle/checkpoint/green/5x5
return 1