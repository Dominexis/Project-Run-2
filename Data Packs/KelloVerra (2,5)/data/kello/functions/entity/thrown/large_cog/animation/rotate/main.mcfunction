
scoreboard players remove @s kello.entity.frame_00 1
execute if score @s kello.entity.frame_00 matches 6 as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=kello.entity.target] run function kello:entity/thrown/small_cog/animation/rotate/apply1
execute if score @s kello.entity.frame_00 matches 3 as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=kello.entity.target] run function kello:entity/thrown/small_cog/animation/rotate/apply2
execute if score @s kello.entity.frame_00 matches ..0 run function kello:entity/thrown/small_cog/animation/rotate/apply0