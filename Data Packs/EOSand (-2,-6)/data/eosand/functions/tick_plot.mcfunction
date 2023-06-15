# This function will run every tick while players are in your plot on the center block at Y=0

# Pad and pipe particles
execute if entity @a[tag=pr.target,scores={eosand.pipes=1}] run function eosand:particles/pad_1
execute if entity @a[tag=pr.target,scores={eosand.pipes=1}] run function eosand:particles/section_1
execute if entity @a[tag=pr.target,scores={eosand.pipes=2}] run function eosand:particles/pad_2
execute if entity @a[tag=pr.target,scores={eosand.pipes=2}] run function eosand:particles/section_2
execute if entity @a[tag=pr.target,scores={eosand.pipes=3}] run function eosand:particles/pad_3
execute if entity @a[tag=pr.target,scores={eosand.pipes=3}] run function eosand:particles/section_3
execute if entity @a[tag=pr.target,scores={eosand.pipes=4}] run function eosand:particles/pad_4
execute if entity @a[tag=pr.target,scores={eosand.pipes=4}] run function eosand:particles/section_4

# Doors=
execute as @a[tag=pr.target,scores={eosand.door=1}] run function eosand:doors/door_1
execute positioned ~-2.5 ~1.0 ~34.5 as @a[tag=pr.target,dx=4,dy=2,dz=3] run execute positioned ~2.5 ~-1.0 ~-34.5 run function eosand:doors/door_1

execute as @a[tag=pr.target,scores={eosand.door=2}] run function eosand:doors/door_2
execute positioned ~-2.5 ~1.0 ~9.5 as @a[tag=pr.target,dx=4,dy=2,dz=3] run execute positioned ~2.5 ~-1.0 ~-9.5 run function eosand:doors/door_2

# Entry dialogue
execute as @a[tag=pr.target,scores={eosand.cutscenes=1}] run function eosand:dialogues/entry

# Pipes section 1
execute as @a[tag=pr.target,scores={eosand.pipes=1}] run function eosand:sections/section_1

# Pipes section 2
execute as @a[tag=pr.target,scores={eosand.pipes=2}] run function eosand:sections/section_2

# Pipes section 3
execute as @a[tag=pr.target,scores={eosand.pipes=3}] run function eosand:sections/section_3

# Pipes section 4
execute as @a[tag=pr.target,scores={eosand.pipes=4}] run function eosand:sections/section_4

# Finish dialogue
execute as @a[tag=pr.target,scores={eosand.pipes=5}] run function eosand:dialogues/finish

# End plot
execute positioned ~ ~51 ~ as @a[tag=pr.target,distance=..0.5,scores={eosand.cutscenes=2}] run function eosand:finish