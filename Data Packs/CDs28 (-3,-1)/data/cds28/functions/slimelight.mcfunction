#summon a invisible slime with glowing to mark the bumper block
execute unless entity @e[type=minecraft:slime,distance=..1,tag=pr.target] if entity @a[distance=..16,tag=pr.target] run summon minecraft:slime ~ ~0.25 ~ {Team:"pr.no_collision",NoGravity:1b,Invulnerable:1b,Glowing:1b,NoAI:1b,PersistenceRequired:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:1999980,show_particles:0b}]}
#kills the glowing slime if the player is too far (16 blocks)
execute unless entity @a[distance=..16,tag=pr.target] as @e[type=minecraft:slime,distance=..1,tag=pr.target] at @s run tp @s ~ -500 ~
return 1