function onCreate()


    makeLuaSprite('su', 'park/cielo', -500, -350)
    scaleObject('su', 1.1, 1.1)
    setScrollFactor('su', 0.3, 0.3);
	addLuaSprite('su',false)

    makeLuaSprite('Tr', 'park/pared', -1000, -25)
    scaleObject('Tr', 1.1, 1.1)
	addLuaSprite('Tr',false)

    makeLuaSprite('s', 'park/suelo', -1200, 400)
    scaleObject('s', 1.1, 1.1)
	addLuaSprite('s',false)

    makeLuaSprite('Tr2', 'park/arbol', -50, -300)
    scaleObject('Tr2', 1.1, 1.1)
	addLuaSprite('Tr2',false)

    makeLuaSprite('Tr3', 'park/baño', 700, 0)
    scaleObject('Tr3', 1.1, 1.1)
	addLuaSprite('Tr3',false)

    makeLuaSprite('Tr4', 'park/cabina', -950, -200)
    scaleObject('Tr4', 1.1, 1.1)
	addLuaSprite('Tr4',false)



    makeLuaSprite('l', 'park/luz', -900, -400)
    scaleObject('l', 1.3, 1.3)
    doTweenAlpha('luzAlpha', 'l', 0.4, stepCrochet*0.01, 'linear')
    setScrollFactor('l', 0, 0);
	addLuaSprite('l',true)

    setObjectCamera('blur', 'camHud')


end

