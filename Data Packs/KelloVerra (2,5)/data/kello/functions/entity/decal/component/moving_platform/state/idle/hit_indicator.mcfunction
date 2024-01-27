scoreboard players remove #local kello.decal.sequence 1

# execute positioned as @s run tp @s ~ ~ ~ ~90 ~

execute if score #local kello.decal.sequence matches 15 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351950}
execute if score #local kello.decal.sequence matches 14 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351954}
execute if score #local kello.decal.sequence matches 13 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351955}
execute if score #local kello.decal.sequence matches 12 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351955}
execute if score #local kello.decal.sequence matches 11 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351955}
execute if score #local kello.decal.sequence matches 10 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351955}
execute if score #local kello.decal.sequence matches 9 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351954}
execute if score #local kello.decal.sequence matches 8 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351954}
execute if score #local kello.decal.sequence matches 7 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351953}
execute if score #local kello.decal.sequence matches 6 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351953}
execute if score #local kello.decal.sequence matches 5 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351952}
execute if score #local kello.decal.sequence matches 4 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351951}
execute if score #local kello.decal.sequence matches 3 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351951}
execute if score #local kello.decal.sequence matches 2 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351950}
execute if score #local kello.decal.sequence matches 1 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351949}

execute if score #local kello.decal.sequence matches 0 run item replace entity @s container.0 with minecraft:leather_helmet{CustomModelData:351944}
execute if score #local kello.decal.sequence matches 0 run scoreboard players set #local kello.decal.sequence -1
return 1