# This function will run every tick while players are in your plot on the center block at Y=0
#plot coords 65384 0 328

#death trigger areas
#water at bottom
execute positioned ~-39 ~3 ~-39 as @a[dx=78,dy=-1,dz=78,tag=pr.target] at @s run kill @s
#above roman roof
execute positioned ~-14 ~43 ~-4 as @a[dx=15,dy=-1,dz=12,tag=pr.target] at @s run kill @s
#between living room and ceiling beams
execute positioned ~-10 ~72 ~2 as @a[dx=16,dy=-1,dz=12,tag=pr.target] at @s run kill @s
#under pipes
execute positioned ~13 ~81 ~5 as @a[dx=-26,dy=-1,dz=-36,tag=pr.target] at @s run kill @s
#under coal arrival
execute positioned ~-14 ~88 ~3 as @a[dx=13,dy=-1,dz=23,tag=pr.target] at @s run kill @s
#under water stream
execute positioned ~7 ~95 ~-11 as @a[dx=18,dy=-1,dz=33,tag=pr.target] at @s run kill @s
#under modern area
execute positioned ~-16 ~127 ~-5 as @a[dx=45,dy=-1,dz=31,tag=pr.target] at @s run kill @s
#small gab after aquarium
execute positioned ~1 ~141 ~1 as @a[dx=10,dy=0,dz=2,tag=pr.target] at @s run kill @s
#small gab after aquarium
execute positioned ~-13 ~131 ~-13 as @a[dx=40,dy=-1,dz=-15,tag=pr.target] at @s run kill @s

#checkpoints
#roman temple
execute positioned ~20 ~6 ~-13 as @a[tag=pr.target,dx=2,dy=2,dz=2,scores={sw.checkpCount=0}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~18 ~13 ~14 as @a[tag=pr.target,dx=-4,dy=2,dz=3,scores={sw.checkpCount=..1}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~-8 ~25 ~0 as @a[tag=pr.target,dx=3,dy=2,dz=0,scores={sw.checkpCount=..2}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~-5 ~38 ~-10 as @a[tag=pr.target,dx=2,dy=2,dz=0,scores={sw.checkpCount=..3}] at @s run function stabily_time_tower_parkour:run_checkpoint
#medival house
execute positioned ~-4 ~49 ~7 as @a[tag=pr.target,dx=0,dy=2,dz=4,scores={sw.checkpCount=..4}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~4 ~57 ~13 as @a[tag=pr.target,dx=1,dy=2,dz=0,scores={sw.checkpCount=..5}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~-11 ~66 ~-10 as @a[tag=pr.target,dx=0,dy=2,dz=1,scores={sw.checkpCount=..6}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~-11 ~76 ~9 as @a[tag=pr.target,dx=0,dy=2,dz=0,scores={sw.checkpCount=..7}] at @s run function stabily_time_tower_parkour:run_checkpoint
#factory
execute positioned ~8 ~90 ~-3 as @a[tag=pr.target,dx=1,dy=1,dz=1,scores={sw.checkpCount=..8}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~-3 ~90 ~-28 as @a[tag=pr.target,dx=2,dy=2,dz=2,scores={sw.checkpCount=..9}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~-9 ~91 ~-9 as @a[tag=pr.target,dx=3,dy=2,dz=0,scores={sw.checkpCount=..10}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~-8 ~95 ~18 as @a[tag=pr.target,dx=1,dy=2,dz=1,scores={sw.checkpCount=..11}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~-4 ~98 ~9 as @a[tag=pr.target,dx=1,dy=2,dz=1,scores={sw.checkpCount=..12}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~-6 ~107 ~7 as @a[tag=pr.target,dx=2,dy=2,dz=2,scores={sw.checkpCount=..13}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~13 ~105 ~13 as @a[tag=pr.target,dx=0,dy=2,dz=0,scores={sw.checkpCount=..14}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~-5 ~97 ~-9 as @a[tag=pr.target,dx=0,dy=2,dz=0,scores={sw.checkpCount=..15}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~-7 ~135 ~-8 as @a[tag=pr.target,dx=0,dy=2,dz=0,scores={sw.checkpCount=..16}] at @s run function stabily_time_tower_parkour:run_checkpoint
#modern house
execute positioned ~9 ~132 ~7 as @a[tag=pr.target,dx=0,dy=2,dz=0,scores={sw.checkpCount=..17}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~1 ~146 ~9 as @a[tag=pr.target,dx=14,dy=2,dz=0,scores={sw.checkpCount=..18}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~-1 ~153 ~-2 as @a[tag=pr.target,dx=7,dy=2,dz=0,scores={sw.checkpCount=..19}] at @s run function stabily_time_tower_parkour:run_checkpoint
execute positioned ~-8 ~95 ~18 as @a[tag=pr.target,dx=1,dy=2,dz=1,scores={sw.checkpCount=0}] at @s run function stabily_time_tower_parkour:run_checkpoint