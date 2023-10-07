# Clear

tag @s add kello.empty

execute if score @s kello.decal.state matches 2 run function kello:entity/decal/decwheel/animation/stop_rotate_trn



# Empty-ize

scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #level_creation_mode kello.value 1
scoreboard players operation #local kello.level.id = @s kello.level.id
execute if entity @s[tag=kello.entity.type.cogwheel_shaft] run function kello:entity/decal/parkour_controller/state/idle/children/emptied

execute if entity @s[tag=kello.entity.type.cogwheel,tag=!kello.entity.part.extension] run function kello:entity/decal/parkour_controller/state/idle/children/init_gears
# execute if entity @s[tag=kello.entity.type.cogwheel_decshaft,tag=!kello.entity.part.extension] run function kello:entity/decal/parkour_controller/state/idle/children/init_decshaft
scoreboard players set #level_creation_mode kello.value 0
scoreboard players set #spawn_persistent kello.value 0
# execute as @e[type=item_display,tag=kello.entity.type.groundicator,distance=..4,sort=nearest,limit=1] run tag @s add kello.groundicator.persistent





# Tags

# tag @s[tag=kello.attach] add kello.empty
# tag @s[tag=kello.attach] remove kello.attach