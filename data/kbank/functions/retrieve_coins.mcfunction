#> kbank:retrieve_coins

# Deposit amount inventory
scoreboard players operation @s k.Bank -= .coinsAmount k.Values

# Clear amount
$give @s sunflower{display: {Name: '{"italic":false,"color":"gold","text":"Coin"}', Lore: ['{"italic":false,"color":"gray","text":"Fancy Coin!"}']}, k.Coin: 1b} $(detractAmount)

# Tell how many coins
title @s actionbar [{"text": "Bank Account: ","color":"green"},{"score":{"objective": "k.Bank","name": "@s"},"color": "yellow"}]

# Sound
playsound block.note_block.bell player @s ~ ~ ~ 1 2
