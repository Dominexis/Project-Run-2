# Tellraws

tellraw @a[tag=pr.target,tag=kello.player.operator] ["",{"text":"[Cogwheel] Previous Entity Datas :","bold":true,"color":"#A460D2"},"\n",{"text":"rotation offset x : ","color":"gold"},{"score":{"name":"@s","objective":"kello.decal.rot_x"},"color":"gold"},"\n",{"text":"rotation offset y :","color":"gold"},{"score":{"name":"@s","objective":"kello.decal.rot_y"},"color":"gold"},"\n",{"text":"rotation offset z : ","color":"gold"},{"score":{"name":"@s","objective":"kello.decal.rot_z"},"color":"gold"},"\n",{"text":"rotation mode : ","color":"dark_aqua"},{"score":{"name":"@s","objective":"kello.decal.rot_mode"},"color":"dark_aqua"},"\n",{"text":"rotation speed (divideable by 3) : ","color":"blue"},{"score":{"name":"@s","objective":"kello.decal.rot_mode"},"color":"blue"}]



# Send from fakeplayer

scoreboard players operation @s kello.decal.rot_x = #rot_x kello.value
scoreboard players operation @s kello.decal.rot_y = #rot_y kello.value
scoreboard players operation @s kello.decal.rot_z = #rot_z kello.value
scoreboard players operation @s kello.decal.rot_mode = #rot_mode kello.value
scoreboard players operation @s kello.decal.rot_speed = #rot_speed kello.value



# Calculate

scoreboard players operation #rot_keyframes kello.value = @s kello.decal.rot_speed
scoreboard players operation #rot_keyframes kello.value /= #3 kello.value

scoreboard players operation @s kello.decal.rot_keyframe_00 = #rot_keyframes kello.value
scoreboard players operation @s kello.decal.rot_keyframe_00 *= #2 kello.value
scoreboard players operation @s kello.decal.rot_keyframe_01 = #rot_keyframes kello.value




# Initialize

data modify storage kello:value tag.decal.transformation set from entity @s transformation





# Push data

function kello:entity/generic/axis_with_deg_magnitude

data modify entity @s transformation set from storage kello:value tag.decal.transformation