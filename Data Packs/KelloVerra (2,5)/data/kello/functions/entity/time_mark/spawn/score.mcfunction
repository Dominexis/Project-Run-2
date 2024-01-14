# Assign scores

scoreboard players operation @s kello.entity.id = #local kello.entity.id
scoreboard players set @s kello.entity.lifetime 1200
scoreboard players operation @s kello.entity.delay = #time_mark_timer kello.entity.timer




# Assign tags

data merge entity @s {transformation:{scale:[5.0f,5.0f,5.0f]},brightness:{block:15,sky:15},billboard:"center",view_range:15,text:'{"text":"\\ue001","font":"kello:timer/0","obfuscated":true,"type":"text"}',background:16768734,Tags:["kello.entity","kello.entity.type.time_mark","kello.entity.part.time","kello.entity.ticking"]}
return 1