class Dummy: Actor {
	//$Group Misc
	int wait;
	Default {
		Radius 10;
		Height 56;
		Speed 4;
		Health 1;
		+SOLID
	}
	States {
		Spawn:
			HOLE AB 20;
			Loop;
		See:
			HOLE ABCD 5 A_Wander;
			Loop;
		Death:
			HOLE A 1 A_Fall;
			Stop;
	}
	override void Tick() {
		super.Tick();
		if (wait == 0) {
			if (InStateSequence(self.curstate, self.ResolveState("Spawn"))) {
				wait = random(120, 240);
				SetStateLabel("See");
			} else {
				wait = random(80, 200);
				SetStateLabel("Spawn");
			}
		}
		wait -= 1;
	}
}

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
