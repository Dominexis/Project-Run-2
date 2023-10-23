execute positioned as @s run particle minecraft:poof ~ ~ ~ 0.425 0.425 0.425 0.02 6 force @a[tag=pr.target,distance=..24]

execute if score @s kello.decal.state matches 1 at @s summon marker run function kello:entity/decal/contraption_controller/state/run/children/large_particle_init
execute if score @s kello.decal.state matches 3 at @s summon marker run function kello:entity/decal/contraption_controller/state/run/children/large_particle_init