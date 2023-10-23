execute rotated as @s run tp @s ~ ~ ~ ~-180 0
execute rotated as @s on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin positioned as @s run tp @s ~ ~ ~

execute rotated as @s if entity @s[tag=kello.entity.type.z] on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin on passengers positioned as @s if entity @s[tag=kello.entity.part.indicator] run tp @s ~ ~ ~ ~ ~
execute rotated as @s if entity @s[tag=kello.entity.type.x] on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin on passengers positioned as @s if entity @s[tag=kello.entity.part.indicator] run tp @s ~ ~ ~ ~-90 ~