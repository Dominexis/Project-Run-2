scoreboard players set water rko.ambient 0

# Right #
execute positioned ~34.5 ~44 ~13.5 run playsound rko:water master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 2 1
execute positioned ~34.5 ~44 ~-13.5 run playsound rko:water master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 2 1

# Left #
execute positioned ~-34.5 ~44 ~13.5 run playsound rko:water master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 2 1
execute positioned ~-34.5 ~44 ~-13.5 run playsound rko:water master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 2 1
return 1