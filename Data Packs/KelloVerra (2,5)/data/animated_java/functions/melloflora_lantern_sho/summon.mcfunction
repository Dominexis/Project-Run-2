summon minecraft:item_display ~ ~ ~ {Tags:["kello.ignore","kello.exclude","kello.decal","kello.decal.type.melloflora_lantern","aj.new","aj.melloflora_lantern_sho.rig_entity","aj.melloflora_lantern_sho.root","aj.rig_root"],Passengers:[{Tags:["kello.ignore","kello.exclude","kello.decal","kello.decal.type.melloflora_lantern","aj.new","aj.melloflora_lantern_sho.rig_entity","aj.melloflora_lantern_sho.bone","aj.melloflora_lantern_sho.bone.petal"],id:"minecraft:item_display",transformation:[-2.102703125000001f,0f,-3.6419886457338513f,0f,0f,4.20540625f,0f,-1.30490125f,3.6419886457338513f,0f,-2.102703125000001f,0f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:leather_chestplate",Count:1b,tag:{CustomModelData:2}},CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"melloflora_lantern_sho\",\"color\":\"light_purple\"},\".\",{\"text\":\"bone\",\"color\":\"white\"},\"[\",{\"text\":\"petal\",\"color\":\"yellow\"},\"]\"]]",height:70.00725f,width:8.9775f},{Tags:["kello.ignore","kello.exclude","kello.decal","kello.decal.type.melloflora_lantern","aj.new","aj.melloflora_lantern_sho.rig_entity","aj.melloflora_lantern_sho.bone","aj.melloflora_lantern_sho.bone.root"],id:"minecraft:item_display",transformation:[-4.691666666666666f,0f,5.745634565999665e-16f,0f,0f,4.691666666666666f,0f,0.678125f,-5.745634565999665e-16f,0f,-4.691666666666666f,0f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:leather_chestplate",Count:1b,tag:{CustomModelData:3}},CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"melloflora_lantern_sho\",\"color\":\"light_purple\"},\".\",{\"text\":\"bone\",\"color\":\"white\"},\"[\",{\"text\":\"root\",\"color\":\"yellow\"},\"]\"]]",height:81.6f,width:10.7f}],CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"melloflora_lantern_sho\",\"color\":\"light_purple\"},\".\",{\"text\":\"root\",\"color\":\"white\"}]]"}
execute as @e[type=minecraft:item_display,tag=aj.melloflora_lantern_sho.root,tag=aj.new,limit=1,distance=..0.1] run function animated_java:melloflora_lantern_sho/zzzzzzzz/summon/as_root