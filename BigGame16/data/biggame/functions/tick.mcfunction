#BIG
#execute as @a[scores={big=1}] run effect give @s resistance 999 3 true

#SMALL
execute as @a[scores={small=1}] run scoreboard players add @s small_tick 1
execute as @a[scores={small=1}] run execute if score @s small_tick matches 1 run effect give @s regeneration 10 0 true
execute as @a[scores={small=1}] run execute if score @s small_tick matches 200 run scoreboard players set @s small_tick 0

#ALL
execute as @a run scoreboard players add @s tick 1
scoreboard players remove @a timer 1
execute as @a run execute if score @s timer matches 0 run scoreboard players remove @s timer_proc 1
execute as @a run execute if score @s timer matches 0 run scoreboard players set @s timer 20
execute as @a run title @s actionbar [{"text":"Time remaining: ", "color":"red"},{"score":{"name":"@s","objective":"timer_proc"}}]

execute as @a run execute if score @s timer_proc matches 0 run title @a title {"text":"Big Brawler Wins!","color":"dark_red"}

execute as @a run scoreboard players operation @s boss_health = @a[scores={big=1}] health

execute as @a run execute if score @s boss_health matches ..100 run execute if score @s boss_half matches 0 run execute if score @s tick matches 10.. run title @a title {"text":"Boss below half HP!","color":"dark_red"}
execute as @a run execute if score @s boss_health matches ..100 run execute if score @s tick matches 10.. run scoreboard players set @s boss_half 1

execute as @a run execute if score @s boss_health matches ..20 run execute if score @s boss_low matches 0 run execute if score @s tick matches 10.. run title @a title {"text":"Boss almost dead!","color":"dark_red"}
execute as @a run execute if score @s boss_health matches ..20 run execute if score @s tick matches 10.. run scoreboard players set @s boss_low 1

execute as @a run execute if score @s boss_health matches 0 run execute if score @s boss_dead matches 0 run title @a title {"text":"Small Brawler Wins!","color":"dark_red"}
execute as @a run execute if score @s boss_health matches 0 run scoreboard players set @s boss_dead 1

#tell @a whatever