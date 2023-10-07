tag @s add kello.entity.low_lod_target
execute at @s on passengers run function kello:entity/decal/component/launchpad/state/low_lod/cancel_as
tag @s remove kello.entity.low_lod_target