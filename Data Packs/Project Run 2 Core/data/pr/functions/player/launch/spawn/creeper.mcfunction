# Spawn creeper

summon minecraft:creeper ~ ~8192 ~ {Tags:["pr.launch","pr.entity.target.launch"],Team:"pr.no_collision",Silent:1b,Invulnerable:1b,ExplosionRadius:3b,Fuse:0s,PersistenceRequired:1b}







# Execute function recursively

scoreboard players remove #creepers_left pr.value 1
execute if score #creepers_left pr.value matches 1.. run function pr:player/launch/spawn/creeper
return 1