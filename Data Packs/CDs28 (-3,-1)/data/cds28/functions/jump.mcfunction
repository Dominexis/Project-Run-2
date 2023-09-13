#summon two creepers (1 and 2 radius) 1 block above the bumper block and teleports the player 1 block above to catch the impulse from the explosion, avoiding the obstacle of the block
# execute at @s run tp @s ~ ~1 ~
summon minecraft:creeper ~ ~1 ~ {Silent:1b,Invulnerable:1b,ExplosionRadius:1b,Fuse:0s,PersistenceRequired:1b}
summon minecraft:creeper ~ ~1 ~ {Silent:1b,Invulnerable:1b,ExplosionRadius:2b,Fuse:0s,PersistenceRequired:1b}
scoreboard players add @s timerCDs 12
playsound minecraft:entity.firework_rocket.launch ambient @a ~ ~ ~ 1 1.2
particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.3 100 force