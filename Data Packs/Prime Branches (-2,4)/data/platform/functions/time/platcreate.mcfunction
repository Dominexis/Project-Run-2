execute align xyz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Tags:["Platform","pr.target"],Invisible:1b,NoGravity:1b,Marker:1b}
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:green_stained_glass replace minecraft:air
playsound minecraft:block.glass.place block @a
return 1