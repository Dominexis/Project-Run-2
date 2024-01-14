# Get coordinates

data modify storage pr:data tag.Pos set from entity @s Pos
execute store result score #x pr.value run data get storage pr:data tag.Pos[0]
execute store result score #z pr.value run data get storage pr:data tag.Pos[2]

scoreboard players add #x pr.value 32768
scoreboard players add #z pr.value 32768
scoreboard players operation #x pr.value %= #65536 pr.value
scoreboard players operation #z pr.value %= #65536 pr.value
scoreboard players remove #x pr.value 32768
scoreboard players remove #z pr.value 32768
scoreboard players operation #x pr.value /= #96 pr.value
scoreboard players operation #z pr.value /= #96 pr.value

scoreboard players operation #math_x pr.value = #x pr.value
scoreboard players add #math_x pr.value 16
scoreboard players operation #math_z pr.value = #z pr.value
scoreboard players add #math_z pr.value 16
scoreboard players operation #math_z pr.value *= #64 pr.value

scoreboard players operation #plot pr.value = #math_x pr.value
scoreboard players operation #plot pr.value += #math_z pr.value

tellraw @s[scores={coords=1..}] [{"text":"You are in plot: ","color":"green","type":"text"},{"score":{"name":"#x","objective":"pr.value"},"color":"gold","type":"score"},{"text":", ","color":"gold","type":"text"},{"score":{"name":"#z","objective":"pr.value"},"color":"gold","type":"score"},{"text":", ID: ","color":"green","type":"text"},{"score":{"name":"#plot","objective":"pr.value"},"color":"gold","type":"score"}]

scoreboard players set @s coords 0
return 1