execute if block ~ ~ ~ air run setblock ~ ~ ~ barrier
# execute unless block ~ ~ ~ barrier unless block ~ ~ ~ #walls unless block ~ ~ ~ chain run kill @s

# execute if entity @s[nbt={block_state:{Name:'minecraft:cobblestone_wall'}}] at @s unless block ~ ~ ~ #walls run setblock ~ ~ ~ cobblestone_wall
# execute if entity @s[nbt={block_state:{Name:'minecraft:chain'}}] at @s unless block ~ ~ ~ chain run setblock ~ ~ ~ chain
# execute if entity @s[nbt={block_state:{Name:'minecraft:spruce_slab'}}] run data merge entity @s {block_state:{Name:"minecraft:spruce_slab",Properties:{type:"top"}}}
# execute if entity @s[nbt={block_state:{Name:'minecraft:ladder'}}] run data merge entity @s {block_state:{Name:"minecraft:ladder",Properties:{facing:"south"}}}
# execute if entity @s[nbt={block_state:{Name:'minecraft:ladder'}}] unless block ~ ~ ~ ladder run setblock ~ ~ ~ ladder[facing=south]
# execute if entity @s[nbt={block_state:{Name:'minecraft:ladder'}}] unless block ~ ~ ~ ladder run setblock ~ ~ ~ ladder[facing=south]
# execute if entity @s[nbt={block_state:{Name:'minecraft:iron_bars'}}] unless block ~ ~ ~ iron_bars run setblock ~ ~ ~ iron_bars
# execute if entity @s[nbt={block_state:{Name:'minecraft:cave_vines_plant'}}] unless block ~ ~ ~ cave_vines_plant run setblock ~ ~ ~ cave_vines_plant
# execute if entity @s[nbt={block_state:{Name:'minecraft:cave_vines'}}] unless block ~ ~ ~ cave_vines run setblock ~ ~ ~ cave_vines

