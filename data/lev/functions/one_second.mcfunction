schedule function lev:one_second 1s

function lev:check_others_active

scoreboard players add $timer levTimer 1

#execute unless entity @e[tag=levPlayer] run scoreboard players set $timer levTimer 0

scoreboard players operation $timeLeft levTimer = Time levSettings
scoreboard players operation $timeLeft levTimer -= $timer levTimer

execute if score Warning levSettings matches 1.. if score $timeLeft levTimer matches ..10 run tellraw @a[tag=levPlayer] ["",{"text":"Levitating ","bold":true,"color":"green"},{"text":"in ","color":"aqua"},{"score":{"name":"$timeLeft","objective":"levTimer"},"bold":true,"color":"green"},{"text":" seconds.","color":"aqua"}]

execute if score $timeLeft levTimer matches ..1 run function lev:levitate

execute if score $timer levTimer > Lenght levSettings run effect clear @e[tag=levLevit] levitation
execute if score $timer levTimer > Lenght levSettings run tag @e[tag=levLevit] remove levLevit