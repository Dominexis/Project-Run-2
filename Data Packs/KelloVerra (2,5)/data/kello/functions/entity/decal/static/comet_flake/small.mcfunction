# summon item_display ~ ~ ~ {Tags:["kello.target.new","kello.decal","kello.decal.type.comet_flake","pr.ignore","kello.exclude","aj.comet_flake.root"],Passengers:[{Tags:["kello.target.new","kello.decal","kello.decal.type.comet_flake","pr.ignore","kello.exclude","aj.comet_flake.bone"],id:"minecraft:item_display",transformation:[-9.454297203026119f,6.932177517294092f,1.4357061534797553e-15f,-0.2217411181363434f,6.932177517294092f,9.454297203026119f,0f,-1.364916726600306f,-1.1578174807873711e-15f,8.489469007675456e-16f,-11.723430416666666f,-2.7155455056502802e-17f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:leather_chestplate",Count:1b,tag:{CustomModelData:59}},height:169.17573989031888f,width:273.35947999999996f},{Tags:["kello.target.new","kello.decal","kello.decal.type.comet_flake","pr.ignore","kello.exclude","aj.comet_flake.bone"],id:"minecraft:item_display",transformation:[-4.4516825782573415f,3.264108713786548f,6.760214888206568e-16f,0f,3.264108713786548f,4.4516825782573415f,0f,-1.0625f,-5.45173882028289e-16f,3.99738028840768e-16f,-5.520134370916817f,0f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:leather_chestplate",Count:1b,tag:{CustomModelData:60}},height:97.4360338415616f,width:80.71384452859617f}]}
summon minecraft:item_display ~ ~ ~ {Tags:["kello.target.new","kello.decal","kello.decal.type.comet_flake","pr.ignore","kello.exclude","aj.comet_flake.root"],Passengers:[{Tags:["kello.target.new","kello.decal","kello.decal.type.comet_flake","pr.ignore","kello.exclude","aj.comet_flake.bone.tail"],id:"minecraft:item_display",transformation:[-9.45429720302612f,6.932177517294093f,1.4357061534797557e-15f,-0.2217411181363434f,6.932177517294093f,9.45429720302612f,0.0f,-1.364916726600306f,-1.1578174807873713e-15f,8.489469007675457e-16f,-11.723430416666668f,-2.7155455056502802e-17f,0.0f,0.0f,0.0f,1.0f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:leather_chestplate",tag:{CustomModelData:158},Count:1b},height:169.17574f,width:273.35948f},{Tags:["kello.target.new","kello.decal","kello.decal.type.comet_flake","pr.ignore","kello.exclude"],id:"minecraft:item_display",transformation:[-4.451682413540911f,3.264108593011464f,6.760214638072276e-16f,0.0f,3.264108593011464f,4.451682413540911f,0.0f,-1.0625f,-5.451738618563441e-16f,3.99738014050086e-16f,-5.520134166666668f,0.0f,0.0f,0.0f,0.0f,1.0f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:leather_chestplate",tag:{CustomModelData:159},Count:1b},height:97.43603f,width:80.71384f}]}

execute as @e[type=minecraft:item_display,distance=..2,tag=kello.target.new] run function kello:entity/decal/static/comet_flake/common_init
return 1