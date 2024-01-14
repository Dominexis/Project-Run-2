# Assign scores

scoreboard players operation @s kello.entity.id = #global kello.entity.id
scoreboard players operation @s kello.aim.id = #global kello.aim.id
scoreboard players set @s kello.aim.count 0
scoreboard players set @s kello.aim.scale 100




# Assign tags

data merge entity @s {brightness:{block:15,sky:15},billboard:"center",view_range:15,text:'{"text":"\\ue001","font":"kello:aim_idle","obfuscated":true,"type":"text"}',background:16768734,Tags:["kello.entity","kello.entity.type.aimdicator","kello.entity.part.indicator","kello.entity.type.large","kello.entity.ticking"]}
return 1