# Get coordinates

data modify storage pr:data tag.Pos set from entity @s Pos
execute store result score #x pr.value run data get storage pr:data tag.Pos[0]
execute store result score #y pr.value run data get storage pr:data tag.Pos[1]
execute store result score #z pr.value run data get storage pr:data tag.Pos[2]

scoreboard players add #x pr.value 32768
scoreboard players add #z pr.value 32768
scoreboard players operation #x pr.value %= #65536 pr.value
scoreboard players operation #z pr.value %= #65536 pr.value
scoreboard players remove #x pr.value 32768
scoreboard players remove #z pr.value 32768
scoreboard players add #x pr.value 8
scoreboard players add #z pr.value 8
scoreboard players operation #x pr.value %= #96 pr.value
scoreboard players operation #z pr.value %= #96 pr.value
scoreboard players remove #x pr.value 48
scoreboard players remove #z pr.value 48

tellraw @s [{"text":"Your relative coordinates are: ","color":"green","type":"text"},{"score":{"name":"#x","objective":"pr.value"},"color":"gold","type":"score"}," ",{"score":{"name":"#y","objective":"pr.value"},"color":"gold","type":"score"}," ",{"score":{"name":"#z","objective":"pr.value"},"color":"gold","type":"score"}]
return 1