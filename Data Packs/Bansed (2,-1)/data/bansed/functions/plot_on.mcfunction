function bansed:onetimesetup



# This function will run when a player enters your plot after there was no one in it. Use this to initialize your plot (create scoreboard objectives, spawn entities, prepare the blocks, etc.).
# say PLOT ON

#summon entities
#summon text_display ~-23 ~-26 ~28 {Tags:["bnsd.txtdisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'[{"text":"ɢᴏᴀʟ:\\n","bold":true,"underlined":true},{"text":"ꜰɪɴᴅ ᴛʜᴇ\\nʟᴏsᴛ sᴄɪᴇɴᴛɪsᴛs","bold":true,"underlined":false}]',background:16711680}

summon minecraft:item_frame ~-20 ~-13 ~8 {Silent:1b,Facing:1,ItemRotation:3b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["bnsd.model"],Item:{id:"minecraft:popped_chorus_fruit",tag:{CustomModelData:492001},Count:1b}}
summon minecraft:item_frame ~7 ~-40 ~29 {NoGravity:1b,Silent:1b,Facing:1,ItemRotation:2b,Invulnerable:1b,Invisible:1b,Tags:["bnsd.model"],Item:{id:"minecraft:popped_chorus_fruit",tag:{CustomModelData:492002},Count:1b}}
summon minecraft:item_frame ~24 ~-61 ~4 {NoGravity:1b,Silent:1b,Facing:1,ItemRotation:7b,Invulnerable:1b,Invisible:1b,Tags:["bnsd.model"],Item:{id:"minecraft:popped_chorus_fruit",tag:{CustomModelData:492003},Count:1b}}

#tp stands
summon minecraft:armor_stand ~-20 ~-12 ~4 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["bnsd.entity","bnsd.gototp"]}
summon minecraft:armor_stand ~-21 ~-12 ~4 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["bnsd.entity","bnsd.gototp"]}
summon minecraft:armor_stand ~-22 ~-12 ~4 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["bnsd.entity","bnsd.gototp"]}

summon minecraft:armor_stand ~-18 ~-52 ~9 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["bnsd.entity","bnsd.cherrytp"]}
summon minecraft:armor_stand ~2 ~-39 ~19 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["bnsd.entity","bnsd.cherryportal"]}
summon minecraft:armor_stand ~34 ~-62 ~9 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["bnsd.entity","bnsd.cherryend"]}

#text displays





#Goal
#summon text_display ~-23 ~-25 ~29 {NoGravity:1b,Silent:1b,Motion:[90.0,65.0,0.0],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"Goal","bold":true,"underlined":true}',background:16711680,Tags:["bnsd.txtdisplay"]}


#TEKST ONDER GOAL
#summon text_display ~-23 ~-25.7 ~29 {NoGravity:1b,Silent:1b,Motion:[90.0,65.0,0.0],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"Find ???"}',background:16711680,Tags:["bnsd.txtdisplay"]}


#Find something to
summon minecraft:text_display ~5 ~-38 ~27 {NoGravity:1b,Silent:1b,Motion:[90.0d,65.0d,0.0d],Rotation:[23.0f,0.0f],text:'{"text":"Find a way to ","type":"text"}',background:16711680,Tags:["bnsd.txtdisplay"]}


#open this door with
summon minecraft:text_display ~5 ~-38.5 ~27 {NoGravity:1b,Silent:1b,Motion:[90.0d,65.0d,0.0d],Rotation:[23.0f,0.0f],text:'{"text":"open this door","type":"text"}',background:16711680,Tags:["bnsd.txtdisplay"]}


#Hmm.. noone seems to be here...
summon minecraft:text_display ~12 ~-39 ~28 {NoGravity:1b,Silent:1b,Motion:[90.0d,65.0d,0.0d],text:'{"text":"Hmm.. noone seems to be here..","type":"text"}',background:16711680,Tags:["bnsd.txtdisplay"]}


#What is all this pink stuff?..
summon minecraft:text_display ~-23 ~-37 ~14 {NoGravity:1b,Silent:1b,Motion:[90.0d,65.0d,0.0d],text:'{"text":"What is all this pink stuff?..","type":"text"}',background:16711680,Tags:["bnsd.txtdisplay"]}


#They must've
summon minecraft:text_display ~0 ~-37 ~13 {NoGravity:1b,Silent:1b,Motion:[90.0d,65.0d,0.0d],text:'{"text":"He must have","type":"text"}',background:16711680,Tags:["bnsd.txtdisplay"]}


#gone through
summon minecraft:text_display ~0 ~-37.4 ~13 {NoGravity:1b,Silent:1b,Motion:[90.0d,65.0d,0.0d],text:'{"text":"gone through..","type":"text"}',background:16711680,Tags:["bnsd.txtdisplay"]}


#Woah, what is this place
summon minecraft:text_display ~-17 ~-49 ~3 {NoGravity:1b,Silent:1b,Motion:[90.0d,65.0d,0.0d],text:'{"text":"Woah, what is this place","type":"text"}',background:16711680,Tags:["bnsd.txtdisplay"]}


#well, lets go!
summon minecraft:text_display ~-16 ~-49.4 ~3 {NoGravity:1b,Silent:1b,Motion:[90.0d,65.0d,0.0d],text:'{"text":"well. lets go!","type":"text"}',background:16711680,Tags:["bnsd.txtdisplay"]}


summon minecraft:text_display ~-21 ~-10.4 ~10 {NoGravity:1b,Silent:1b,Rotation:[132.0f,0.0f],text:'{"text":"cave, please help me find him","type":"text"}',background:838860800,Tags:["bnsd.txtdisplay"]}
summon minecraft:text_display ~-21 ~-10 ~10 {NoGravity:1b,Silent:1b,Rotation:[132.0f,0.0f],text:'{"text":"My friend went in that","type":"text"}',background:838860800,Tags:["bnsd.txtdisplay"]}
return 1