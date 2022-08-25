function onCreate()
    --Iterate over all notes
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Pico bullet' then
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'bullet'); --Change texture


            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let BF's notes get ignored
                setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
            end
        end
    end
end

local shootAnims = {"LEFTshoot", "DOWNshoot", "UPshoot", "RIGHTshoot"}
local dodgeAnims = {"dodgeLEFT", "dodgeDOWN", "dodgeUP", "dodgeRIGHT"}
function goodNoteHit(id, direction, noteType, isSustainNote)
    if noteType == 'Pico bullet' then
        if getProperty('dad.curCharacter') == 'picob' then
            characterPlayAnim('dad', shootAnims[direction + 1], true);
			playSound('shotpico', 0.6);
        elseif getProperty('dad.curCharacter') == 'picob' then
            curDad = getProperty('dad.curCharacter');
            setProperty('dad.curCharacter', 'picob');
            characterPlayAnim('dad', shootAnims[direction + 1], true);
			characterPlayAnim('pico_b', 'shot', true);
            runTimer('shot', 1, 1);
			playSound('shotpico', 0.6);
		elseif getProperty('dad.curCharacter') == 'picob' then
			playSound('shotpico', 0.6);
        end
        setProperty('dad.specialAnim', true);
        if getProperty('bf.curCharacter') == 'bfb' then
            characterPlayAnim('boyfriend', dodgeAnims[direction + 1], true);
        else
            characterPlayAnim('boyfriend', 'dodge', true);
        end
        setProperty('boyfriend.specialAnim', true);
        cameraShake('camGame', 0.01, 0.2);
    end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Pico bullet' then
	  curHealth = getProperty('health');
		if curHealth > 1 then
		damageValue = curHealth - 1;
		setProperty('health', damageValue);
		else
		setProperty('health', -500);
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'bleed' then
        setProperty('health', getProperty('health')-0.001);
    end
    if tag == 'shot' then 
        setProperty('dad.curCharacter', curDad);
    end
end