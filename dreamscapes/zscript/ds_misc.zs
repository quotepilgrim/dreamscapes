class Chaser : Actor {
	//$Group Misc
	Default {
		Radius 14;
		Height 56;
		Speed 8;
		Health 1;
		Monster;
	}
	States {
	Spawn:
	See:
		CHAS A 1 A_Chase;
		Loop;
	Melee:
		CHAS A 1 A_DamageSelf(1,"None",0,null,"None",AAPTR_TARGET);
		Goto See;
	Death:
		CHAS A 1 A_Fall;
		Stop;
	}
}

class Blip : FakeInventory {
	//$Group Misc
	//$Icon powerup
	//$Colour #FF4080
	Default {
		Radius 16;
		RENDERSTYLE "None";
		+Inventory.QUIET;
		FakeInventory.RESPAWNS;
	}
}

class CresBoltFlud : Inventory {
	Default {
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
	}
}

class Target : Actor {
	//$Group Decorations/Plants
	Default {
		Radius 16;
		Height 32;
		+NOGRAVITY
	}
	States {
	Spawn:
		TARG A -1;
		Stop;
	}
}
