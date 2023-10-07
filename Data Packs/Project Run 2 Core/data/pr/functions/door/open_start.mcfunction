scoreboard players set #door_timer pr.value 1

execute positioned -49 0 40 run playsound minecraft:block.anvil.land master @a[distance=..40] ~ ~ ~ 10
execute positioned -49 0 40 run tellraw @a[distance=..40] {"text":"The door is opening!","color":"gold"}

kill @e[type=interaction,tag=pr.door_button]

data merge entity @e[type=item_display,tag=pr.door_button,limit=1] {item:{id:"minecraft:lime_concrete",Count:1b},interpolation_duration:3,start_interpolation:0,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4f,0.4f,0.4f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,-0.18f,0.0f]}}

summon text_display -34 -1 40.0 {brightness:{sky:15,block:0},Tags:["pr.door_title"],text:'{"text":"!","color":"red","bold":true}',Rotation:[90.0f,0.0f],background:0,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[35.0f,35.0f,35.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}