execute if entity @a[scores={meleedamage=196969..,mlevel=33}] run tellraw @a[scores={meleedamage=196969..,mlevel=33}] ["",{"text":"Melee Level Up!","bold":true,"color":"gold"},{"text":" Level 33","color":"dark_gray"},{"text":" -> ","color":"gray"},{"text":"Level 34 \n","bold":true,"color":"white"},{"text":"Attack Speed","bold":true,"color":"yellow"},{"text":" 0.06","color":"dark_gray"},{"text":" ->","color":"gray"},{"text":" 0.07","bold":true,"color":"white"}]
execute if entity @a[scores={meleedamage=196969..,mlevel=33}] run execute at @a[scores={meleedamage=196969..,mlevel=33}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.2
execute at @a[scores={meleedamage=196969..,mlevel=33}] run tellraw @a[distance=.01..40] {"text":"","color":"gold","extra":[{"selector":"@a[scores={meleedamage=196969..,mlevel=33}]"},{"text":" is now Melee Level 34"}]}
execute if entity @a[scores={meleedamage=196969..,mlevel=33}] run scoreboard players set @a[scores={meleedamage=196969..,mlevel=33}] mlevel 34
execute if entity @a[scores={mlevel=34}] run attribute @a[scores={mlevel=34},limit=1] minecraft:generic.attack_speed base set 4.07