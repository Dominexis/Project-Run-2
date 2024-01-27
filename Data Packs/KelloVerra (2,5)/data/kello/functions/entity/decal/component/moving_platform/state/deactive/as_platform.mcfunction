execute if score #local kello.decal.state matches 0 positioned as @s if entity @a[distance=..16] run function kello:tick/aj/moving_platform
execute if score #local kello.decal.state matches 1 positioned as @s if entity @a[distance=..16] run function kello:tick/aj/dangling_platform

execute on passengers if entity @s[tag=kello.entity.part.indicator] run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351944}
return 1