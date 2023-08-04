execute as @a[tag=pr.target] store result score @s ganymede.redlenscount run clear @s red_stained_glass_pane{Tags:[ganymede.redlens]} 0
execute as @a[tag=pr.target] if score @s ganymede.redlenscount matches 2.. run clear @s red_stained_glass_pane{Tags:[ganymede.redlens]}
execute as @a[tag=pr.target] store result score @s ganymede.yellowlenscount run clear @s yellow_stained_glass_pane{Tags:[ganymede.yellowlens]} 0
execute as @a[tag=pr.target] if score @s ganymede.yellowlenscount matches 2.. run clear @s yellow_stained_glass_pane{Tags:[ganymede.yellowlens]}
execute as @a[tag=pr.target] store result score @s ganymede.bluelenscount run clear @s blue_stained_glass_pane{Tags:[ganymede.bluelens]} 0
execute as @a[tag=pr.target] if score @s ganymede.bluelenscount matches 2.. run clear @s blue_stained_glass_pane{Tags:[ganymede.bluelens]}

item replace entity @a[tag=pr.target] hotbar.0 with minecraft:red_stained_glass_pane{display:{Name:'{"text":"Red Lens","color":"red","bold":true,"italic":false}'},Tags:[ganymede.redlens],HideFlags:1}
item replace entity @a[tag=pr.target] hotbar.1 with minecraft:yellow_stained_glass_pane{display:{Name:'{"text":"Yellow Lens","color":"yellow","bold":true,"italic":false}'},Tags:[ganymede.yellowlens],HideFlags:1}
item replace entity @a[tag=pr.target] hotbar.2 with minecraft:blue_stained_glass_pane{display:{Name:'{"text":"Blue Lens","color":"blue","bold":true,"italic":false}'},Tags:[ganymede.bluelens],HideFlags:1}
kill @e[type=item,tag=pr.target,tag=!processed,nbt={Item:{tag:{Tags:[ganymede.redlens]}}}]
kill @e[type=item,tag=pr.target,tag=!processed,nbt={Item:{tag:{Tags:[ganymede.yellowlens]}}}]
kill @e[type=item,tag=pr.target,tag=!processed,nbt={Item:{tag:{Tags:[ganymede.bluelens]}}}]
tag @e[type=item,tag=pr.target,tag=!processed] add processed

execute at @e[tag=ganymede.blue,tag=pr.target] run setblock ~ ~ ~ minecraft:stripped_warped_hyphae
execute at @e[tag=ganymede.yellow,tag=pr.target] run setblock ~ ~ ~ minecraft:stripped_birch_wood
execute at @e[tag=ganymede.red,tag=pr.target] run setblock ~ ~ ~ minecraft:stripped_mangrove_wood
execute at @a[nbt={SelectedItem:{tag:{Tags:[ganymede.bluelens]}}},tag=pr.target] at @e[tag=ganymede.blue,distance=..5,tag=pr.target] run setblock ~ ~ ~ minecraft:moving_piston
execute at @a[nbt={SelectedItem:{tag:{Tags:[ganymede.yellowlens]}}},tag=pr.target] at @e[tag=ganymede.yellow,distance=..5,tag=pr.target] run setblock ~ ~ ~ minecraft:moving_piston
execute at @a[nbt={SelectedItem:{tag:{Tags:[ganymede.redlens]}}},tag=pr.target] at @e[tag=ganymede.red,distance=..5,tag=pr.target] run setblock ~ ~ ~ minecraft:moving_piston
execute at @e[tag=ganymede.end_point] as @a[distance=...75] run function pr:player/finish