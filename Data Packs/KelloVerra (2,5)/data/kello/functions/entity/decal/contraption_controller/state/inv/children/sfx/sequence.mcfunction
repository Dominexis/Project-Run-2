# Sound sequence delayed + timer dependant (timer doesnt need to be dynamic since the is already timed)
# TODO: THOUGHTs ABOUT COMPRESSING INTO A SINGLE OGG FILE (PROS=PERFORMANCE BABY,CONS=LESS FLEXIBLE) 

execute if score #local kello.entity.timer matches 57..66 run function kello:entity/decal/contraption_controller/state/inv/children/sfx/0
execute if score #local kello.entity.timer matches 42..57 run function kello:entity/decal/contraption_controller/state/inv/children/sfx/1
execute if score #local kello.entity.timer matches 25..41 run function kello:entity/decal/contraption_controller/state/inv/children/sfx/2
execute if score #local kello.entity.timer matches 17..24 run function kello:entity/decal/contraption_controller/state/inv/children/sfx/0
execute if score #local kello.entity.timer matches 24 run function kello:entity/decal/contraption_controller/state/inv/children/sfx/3
return 1