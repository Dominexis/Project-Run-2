# Generate random number

scoreboard players operation #lcg pr.value *= #lcg_multiplier pr.value
scoreboard players operation #lcg pr.value += #lcg_increment pr.value







# Swap bits

scoreboard players operation #lcg_bit_swap pr.value = #lcg pr.value
scoreboard players operation #lcg_bit_swap pr.value /= #65536 pr.value
scoreboard players operation #lcg pr.value *= #65536 pr.value
scoreboard players operation #lcg pr.value += #lcg_bit_swap pr.value







# Return output

scoreboard players operation #output pr.value = #lcg pr.value
execute if score #input pr.value matches 1.. run scoreboard players operation #output pr.value %= #input pr.value
return 1