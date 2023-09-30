
function kello:entity/decal/component/launchpad/spawn/score

tag @s add kello.decal.parent_target
execute positioned ^ ^ ^-.125 summon item_display run function kello:entity/decal/component/launchpad/spawn/mark/spawn
tag @s remove kello.decal.parent_target