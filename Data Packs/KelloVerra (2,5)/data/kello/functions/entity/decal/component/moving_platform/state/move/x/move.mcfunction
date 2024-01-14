tp @s ^0.125 ^ ^

execute store result score #x kello.value run data get entity @s Pos[0] 100



execute on passengers if entity @s[type=minecraft:snowball,tag=kello.entity.type.moving_platform] on origin positioned as @s run function kello:entity/decal/component/moving_platform/state/move/x/as_platform
return 1