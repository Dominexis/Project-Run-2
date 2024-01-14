#fabulousfox_platform_max_steps
#fabulousfox_platform_steps
#fabulousfox_platform_dir
scoreboard players add @s fabulousfox_platform_steps 1
execute if score @s fabulousfox_platform_dir matches 1 run tp @s ^ ^ ^0.1
execute if score @s fabulousfox_platform_dir matches -1 run tp @s ^ ^ ^-0.1
return 1