execute if score #local kello.decal.state matches 0 positioned as @s if entity @a[distance=..16] run function kello:tick/aj/moving_platform
execute if score #local kello.decal.state matches 1 positioned as @s if entity @a[distance=..16] run function kello:tick/aj/dangling_platform
return 1