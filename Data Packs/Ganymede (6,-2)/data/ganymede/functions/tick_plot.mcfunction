execute as @a[tag=pr.target] store result score @s ganymede.redlenscount run clear @s minecraft:red_stained_glass_pane{Tags:["ganymede.redlens"]} 0
execute as @a[tag=pr.target] if score @s ganymede.redlenscount matches 2.. run clear @s minecraft:red_stained_glass_pane{Tags:["ganymede.redlens"]}
execute as @a[tag=pr.target] store result score @s ganymede.yellowlenscount run clear @s minecraft:yellow_stained_glass_pane{Tags:["ganymede.yellowlens"]} 0
execute as @a[tag=pr.target] if score @s ganymede.yellowlenscount matches 2.. run clear @s minecraft:yellow_stained_glass_pane{Tags:["ganymede.yellowlens"]}
execute as @a[tag=pr.target] store result score @s ganymede.bluelenscount run clear @s minecraft:blue_stained_glass_pane{Tags:["ganymede.bluelens"]} 0
execute as @a[tag=pr.target] if score @s ganymede.bluelenscount matches 2.. run clear @s minecraft:blue_stained_glass_pane{Tags:["ganymede.bluelens"]}

item replace entity @a[tag=pr.target] hotbar.0 with minecraft:red_stained_glass_pane{display:{Name:'{"text":"Red Lens","color":"red","bold":true,"italic":false,"type":"text"}'},Tags:["ganymede.redlens"],HideFlags:1}
item replace entity @a[tag=pr.target] hotbar.1 with minecraft:yellow_stained_glass_pane{display:{Name:'{"text":"Yellow Lens","color":"yellow","bold":true,"italic":false,"type":"text"}'},Tags:["ganymede.yellowlens"],HideFlags:1}
item replace entity @a[tag=pr.target] hotbar.2 with minecraft:blue_stained_glass_pane{display:{Name:'{"text":"Blue Lens","color":"blue","bold":true,"italic":false,"type":"text"}'},Tags:["ganymede.bluelens"],HideFlags:1}
kill @e[type=minecraft:item,tag=pr.target,tag=!processed,nbt={Item:{tag:{Tags:["ganymede.redlens"]}}}]
kill @e[type=minecraft:item,tag=pr.target,tag=!processed,nbt={Item:{tag:{Tags:["ganymede.yellowlens"]}}}]
kill @e[type=minecraft:item,tag=pr.target,tag=!processed,nbt={Item:{tag:{Tags:["ganymede.bluelens"]}}}]
tag @e[type=minecraft:item,tag=pr.target,tag=!processed] add processed

execute at @e[tag=ganymede.blue,tag=pr.target] run setblock ~ ~ ~ minecraft:stripped_warped_hyphae
execute at @e[tag=ganymede.yellow,tag=pr.target] run setblock ~ ~ ~ minecraft:stripped_birch_wood
execute at @e[tag=ganymede.red,tag=pr.target] run setblock ~ ~ ~ minecraft:stripped_mangrove_wood
execute at @a[tag=pr.target,nbt={SelectedItem:{tag:{Tags:["ganymede.bluelens"]}}}] at @e[distance=..5,tag=ganymede.blue,tag=pr.target] run setblock ~ ~ ~ minecraft:moving_piston
execute at @a[tag=pr.target,nbt={SelectedItem:{tag:{Tags:["ganymede.yellowlens"]}}}] at @e[distance=..5,tag=ganymede.yellow,tag=pr.target] run setblock ~ ~ ~ minecraft:moving_piston
execute at @a[tag=pr.target,nbt={SelectedItem:{tag:{Tags:["ganymede.redlens"]}}}] at @e[distance=..5,tag=ganymede.red,tag=pr.target] run setblock ~ ~ ~ minecraft:moving_piston
execute at @e[tag=ganymede.end_point] as @a[distance=...75] run function pr:player/finish

execute positioned ~-27 ~-8 ~27 run tp @a[distance=..3,tag=pr.target] ~-1 ~9 ~-4 0 0
return 1