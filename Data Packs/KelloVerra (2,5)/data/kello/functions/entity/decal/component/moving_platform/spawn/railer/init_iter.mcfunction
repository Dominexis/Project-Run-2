function kello:entity/decal/component/moving_platform/spawn/railer/iter

execute store result score #z kello.component.pos_2 run data get entity @s Pos[2] 100
execute store result score #x kello.component.pos_2 run data get entity @s Pos[0] 100

execute rotated as @s as @e[tag=kello.target,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~
kill @s