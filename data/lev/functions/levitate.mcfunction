scoreboard players set $timer levTimer 0

execute if score Warning levSettings matches 1.. run tellraw @a[tag=levPlayer] {"text":"Levitating!","bold":true,"color":"green"}

tag @e[tag=levPlayer] add levLevit
effect give @e[tag=levPlayer] levitation 999999 2 true