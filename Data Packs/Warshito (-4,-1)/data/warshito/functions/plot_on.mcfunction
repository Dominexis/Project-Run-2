# Set scoreboards

scoreboard objectives add warshito.isInCheckpoint dummy
scoreboard objectives add warshito.ticks dummy
scoreboard objectives add warshito.Phase dummy
scoreboard objectives add warshito.Sph dummy
scoreboard objectives add warshito.DialogueTicks dummy
scoreboard objectives add warshito.DialogueTicks2 dummy

scoreboard players set Pl3 warshito.ticks 0
scoreboard players set Pl4 warshito.ticks 80
scoreboard players set Pl5 warshito.ticks 40

# Return doors

clone ~-5 ~65 ~36 ~-5 ~66 ~37 ~3 ~65 ~37
clone ~-37 ~65 ~-5 ~-36 ~66 ~-5 ~-38 ~65 ~3

fill ~-1 ~65 ~35 ~-1 ~68 ~33 glass_pane