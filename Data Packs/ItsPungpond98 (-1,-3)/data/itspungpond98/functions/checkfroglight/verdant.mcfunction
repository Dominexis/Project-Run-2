execute if block ~36 ~15 ~-3 hopper{Items:[{Slot:0b,id:"minecraft:verdant_froglight",Count:2b},{Slot:1b,id:"minecraft:chorus_plant",Count:64b},{Slot:2b,id:"minecraft:chorus_plant",Count:64b},{Slot:3b,id:"minecraft:chorus_plant",Count:64b},{Slot:4b,id:"minecraft:chorus_plant",Count:64b}]} run scoreboard players set verdant itspungpond98.exit 1
execute positioned ~37 ~17 ~-2 as @a[dx=-4,dy=2,dz=5,tag=pr.target] at @s if score verdant itspungpond98.exit matches 1 run title @a[distance=..5,tag=pr.target] title [{"text": "Verdant Gate Opened!","color": "green"}]
execute positioned ~37 ~17 ~-2 as @a[dx=-4,dy=2,dz=5,tag=pr.target] at @s if score verdant itspungpond98.exit matches 1 run title @a[distance=..5,tag=pr.target] subtitle [{"text": "Please Go Through The Gate In 10 Seconds","color": "white"}]

execute if score verdant itspungpond98.exit matches 1..200 run data merge block ~36 ~15 ~-3 {Items:[{Slot:0b,id:"minecraft:verdant_froglight",Count:1b},{Slot:1b,id:"minecraft:chorus_plant",Count:64b},{Slot:2b,id:"minecraft:chorus_plant",Count:64b},{Slot:3b,id:"minecraft:chorus_plant",Count:64b},{Slot:4b,id:"minecraft:chorus_plant",Count:64b}]}
execute if score verdant itspungpond98.exit matches 1..200 run fill ~37 ~17 ~-1 ~37 ~19 ~1 air
execute if score verdant itspungpond98.exit matches 1..200 run scoreboard players add verdant itspungpond98.exit 1

execute if score verdant itspungpond98.exit matches 200.. run fill ~37 ~17 ~-1 ~37 ~17 ~1 mud_brick_wall
execute if score verdant itspungpond98.exit matches 200.. run fill ~37 ~18 ~-1 ~37 ~19 ~1 iron_bars

execute if score verdant itspungpond98.exit matches 201.. run scoreboard players set verdant itspungpond98.exit 0

execute positioned ~34 ~17 ~-4 as @e[type=item,dx=2,dy=2,dz=1,tag=pr.target] if entity @s[nbt=!{Item:{id:"minecraft:verdant_froglight"}}] run function itspungpond98:passitemerror/verdant