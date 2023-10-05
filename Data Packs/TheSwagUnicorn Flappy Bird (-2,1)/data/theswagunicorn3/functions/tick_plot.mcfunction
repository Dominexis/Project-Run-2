#Double Jump
execute as @a[tag=pr.target] store result score @s swag.fall_flying run data get entity @s FallFlying
execute as @a[tag=pr.target] store result score @s swag.elytra_count run clear @s elytra 0

execute as @a[tag=pr.target,scores={swag.fall_flying=0,swag.elytra_count=0}] run item replace entity @s armor.chest with elytra{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute as @a[tag=pr.target,scores={swag.fall_flying=1}] at @s run particle cloud ~ ~-1 ~ 0 0 0 0 15 force @a
execute as @a[tag=pr.target,scores={swag.fall_flying=1}] run effect give @s levitation 1 10 true
execute as @a[tag=pr.target,scores={swag.fall_flying=1}] run scoreboard players set @s swag.HalfSec 10
scoreboard players remove @a[tag=pr.target] swag.HalfSec 1
execute as @a[tag=pr.target,scores={swag.HalfSec=..0}] run effect clear @s levitation
execute as @a[tag=pr.target,scores={swag.fall_flying=1}] run clear @s elytra

#Kill
execute as @a[tag=pr.target,predicate=theswagunicorn3:died] run kill @s
execute as @a[tag=pr.target,predicate=theswagunicorn3:died2] run kill @s
execute as @a[tag=pr.target,predicate=theswagunicorn3:died3] run kill @s
execute as @a[tag=pr.target] at @s if block ~ ~1.8 ~ green_concrete run kill @s
execute as @a[tag=pr.target] at @s if block ~ ~1.8 ~ black_concrete run kill @s