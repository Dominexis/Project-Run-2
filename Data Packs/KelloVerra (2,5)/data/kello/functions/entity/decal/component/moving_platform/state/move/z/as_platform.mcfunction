tp @s ^ ^ ^0.125
execute if score #local kello.decal.state matches 0 if entity @s[tag=aj.moving_platform.root] if entity @a[distance=..16] run function kello:tick/aj/moving_platform
execute if score #local kello.decal.state matches 1 if entity @s[tag=aj.dangling_platform.root] if entity @a[distance=..16] run function kello:tick/aj/dangling_platform