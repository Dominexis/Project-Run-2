scoreboard players set belt rko.time 0

# Right #
clone ~14 ~15 ~-5 ~14 ~13 ~-5 ~14 ~9 ~-5
clone ~14 ~9 ~-5 ~14 ~35 ~-5 ~14 ~10 ~-5 replace move

clone ~12 ~31 ~-5 ~12 ~33 ~-5 ~12 ~35 ~-5
clone ~12 ~37 ~-5 ~12 ~11 ~-5 ~12 ~10 ~-5 replace move

clone ~14 ~15 ~5 ~14 ~13 ~5 ~14 ~9 ~5
clone ~14 ~9 ~5 ~14 ~35 ~5 ~14 ~10 ~5 replace move

clone ~12 ~31 ~5 ~12 ~33 ~5 ~12 ~35 ~5
clone ~12 ~37 ~5 ~12 ~11 ~5 ~12 ~10 ~5 replace move

# Left #
clone ~-14 ~15 ~-5 ~-14 ~13 ~-5 ~-14 ~9 ~-5
clone ~-14 ~9 ~-5 ~-14 ~35 ~-5 ~-14 ~10 ~-5 replace move

clone ~-12 ~31 ~-5 ~-12 ~33 ~-5 ~-12 ~35 ~-5
clone ~-12 ~37 ~-5 ~-12 ~11 ~-5 ~-12 ~10 ~-5 replace move

clone ~-14 ~15 ~5 ~-14 ~13 ~5 ~-14 ~9 ~5
clone ~-14 ~9 ~5 ~-14 ~35 ~5 ~-14 ~10 ~5 replace move

clone ~-12 ~31 ~5 ~-12 ~33 ~5 ~-12 ~35 ~5
clone ~-12 ~37 ~5 ~-12 ~11 ~5 ~-12 ~10 ~5 replace move

execute as @a[tag=pr.target,sort=arbitrary] run function rko:anim/belt/tp