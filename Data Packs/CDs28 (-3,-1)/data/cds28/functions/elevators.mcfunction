#there are 6 elevators in total, 4 code lines for each one in this function
#this apply levitation effect in the elevator locations 
execute positioned ~5.0 ~26 ~-10.0 as @a[dx=0,dy=8,dz=0,tag=pr.target] run effect give @s minecraft:levitation 1 12 true
execute positioned ~2.0 ~53 ~-21.0 as @a[dx=0,dy=12,dz=0,tag=pr.target] run effect give @s minecraft:levitation 1 12 true
execute positioned ~24.0 ~18 ~23.0 as @a[dx=0,dy=9,dz=0,tag=pr.target] run effect give @s minecraft:levitation 1 12 true
execute positioned ~-26.0 ~33 ~31.0 as @a[dx=0,dy=15,dz=0,tag=pr.target] run effect give @s minecraft:levitation 1 12 true
execute positioned ~-18.0 ~16 ~16.0 as @a[dx=0,dy=12,dz=0,tag=pr.target] run effect give @s minecraft:levitation 1 12 true
execute positioned ~7.0 ~57 ~36.0 as @a[dx=0,dy=7,dz=0,tag=pr.target] run effect give @s minecraft:levitation 1 12 true
#this clears the levitation effect above the elevator locations
execute positioned ~5.0 ~35.5 ~-10.0 as @a[dx=0,dy=1,dz=0,tag=pr.target] run effect clear @s minecraft:levitation
execute positioned ~2.0 ~66.5 ~-21.0 as @a[dx=0,dy=1,dz=0,tag=pr.target] run effect clear @s minecraft:levitation
execute positioned ~24.0 ~28.50 ~23.0 as @a[dx=0,dy=1,dz=0,tag=pr.target] run effect clear @s minecraft:levitation
execute positioned ~-26.0 ~49.5 ~31.0 as @a[dx=0,dy=1,dz=0,tag=pr.target] run effect clear @s minecraft:levitation
execute positioned ~-18.0 ~29.50 ~16.0 as @a[dx=0,dy=1,dz=0,tag=pr.target] run effect clear @s minecraft:levitation
execute positioned ~7.0 ~65.5 ~36.0 as @a[dx=0,dy=1,dz=0,tag=pr.target] run effect clear @s minecraft:levitation
#this apply particles to mark the elevator locations for the player
particle minecraft:firework ~5.0 ~26.20 ~-10.0 0 0 0 0.2 1 normal
particle minecraft:firework ~2.0 ~53.20 ~-21.0 0 0 0 0.2 1 normal
particle minecraft:firework ~24.0 ~18.20 ~23.0 0 0 0 0.2 1 normal
particle minecraft:firework ~-26.0 ~33.20 ~31.0 0 0 0 0.2 1 normal
particle minecraft:firework ~-18.0 ~16.20 ~16.0 0 0 0 0.2 1 normal
particle minecraft:firework ~7.0 ~57.20 ~36.0 0 0 0 0.2 1 normal
#this apply sounds to mark the elevator locations for the player
playsound minecraft:block.candle.extinguish block @a[tag=pr.target] ~5.0 ~26.20 ~-10.0 0.4 2
playsound minecraft:block.candle.extinguish block @a[tag=pr.target] ~2.0 ~53.20 ~-21.0 0.4 2
playsound minecraft:block.candle.extinguish block @a[tag=pr.target] ~24.0 ~18.20 ~23.0 0.4 2
playsound minecraft:block.candle.extinguish block @a[tag=pr.target] ~-26.0 ~33.20 ~31.0 0.4 2
playsound minecraft:block.candle.extinguish block @a[tag=pr.target] ~-18.0 ~16.20 ~16.0 0.4 2
playsound minecraft:block.candle.extinguish block @a[tag=pr.target] ~7.0 ~57.20 ~36.0 0.4 2
return 1