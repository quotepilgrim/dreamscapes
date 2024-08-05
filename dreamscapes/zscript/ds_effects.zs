Class Effect: Weapon {
	States {
	Spawn: 
        TNT1 A -1;
        Stop;
	Ready: 
        TNT1 A 1 A_WeaponReady;
        Loop;	
	Select:
		TNT1 A 1 A_Raise;
		Loop;
	Deselect:
		TNT1 A 1 A_Lower(100);
		Loop;
	Fire:
		Goto Ready;
	}
}

Class WakeUp : Effect {
	Default {
		Weapon.SlotNumber 1;
	}
	States {
	Select:
		TNT1 A 1 ACS_NamedExecute("wake_up", 0);
		TNT1 A 1 A_Raise;
		Loop;
	}
}

Class ToNexus : Effect {
	Default {
		Weapon.SlotNumber 2;
	}
	States {
	Select:
		TNT1 A 1 ACS_NamedExecute("to_nexus", 0);
		TNT1 A 1 A_Raise;
		Loop;
	}
}

Class Idle : Effect {
}