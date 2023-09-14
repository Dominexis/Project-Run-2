# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

##FUNCTIONAL ARMOUR STANDS
summon armor_stand ~31 ~1 ~-9 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["corecity.elevator_start","corecity.kill_entities"]}
summon armor_stand ~-38 29 ~-1 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["corecity.elevator_end","corecity.kill_entities"]}
#CHECKPOINT ARMOUR STANDS
summon armor_stand ~ ~0.1 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~25 ~0.1 ~-25 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~-1 ~1.1 ~-25 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~-34 ~1.1 ~-14 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~-35 ~-2.1 ~-1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~-35 ~6.1 ~-1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~-33 ~7.1 ~15 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~-29 ~29.1 ~-1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~-34 ~22.1 ~-15 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~-38 ~70.1 ~-1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~2 ~-3.1 ~15 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~-15 ~-8.1 ~-1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~-37 ~-18.1 ~-12 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~-6 ~-19.1 ~-32 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~30 ~-27.1 ~-11 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~23 ~-26.1 ~1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~26 ~-18.1 ~16 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~14 ~16.1 ~-8 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~14 ~3.1 ~33 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
summon armor_stand ~8 ~-27.1 ~-2 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["corecity.checkpoint","corecity.kill_entities"],DisabledSlots:4144959}
##DECORATIVE ARMOUR STANDS
#START TEXT
summon text_display ~32 ~2.5 ~0 {Tags:["corecity.kill_entities"],billboard:"fixed",see_through:0b,Rotation:[-90F,0F],text:'[{"text":"X","color":"light_purple","bold":true,"obfuscated":true},{"text":"Corruptide City","color":"dark_purple","bold":true,"obfuscated":false},{"text":"X","color":"light_purple","bold":true,"obfuscated":true},{"text":"\\nby ","color":"yellow","bold":true,"obfuscated":false},{"text":"CoreOptd","color":"gold","bold":true,"obfuscated":false}]',background:16711680}

##DECORATIVE ARMOUR STANDS
summon armor_stand ~-30 ~83 ~-1 {Rotation:[90F,0F],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:15787238}}},{id:"leather_leggings",Count:1b,tag:{display:{color:8853547}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:10033202}}},{id:"player_head",Count:1b,tag:{SkullOwner:"wLascar"}}],HandItems:[{},{}],CustomName:'{"text":"The Manager","color":"dark_red","bold":"true"}',CustomNameVisible:1b,Tags:["corecity.kill_entities"],DisabledSlots:4144959,Pose:{Head:[352f,0f,0f],LeftLeg:[352f,343f,359f],RightLeg:[12f,14f,3f],LeftArm:[28f,25f,0f],RightArm:[271f,0f,0f]}}