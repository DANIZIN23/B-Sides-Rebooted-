function onCreate()

    makeAnimatedLuaSprite('su', 'pared', 0, 300)
    addAnimationByPrefix('su','pared','suelo ex',24,true)
    scaleObject('su', 10, 10)
	addLuaSprite('su',false)



    makeAnimatedLuaSprite('ma', 'Street/maquinas', 0,0)
	addLuaSprite('ma',false)


    makeAnimatedLuaSprite('ra', 'Street/arbol', 0,0)
	addLuaSprite('ra',false)

end

function onBeatHit ()--for every step


	objectPlayAnimation('su','suelo',true)

end
