scoreboard players remove #local kello.decal.sequence 1

# execute positioned as @s run tp @s ~ ~ ~ ~90 ~

execute if score #local kello.decal.sequence matches 19 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351925}
execute if score #local kello.decal.sequence matches 18 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351926}
execute if score #local kello.decal.sequence matches 17 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351927}
execute if score #local kello.decal.sequence matches 16 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351928}
execute if score #local kello.decal.sequence matches 15 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351929}
execute if score #local kello.decal.sequence matches 14 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351930}
execute if score #local kello.decal.sequence matches 13 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351931}
execute if score #local kello.decal.sequence matches 12 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351932}
execute if score #local kello.decal.sequence matches 11 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351933}
execute if score #local kello.decal.sequence matches 10 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351934}
execute if score #local kello.decal.sequence matches 9 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351935}
execute if score #local kello.decal.sequence matches 8 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351936}
execute if score #local kello.decal.sequence matches 7 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351937}
execute if score #local kello.decal.sequence matches 6 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351938}
execute if score #local kello.decal.sequence matches 5 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351939}
execute if score #local kello.decal.sequence matches 4 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351940}
execute if score #local kello.decal.sequence matches 3 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351941}
execute if score #local kello.decal.sequence matches 2 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351942}
execute if score #local kello.decal.sequence matches 1 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351943}
execute if score #local kello.decal.sequence matches 0 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351944}
execute if score #local kello.decal.sequence matches 0 run scoreboard players set #local kello.decal.sequence -1
return 1