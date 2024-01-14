execute if score @s fabulousfox_platform_steps < @s fabulousfox_platform_max_steps run function fabulousfox:platform/step
execute if score @s fabulousfox_platform_steps >= @s fabulousfox_platform_max_steps run function fabulousfox:platform/reverse
return 1