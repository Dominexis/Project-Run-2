summon minecraft:item_display ~ ~ ~ {Passengers:[{brightness:{block:12,sky:15},id:"minecraft:item_display",Tags:["aj.new","aj.cogwheel.rig_entity","aj.cogwheel.bone","aj.cogwheel.bone.small_cog"],transformation:[-1.0f,0.0f,1.2246467991473532e-16f,0.0f,0.0f,1.0f,0.0f,0.0f,-1.2246467991473532e-16f,0.0f,-1.0f,0.0f,0.0f,0.0f,0.0f,1.0f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:leather_chestplate",tag:{CustomModelData:43},Count:1b},CustomName:'[{"text":"[","color":"gray","type":"text"},{"text":"AJ","color":"aqua","type":"text"},"] ",["",{"text":"cogwheel","color":"light_purple"},".",{"text":"bone","color":"white"},"[",{"text":"small_cog","color":"yellow"},"]"]]',height:9.24264f,width:8.0f},{brightness:{block:13,sky:15},item:{id:"minecraft:leather_chestplate",tag:{CustomModelData:44},Count:1b},id:"minecraft:item_display",Tags:["aj.new","aj.cogwheel.rig_entity","aj.cogwheel.bone","aj.cogwheel.bone.large_cog"],transformation:[-1.2416666666666665f,0.0f,1.5206031089412968e-16f,0.0f,0.0f,1.2416666666666665f,0.0f,0.001004375f,-1.5206031089412968e-16f,0.0f,-1.2416666666666665f,0.0f,0.0f,0.0f,0.0f,1.0f],interpolation_duration:1,item_display:"head",CustomName:'[{"text":"[","color":"gray","type":"text"},{"text":"AJ","color":"aqua","type":"text"},"] ",["",{"text":"cogwheel","color":"light_purple"},".",{"text":"bone","color":"white"},"[",{"text":"large_cog","color":"yellow"},"]"]]',height:2.625f,width:14.9f}],Tags:["aj.new","aj.cogwheel.rig_entity","aj.cogwheel.root","aj.rig_root"],CustomName:'[{"text":"[","color":"gray","type":"text"},{"text":"AJ","color":"aqua","type":"text"},"] ",["",{"text":"cogwheel","color":"light_purple"},".",{"text":"root","color":"white"}]]'}
execute as @e[type=minecraft:item_display,distance=..0.1,tag=aj.cogwheel.root,tag=aj.new,limit=1] run function animated_java:cogwheel/zzzzzzzz/summon/as_root
return 1