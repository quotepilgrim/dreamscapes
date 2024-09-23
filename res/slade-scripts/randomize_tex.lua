local small_paintings = {
	"PAINT_19",
	"PAINT_36",
	"PAINT_37",
	"PAINT_39",
	"PAINT_43",
	--tall ones:
	"PAINT_10",
	"PAINT_11",
	"PAINT_12",
	"PAINT_13",
	"PAINT_14",
	"PAINT_15",
	"PAINT_27",
	"PAINT_24",
	"PAINT_28",
	"PAINT_30",
	"PAINT_31",
	"PAINT_38",
	--big ones:
	"PAINT_17",
	"PAINT_48",
}

local tall_paintings = {
	"PAINT_01",
	"PAINT_03",
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
	"PAINT_41",
	"PAINT_45",
	--big ones:
	"PAINT_04",
	"PAINT_17",
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
	"PAINT_40",
	"PAINT_42",
	"PAINT_44",
	"PAINT_46",
	"PAINT_47",
	"PAINT_48",
	--tall ones:
	"PAINT_09",
	"PAINT_11",
	"PAINT_13",
	"PAINT_14",
}

local sides = App.MapEditor().map.sidedefs

function Execute(map)
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
end
