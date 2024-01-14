execute unless entity @s[tag=kello.entity.part.platform_visual] run function kello:entity/decal/contraption_controller/state/run/children/component/chain_platform/frames
execute if entity @s[tag=kello.entity.part.platform_visual,tag=kello.visual.ticking] run function kello:entity/decal/contraption_controller/state/run/children/component/chain_platform/visual/verify
return 1