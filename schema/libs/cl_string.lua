fo.string = fo.string or {}


local setFont = surface.SetFont
local getTextSize = surface.GetTextSize
local strSub = string.sub
local strLen = string.len
local mathCeil = math.ceil
local tblInsert = table.insert
local tblConcat = table.concat


local DOTS = "..."

-- Breaks text into lines
function fo.string.WrapText( text, font, wLimit, dotLimit )
	local lines = {}
	local index = 1

	-- Return line with an added word without modify the line
	local function testLine(word)
		local line = lines[index]

		if ( line ) then
			return line.." "..word
		else
			return word
		end
	end

	-- Update line
	local function setLine(line)
		lines[index] = line
	end

	-- Add a new line to work on it
	local function lineBreak()
		index = index + 1
	end

	-- dotLimit represents the max word size to do a dotted line ( half the line width limit by default )
	dotLimit = dotLimit or mathCeil(wLimit * 0.65)

	local function processWord(w)
		local tLine = testLine(w)

		if ( getTextSize(tLine) < wLimit ) then -- If tested line size is lower than the line width limit then append the word
			setLine(tLine)
		else  -- If tested line size is higher than the line width limit then :
			local wordSize = getTextSize(w)

			if ( wordSize < dotLimit ) then -- If the word size is lower than the dot limit then add the word in a new line
				lineBreak()
				setLine(w)
			else -- If the word size is higher than the dot limit then set word dotted and finish it in a new line
				local wordLen = strLen(w)

				for i = wordLen, 1, -1 do
					local oldLinePart = strSub( w, 1, i )..DOTS
					local tLine = testLine( oldLinePart )

					if ( getTextSize(tLine) < wLimit ) then
						setLine(tLine)

						local newLinePart = strSub( w, i + 1, wordLen )
						lineBreak()
						processWord(newLinePart)

						break
					elseif (i == 1) then
						lineBreak()
						processWord(w)
					end
				end
			end
		end
	end

	-- Store words from text in a table
	local words = fo.string.Explode( {" ", "\n"}, text )

	surface.SetFont(font)

	for k, w in pairs( words ) do
		local s = SysTime()
		processWord(w)
	end

	return lines
end