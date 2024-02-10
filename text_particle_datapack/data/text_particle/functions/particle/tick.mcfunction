#> text_particle:particle/tick
#
# 
#
# @within function text_particle:tick

# Tick数をストレージに
    scoreboard players add @s TextParticle.Tick 1
    execute store result storage text_particle: Particle.Tick int 1 run scoreboard players get @s TextParticle.Tick

# フレーム減らす
    scoreboard players remove @s TextParticle.Frame 1
    execute if entity @s[scores={TextParticle.Frame=-1}] run function text_particle:particle/kill

# 乗せているマーカーのデータをストレージに移す
    execute on passengers run data modify storage text_particle: Particle.Font set from entity @s data.Font
    execute on passengers run data modify storage text_particle: Particle.Color set from entity @s data.Color

# アニメーション
    function text_particle:particle/macro with storage text_particle: Particle

