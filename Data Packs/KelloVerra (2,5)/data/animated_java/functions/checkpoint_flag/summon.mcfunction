summon minecraft:item_display ~ ~ ~ {Tags:["kello.entity.checkpoint_new","aj.new","aj.checkpoint_flag.rig_entity","aj.checkpoint_flag.root","aj.rig_root"],Passengers:[{Tags:["kello.ignore","kello.exclude","aj.new","aj.checkpoint_flag.rig_entity","aj.checkpoint_flag.bone","aj.checkpoint_flag.bone.flag_2"],id:"minecraft:item_display",transformation:[-1.0f,0.0f,1.2246467991473532e-16f,0.7953125f,0.0f,1.0f,0.0f,2.0625f,-1.2246467991473532e-16f,0.0f,-1.0f,9.739769074468792e-17f,0.0f,0.0f,0.0f,1.0f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:white_dye",tag:{CustomModelData:2},Count:1b},CustomName:'[{"text":"[","color":"gray","type":"text"},{"text":"AJ","color":"aqua","type":"text"},"] ",["",{"text":"checkpoint_flag","color":"light_purple"},".",{"text":"bone","color":"white"},"[",{"text":"flag_2","color":"yellow"},"]"]]',height:40.95f,width:18.9f},{Tags:["kello.ignore","kello.exclude","aj.new","aj.checkpoint_flag.rig_entity","aj.checkpoint_flag.bone","aj.checkpoint_flag.bone.flag_1"],id:"minecraft:item_display",transformation:[-1.0f,0.0f,1.2246467991473532e-16f,0.4203125f,0.0f,1.0f,0.0f,2.0625f,-1.2246467991473532e-16f,0.0f,-1.0f,5.147343577666218e-17f,0.0f,0.0f,0.0f,1.0f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:white_dye",tag:{CustomModelData:3},Count:1b},CustomName:'[{"text":"[","color":"gray","type":"text"},{"text":"AJ","color":"aqua","type":"text"},"] ",["",{"text":"checkpoint_flag","color":"light_purple"},".",{"text":"bone","color":"white"},"[",{"text":"flag_1","color":"yellow"},"]"]]',height:40.975f,width:12.95f},{Tags:["kello.ignore","kello.exclude","aj.new","aj.checkpoint_flag.rig_entity","aj.checkpoint_flag.bone","aj.checkpoint_flag.bone.flag_0"],id:"minecraft:item_display",transformation:[-1.0f,0.0f,1.2246467991473532e-16f,0.09375f,0.0f,1.0f,0.0f,2.0625f,-1.2246467991473532e-16f,0.0f,-1.0f,1.1481063742006436e-17f,0.0f,0.0f,0.0f,1.0f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:white_dye",tag:{CustomModelData:4},Count:1b},CustomName:'[{"text":"[","color":"gray","type":"text"},{"text":"AJ","color":"aqua","type":"text"},"] ",["",{"text":"checkpoint_flag","color":"light_purple"},".",{"text":"bone","color":"white"},"[",{"text":"flag_0","color":"yellow"},"]"]]',height:41.0f,width:7.0f},{id:"minecraft:item_display",Tags:["aj.new","aj.checkpoint_flag.rig_entity","aj.checkpoint_flag.bone","aj.checkpoint_flag.bone.root"],transformation:[-1.887585416666667f,0.0f,2.311625438638057e-16f,0.0f,0.0f,1.887585416666667f,0.0f,0.0f,-2.311625438638057e-16f,0.0f,-1.887585416666667f,0.0f,0.0f,0.0f,0.0f,1.0f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:white_dye",tag:{CustomModelData:5},Count:1b},CustomName:'[{"text":"[","color":"gray","type":"text"},{"text":"AJ","color":"aqua","type":"text"},"] ",["",{"text":"checkpoint_flag","color":"light_purple"},".",{"text":"bone","color":"white"},"[",{"text":"root","color":"yellow"},"]"]]',height:44.30205000000001f,width:4.8020499999999995f}],CustomName:'[{"text":"[","color":"gray","type":"text"},{"text":"AJ","color":"aqua","type":"text"},"] ",["",{"text":"checkpoint_flag","color":"light_purple"},".",{"text":"root","color":"white"}]]'}
execute as @e[type=minecraft:item_display,distance=..0.1,tag=aj.checkpoint_flag.root,tag=aj.new,limit=1] run function animated_java:checkpoint_flag/zzzzzzzz/summon/as_root
return 1