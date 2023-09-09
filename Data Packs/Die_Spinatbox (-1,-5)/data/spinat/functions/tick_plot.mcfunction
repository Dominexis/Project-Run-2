effect give @a[tag=pr.target] resistance infinite 4 true
effect give @a[tag=pr.target] saturation infinite 24 true
effect give @a[tag=pr.target] night_vision infinite 0 true

execute as @a[tag=pr.target] at @s if block ~ ~-0.1 ~ diamond_block run function pr:player/finish