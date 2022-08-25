function onCreate()

    makeLuaSprite('su', 'stageb/stage', -900, -400)

	addLuaSprite('su',false)

    makeLuaSprite('s', 'stageb/cortina', -1200, -300)
    scaleObject('s', 1.2 , 1.2)
	addLuaSprite('s',true)

    setObjectCamera('blur', 'camHud')


end

