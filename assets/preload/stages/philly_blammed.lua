function onCreate()


    makeLuaSprite('su', 'week3/sky', -850, -350)
    scaleObject('su', 1.1, 1.1)
    setScrollFactor('su', 0.3, 0.3);
	addLuaSprite('su',false)

    makeLuaSprite('Tr', 'week3/tree', -950, -350)
    scaleObject('Tr', 1.1, 1.1)
	addLuaSprite('Tr',false)

    makeLuaSprite('Tr2', 'week3/tree', -400, -350)
    scaleObject('Tr2', 1.1, 1.1)
	addLuaSprite('Tr2',false)

    makeLuaSprite('Tr3', 'week3/tree 2', 300, -200)
    scaleObject('Tr3', 1.1, 1.1)
	addLuaSprite('Tr3',false)

    makeLuaSprite('Tr4', 'week3/tree', 600, -350)
    scaleObject('Tr4', 1.1, 1.1)
	addLuaSprite('Tr4',false)

    makeLuaSprite('s', 'week3/street', -1200, 0)
    scaleObject('s', 1.1, 1.1)
	addLuaSprite('s',false)

    makeAnimatedLuaSprite('skip', 'week3/skip', 900, 250)
    addAnimationByPrefix('skip','bumps','idleskip', 24, false);
    scaleObject('skip', 0.8, 0.8)
	addLuaSprite('skip',false)

    makeAnimatedLuaSprite('darnell', 'week3/darnell', -500, 200)
    scaleObject('darnell', 0.9, 0.9)
    addAnimationByPrefix('darnell','bumpD','darnell b', 24, false);
	addLuaSprite('darnell',false)

    makeAnimatedLuaSprite('carol', 'week3/carolwalk',  -1600, 400)
    scaleObject('carol', 1.1, 1.1)
    addAnimationByPrefix('carol','bumpC','Carol', 24, false);
	addLuaSprite('carol',true)

    makeAnimatedLuaSprite('nene', 'week3/nene', 650, 475)
    scaleObject('nene', 0.9, 0.9)
    addAnimationByPrefix('nene','bumpN','Idle Nene', 24, false);
	addLuaSprite('nene',true)

    makeLuaSprite('l', 'week3/luz', -900, -600)
    scaleObject('l', 1.1, 1.1)
    doTweenAlpha('luzAlpha', 'l', 0, stepCrochet*3.10, 'linear')
    setScrollFactor('l', 0, 0);
	addLuaSprite('l',true)

    makeLuaSprite('la', 'week3/luz azul', -900, -150)
    scaleObject('la', 1.1, 1.1)
    doTweenAlpha('luzAAlpha', 'la', 0, stepCrochet*2.10, 'linear')
    setScrollFactor('la', 0, 0);
	addLuaSprite('la',true)

    setObjectCamera('blur', 'camHud')


end

function onBeatHit()
    if curBeat % 1 == 0 then
        objectPlayAnimation('nene', 'bumpN');
	end

	if curBeat % 2 == 0 then
		objectPlayAnimation('skip', 'bumps');
        objectPlayAnimation('carol', 'bumpC');
	end

    if curBeat % 4 == 0 then
        objectPlayAnimation('darnell', 'bumpD');
	end

    if curBeat % 4 == 0 then
        doTweenX('carolX','carol', 1600, 14, 'linear')
	end
    if curBeat % 25 == 0 then
        doTweenX('carolX','carol', -1600, 0, 'linear')
	end
    if curBeat % 200 == 0 then
        doTweenX('carolX2','carol', -1600, 0.005, 'linear')
	end
end