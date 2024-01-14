execute if score #local kello.entity.timer <= @s kello.entity.timer run function kello:entity/decal/loading_controller/state/run/children/component/animwheel/trigger
execute if score #local kello.entity.timer matches ..8 run function kello:entity/decal/loading_controller/state/run/children/component/animwheel/trigger_end
return 1