execute positioned as @s run particle minecraft:poof ~ ~ ~ 0.425 0.425 0.425 0.02 6 force @a[distance=..24,tag=pr.target]

execute if score @s kello.decal.state matches 1 at @s summon minecraft:marker run function kello:entity/decal/contraption_controller/state/run/children/large_particle_init
execute if score @s kello.decal.state matches 3 at @s summon minecraft:marker run function kello:entity/decal/contraption_controller/state/run/children/large_particle_init
return 1