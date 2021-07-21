tellraw @a {"text": "Loading Successful", "color": "#0000FF"}

gamerule naturalRegeneration false
gamerule keepInventory true
time set 600
worldborder set 500

scoreboard objectives add big dummy
scoreboard objectives add small dummy
scoreboard objectives add small_tick dummy
scoreboard objectives add timer dummy
scoreboard objectives add timer_proc dummy

scoreboard objectives add health health
scoreboard objectives add boss_health dummy

scoreboard players set @a big 0
scoreboard players set @a small 0
scoreboard players set @a small_tick 0
scoreboard players set @a timer 20
scoreboard players set @a timer_proc 600
scoreboard players set @a boss_health 0

scoreboard objectives add boss_low dummy
scoreboard objectives add boss_half dummy
scoreboard objectives add boss_dead dummy
scoreboard players set @a boss_low 1
scoreboard players set @a boss_half 1
scoreboard players set @a boss_dead 1

scoreboard objectives add tick dummy
scoreboard players set @a tick 0

scoreboard objectives setdisplay sidebar boss_health

tellraw @a {"text": "All loading operations complete", "color": "#0000FF"}