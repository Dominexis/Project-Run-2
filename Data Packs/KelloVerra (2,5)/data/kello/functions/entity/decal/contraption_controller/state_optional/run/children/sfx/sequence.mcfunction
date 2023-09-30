# Sound sequence delayed + timer dependant (timer doesnt need to be dynamic since the is already timed)
# TODO: THOUGHTs ABOUT COMPRESSING INTO A SINGLE OGG FILE (PROS=PERFORMANCE BABY,CONS=LESS FLEXIBLE) 

execute if score #local kello.entity.timer matches 55..66 run function kello:entity/decal/contraption_controller/state_optional/run/children/sfx/0
execute if score #local kello.entity.timer matches 50..54 run function kello:entity/decal/contraption_controller/state_optional/run/children/sfx/1
execute if score #local kello.entity.timer matches 26..49 run function kello:entity/decal/contraption_controller/state_optional/run/children/sfx/2
execute if score #local kello.entity.timer matches 16..25 run function kello:entity/decal/contraption_controller/state_optional/run/children/sfx/0
execute if score #local kello.entity.timer matches 24 run function kello:entity/decal/contraption_controller/state_optional/run/children/sfx/3