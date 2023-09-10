summon marker ~ ~ ~ {Tags:["rng"]}
execute store result score random jpmagic.tmp run data get entity @e[type=marker,tag=pr.target,tag=rng,limit=1] UUID[0]
scoreboard players operation random jpmagic.tmp %= 10 jpmagic.constant
kill @e[type=marker,tag=pr.target,tag=rng,limit=1]
scoreboard players set @s countdown 2