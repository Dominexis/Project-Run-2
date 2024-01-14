
execute if score @s kello.decal.rot_speed matches 0 run function kello:entity/decal/decwheel/animation/animwheel/resume_rotate/slow
execute if score @s kello.decal.rot_speed matches 1 run function kello:entity/decal/decwheel/animation/animwheel/resume_rotate/fast
return 1