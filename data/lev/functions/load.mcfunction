tellraw @a ["",{"text":"Levitation Challange ","bold":true,"color":"green"},{"text":"by TriLinder has been loaded.","color":"aqua"}]

function lev:one_second

scoreboard objectives add levSettings dummy "Levitation Settings"
scoreboard objectives add levTimer dummy

execute unless score Time levSettings matches 0.. run function lev:reset_settings