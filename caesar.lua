-- CorrectShift performs modulo arithmetic to ensure that the shift being
-- performed by the script is always within the range of the alphabet, regardless
-- of what the end user enters
function CorrectShift(shift)
    shift = shift % 26
    if shift == 0 then shift = 26 end
    return shift
end

-- ShiftCharacter shifts the given character according to the
-- given shift
function ShiftCharacter(inChar, shift)
    local charAsByte = string.byte(inChar)
    local alphaLimit = 0

    if charAsByte >= 65 and charAsByte <= 90 then
        alphaLimit = 64
    elseif charAsByte >= 97 and charAsByte <= 122 then
        alphaLimit = 96
    else
        return inChar -- non alphabetics will not be shifted
    end

    local b = (charAsByte - alphaLimit + shift) % 26
    if b == 0 then b = 26 end
    return string.char(b + alphaLimit)
end

-- PerformCipher iterates over the given text and runs ShiftCharacter
-- on each character
function PerformCipher(text, shift)
    shift = CorrectShift(shift)
    local outText = ""
    for i = 1, #text do
        local char = string.sub(text, i, i)

        outText = outText .. ShiftCharacter(char, shift)
    end
    return outText
end

-- CheckIsInteger is a utility function that checks if a given input 
-- is an integer or not
function CheckIsInteger(n)
    return (type(n) == "number") and (math.floor(n) == n)
end
