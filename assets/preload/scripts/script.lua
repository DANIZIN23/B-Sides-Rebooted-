function onCreate()
    makeLuaSprite('blur', 'deadblur', -500,-300)
    scaleObject('blur', 2, 2)
    addLuaSprite('blur',true)
    setLuaSpriteScrollFactor('blur', 0, 0)
    setProperty('blur.alpha', 0)
end

function onUpdate()

    if getProperty('health') < 0.5 then
        doTweenAlpha('heloAlpha', 'blur', 1, stepCrochet*0.01, 'linear')
    end

    if getProperty('health') > 0.5 then
    doTweenAlpha('bayAlpha','blur', 0, stepCrochet*0.01, 'linear')


    end

end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.017);
    end

end
