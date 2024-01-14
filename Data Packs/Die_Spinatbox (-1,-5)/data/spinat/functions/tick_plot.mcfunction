effect give @a[tag=pr.target] minecraft:resistance infinite 4 true
effect give @a[tag=pr.target] minecraft:saturation infinite 24 true
effect give @a[tag=pr.target] minecraft:night_vision infinite 0 true

execute as @a[tag=pr.target] at @s if block ~ ~-0.1 ~ minecraft:diamond_block run function pr:player/finish
return 1