execute if entity @s[tag=aj.gate.locator_origin.locator] at @s on origin run tp @s ^0 ^0 ^0 ~0 ~0
execute if entity @s[tag=aj.gate.bone.root] run data modify entity @s {} merge value {transformation:[-4.670833333333333f,0.0f,5.720121091017429e-16f,0.0f,0.0f,4.670833333333333f,0.0f,0.0f,-5.720121091017429e-16f,0.0f,-4.670833333333333f,0.0f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
return 1