execute if score #local kello.entity.timer <= @s kello.entity.delay run function kello:entity/decal/loading_controller/state/loading/children/component/animwheel/trigger
execute if score #local kello.entity.timer matches ..8 run function kello:entity/decal/loading_controller/state/loading/children/component/animwheel/trigger_end
return 1