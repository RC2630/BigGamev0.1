#Start
title @a title {"text":"Start!","color":"dark_red"}
clear @a
time set 600
gamerule doDaylightCycle true

execute as @a[scores={small=1}] run scoreboard players set @s small_tick 0
scoreboard players set @a timer 20
scoreboard players set @a timer_proc 600
scoreboard objectives setdisplay sidebar boss_health

scoreboard players set @a boss_low 0
scoreboard players set @a boss_half 0
scoreboard players set @a boss_dead 0
scoreboard players set @a tick 0

#execute as @a[scores={big=1}] run give @s golden_helmet{display:{Name:'{"text":"Prot 2 Helmet"}'},Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:binding_curse",lvl:1s}],Unbreakable:1} 1
#execute as @a[scores={big=1}] run give @s golden_chestplate{display:{Name:'{"text":"Prot 2 Chestplate"}'},Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:binding_curse",lvl:1s}],Unbreakable:1} 1
#execute as @a[scores={big=1}] run give @s golden_leggings{display:{Name:'{"text":"Prot 2 Leggings"}'},Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:binding_curse",lvl:1s}],Unbreakable:1} 1
#execute as @a[scores={big=1}] run give @s golden_boots{display:{Name:'{"text":"Prot 2 Boots"}'},Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:binding_curse",lvl:1s}],Unbreakable:1} 1

execute as @a[scores={big=1}] run effect give @s health_boost 99999 44 true
execute as @a[scores={big=1}] run effect give @s instant_health 3 200 true