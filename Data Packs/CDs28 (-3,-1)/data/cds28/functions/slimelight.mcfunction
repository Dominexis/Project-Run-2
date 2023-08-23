#summon a invisible slime with glowing to mark the bumper block
execute unless entity @e[type=minecraft:slime,distance=..1,tag=pr.target] if entity @a[distance=..16,tag=pr.target] run summon slime ~ ~0.25 ~ {NoGravity:1b,Invulnerable:1b,Glowing:1b,NoAI:1b,PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:1999980,ShowParticles:0b}]}
#kills the glowing slime if the player is too far (16 blocks)
execute unless entity @a[distance=..16,tag=pr.target] as @e[type=minecraft:slime,distance=..1,tag=pr.target] at @s run tp @s ~ -500 ~