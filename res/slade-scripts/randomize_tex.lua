local small_paintings = {
	"PAINT_19",
	--tall ones:
	"PAINT_10",
	"PAINT_11",
	"PAINT_12",
	"PAINT_13",
	"PAINT_14",
	"PAINT_15",
	"PAINT_26",
	"PAINT_27",
	"PAINT_28",
	"PAINT_30",
	"PAINT_31",
	--big ones:
	"PAINT_17",
	"PAINT_21",
}

local tall_paintings = {
	"PAINT_01",
	"PAINT_03",
	"PAINT_06",
	"PAINT_09",
	"PAINT_10",
	"PAINT_11",
	"PAINT_12",
	"PAINT_13",
	"PAINT_14",
	"PAINT_15",
	"PAINT_18",
	"PAINT_22",
	"PAINT_24",
	"PAINT_26",
	"PAINT_27",
	"PAINT_28",
	"PAINT_29",
	"PAINT_30",
	"PAINT_31",
	"PAINT_32",
	"PAINT_33",
	"PAINT_34",
	--big ones:
	"PAINT_04",
	"PAINT_05",
	"PAINT_17",
	"PAINT_21",
	"PAINT_23",
	"PAINT_35",
}

local big_paintings = {
	"PAINT_02",
	"PAINT_04",
	"PAINT_05",
	"PAINT_07",
	"PAINT_08",
	"PAINT_16",
	"PAINT_17",
	"PAINT_20",
	"PAINT_21",
	"PAINT_23",
	"PAINT_25",
	"PAINT_35",
	--tall ones:
	"PAINT_09",
	"PAINT_11",
	"PAINT_13",
	"PAINT_14",
	"PAINT_26",
}

local sides = App.MapEditor().map.sidedefs

for _, side in ipairs(sides) do
	local prefix = string.sub(side.textureMiddle, 1, 5)
	if side.sector.heightCeiling - side.sector.heightFloor == 64 and prefix == "PAINT" then
		side:SetStringProperty("texturemiddle", small_paintings[math.random(#small_paintings)])
	elseif side.line.length == 64 and prefix == "PAINT" then
		side:SetStringProperty("texturemiddle", tall_paintings[math.random(#tall_paintings)])
	elseif side.line.length == 96 and prefix == "PAINT" then
		side:SetStringProperty("texturemiddle", big_paintings[math.random(#big_paintings)])
	end
end
