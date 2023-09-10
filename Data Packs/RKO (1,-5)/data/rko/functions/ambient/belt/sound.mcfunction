scoreboard players set belt rko.ambient 0

# Right #
execute positioned ~13 ~34 ~5 run playsound rko:belt master @a[tag=pr.target,tag=!rko_finish,tag=!rko_finish_land,sort=arbitrary] ~ ~ ~ 2 1
execute positioned ~13 ~34 ~-5 run playsound rko:belt master @a[tag=pr.target,tag=!rko_finish,tag=!rko_finish_land,sort=arbitrary] ~ ~ ~ 2 1

# Left #
execute positioned ~-13 ~34 ~5 run playsound rko:belt master @a[tag=pr.target,tag=!rko_finish,tag=!rko_finish_land,sort=arbitrary] ~ ~ ~ 2 1
execute positioned ~-13 ~34 ~-5 run playsound rko:belt master @a[tag=pr.target,tag=!rko_finish,tag=!rko_finish_land,sort=arbitrary] ~ ~ ~ 2 1