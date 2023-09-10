summon marker ~ ~ ~ {Tags:["rng"]}
execute store result score random tmp run data get entity @e[type=marker,tag=rng,limit=1] UUID[0]
scoreboard players operation random tmp %= 10 constant
kill @e[type=marker,tag=rng,limit=1]
scoreboard players set @s countdown 2