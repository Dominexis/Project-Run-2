execute if entity @s[tag=aj.gate.locator_origin.locator] at @s on origin run tp @s ^-0.30017 ^5.84859 ^-0.05867 ~0 ~0
execute if entity @s[tag=aj.gate.bone.aura] run data modify entity @s {} merge value {transformation:[-4.666666666666667e-05f,0.0f,5.715018396020982e-21f,-0.3001653907105978f,0.0f,4.666666666666667e-05f,0.0f,5.848594192690761f,-5.715018396020982e-21f,0.0f,-4.666666666666667e-05f,-0.058674192813408556f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.gate.bone.root] run data modify entity @s {} merge value {transformation:[-4.670833333333333f,0.0f,5.720121091017429e-16f,-0.3001653907105978f,0.0f,4.670833333333333f,0.0f,5.848594192690761f,-5.720121091017429e-16f,0.0f,-4.670833333333333f,-0.058674192813408556f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
return 1