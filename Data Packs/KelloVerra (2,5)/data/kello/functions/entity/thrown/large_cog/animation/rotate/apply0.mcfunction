execute as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=kello.entity.target] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:{axis:[0f,1f,0f],angle:2.094f}}}
scoreboard players set @s kello.entity.frame_00 9