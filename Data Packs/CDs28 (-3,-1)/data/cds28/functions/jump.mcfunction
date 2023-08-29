#summon a negative radius creeper 67 blocks under the bumper block (empty space) and teleports the player 67 blocks under to catch the impulse from the explosion (next part executed in function rejump)
# summon minecraft:creeper ~ ~-67 ~ {Silent:1b,Invulnerable:1b,ExplosionRadius:-1b,Fuse:0s,PersistenceRequired:1b,Tags:["pr.target"]}
summon minecraft:creeper ~ ~-67 ~ {Silent:1b,Invulnerable:1b,ExplosionRadius:3b,Fuse:0s,PersistenceRequired:1b,Tags:["pr.target"]}
tag @s add jumping
scoreboard players add @s timerCDs 12
playsound minecraft:entity.firework_rocket.blast block @a[tag=pr.target] ~ ~ ~ 10 0.8
execute at @s run tp @s ~ ~-67 ~