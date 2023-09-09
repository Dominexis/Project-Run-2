# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

##FUNCTIONAL ARMOUR STANDS
summon armor_stand ~31 ~1 ~-9 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["corecity.elevator_start","corecity.kill_entities"]}
summon armor_stand ~-38 29 ~-1 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["corecity.elevator_end","corecity.kill_entities"]}
##DECORATIVE ARMOUR STANDS
#START TEXT
summon text_display ~32 ~2.5 ~0 {Tags:["corecity.kill_entities"],billboard:"fixed",see_through:0b,Rotation:[-90F,0F],text:'[{"text":"X","color":"light_purple","bold":true,"obfuscated":true},{"text":"Corruptide City","color":"dark_purple","bold":true,"obfuscated":false},{"text":"X","color":"light_purple","bold":true,"obfuscated":true},{"text":"\\nby ","color":"yellow","bold":true,"obfuscated":false},{"text":"CoreOptd","color":"gold","bold":true,"obfuscated":false}]',background:16711680}

##DECORATIVE ARMOUR STANDS
summon armor_stand ~-30 ~83 ~-1 {Rotation:[90F,0F],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:15787238}}},{id:"leather_leggings",Count:1b,tag:{display:{color:8853547}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:10033202}}},{id:"player_head",Count:1b,tag:{SkullOwner:"wLascar"}}],HandItems:[{},{}],CustomName:'{"text":"The Manager","color":"dark_red","bold":"true"}',CustomNameVisible:1b,Tags:["corecity.kill_entities"],DisabledSlots:4144959,Pose:{Head:[352f,0f,0f],LeftLeg:[352f,343f,359f],RightLeg:[12f,14f,3f],LeftArm:[28f,25f,0f],RightArm:[271f,0f,0f]}}