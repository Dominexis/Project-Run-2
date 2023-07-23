# ,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.25f,0.25f,0.25f],scale:[0.5f,0.5f,0.5f]}
summon block_display ~ ~ ~ {Tags:["init","ykw"],block_state:{Name:"minecraft:stone"}}
data modify entity @e[type=block_display,tag=init,limit=1] block_state.Name set from entity @s Item.id
tag @e[type=block_display,tag=init,limit=1] remove init

setblock ~ ~ ~ barrier
kill @s