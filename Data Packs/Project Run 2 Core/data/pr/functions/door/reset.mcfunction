# Reset door

scoreboard players set #door_timer pr.value 0

kill @e[type=minecraft:interaction,tag=pr.door_button]
kill @e[type=minecraft:item_display,tag=pr.door_button]
kill @e[type=minecraft:text_display,tag=pr.door_button]
kill @e[type=minecraft:text_display,tag=pr.door_title]

summon minecraft:interaction -49 1 40 {height:0.7,width:0.7,Tags:["pr.door_button"]}
summon minecraft:item_display -49 1 40 {Tags:["pr.door_button"],item:{id:"minecraft:red_concrete",Count:1b},interpolation_duration:10,start_interpolation:0,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4f,0.4f,0.4f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.1f,0.0f]}}
summon minecraft:text_display -49 1.5 40 {Tags:["pr.door_button"],text:'{"text":"Begin","color":"green","type":"text"}',Rotation:[90.0f,0.0f],background:0}

setblock -49 0 40 minecraft:granite_wall
clone -87 -14 9 -81 -5 17 -33 0 36
return 1