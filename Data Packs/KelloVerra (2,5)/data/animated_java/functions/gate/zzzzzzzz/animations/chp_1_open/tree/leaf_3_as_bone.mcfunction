execute if entity @s[tag=aj.gate.locator_origin.locator] at @s on origin run tp @s ^-0.06205 ^-0.4185 ^-0.00965 ~0 ~0
execute if entity @s[tag=aj.gate.bone.aura] run data modify entity @s {} merge value {transformation:[-4.666666666666667f,0.0f,5.715018396020982e-16f,-0.06205459474371351f,0.0f,4.666666666666667e-05f,0.0f,-0.41849999999999987f,-5.715018396020982e-16f,0.0f,-4.666666666666667f,-0.00964962102059495f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.gate.bone.root] run data modify entity @s {} merge value {transformation:[-4.670833333333333f,0.0f,5.720121091017429e-16f,-0.06205459474371351f,0.0f,4.670833333333333f,0.0f,-0.41849999999999987f,-5.720121091017429e-16f,0.0f,-4.670833333333333f,-0.00964962102059495f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
return 1