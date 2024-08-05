class SpeedUp : PowerupGiver {
	Default {
		Inventory.MaxAmount 0;
		Powerup.Duration 0x7FFFFFFF;
		powerup.type "PowerSpeed";
		+INVENTORY.AUTOACTIVATE;
		+INVENTORY.ALWAYSPICKUP;
	}
}

class Shard : Inventory {
	//$GROUP Shards
	Default {
		Radius 16;
		Inventory.PickupMessage "$MSG_SHARD_GET";
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
		+NOGRAVITY
	}
}

Class ShardCount : Inventory {
	Default {
		Inventory.Amount 1;
		Inventory.MaxAmount 14;
	}
}

class CrescentShard : Shard {
	Default {
		Inventory.Icon "CRESA0";
		Inventory.PickupMessage "$MSG_CRES_GET";
	}
	States {
	Spawn:
		CRES A -1;
		Stop;
	}
}

class StarShard : Shard {
	Default {
		Inventory.Icon "STARA0";
		Inventory.PickupMessage "$MSG_STAR_GET";
	}
	States
	{
	Spawn:
		STAR A -1;
		Stop;
	}
}

class LightningShard : Shard {
	Default {
		Inventory.Icon "BOLTA0";
		Inventory.PickupMessage "$MSG_BOLT_GET";
	}
	States {
	Spawn:
		BOLT A -1;
		Stop;
	}
}

class MeteorShard: Shard {
	Default {
		Inventory.Icon "METEA0";
		Inventory.PickupMessage "$MSG_METE_GET";
	}
	States {
	Spawn:
		METE A -1;
		Stop;
	}
}

class EmberShard : Shard {
	Default {
		Inventory.Icon "EMBRA0";
		Inventory.PickupMessage "$MSG_EMBR_GET";
	}
	States {
	Spawn:
		EMBR A -1;
		Stop;
	}
}

class FlowShard : Shard {
	Default {
		Inventory.Icon "FLOWA0";
		Inventory.PickupMessage "$MSG_FLOW_GET";
	}
	States {
	Spawn:
		FLOW A -1;
		Stop;
	}
}

class FloodShard : Shard {
	Default {
		Inventory.Icon "FLUDA0";
		Inventory.PickupMessage "$MSG_FLUD_GET";
	}
	States {
	Spawn:
		FLUD A -1;
		Stop;
	}
}

class CrystalShard : Shard {
	Default {
		Inventory.Icon "CRYSA0";
		Inventory.PickupMessage "$MSG_CRYS_GET";
	}
	States {
	Spawn:
		CRYS A -1;
		Stop;
	}
}

class ChaosShard : Shard {
	Default {
		Inventory.Icon "CHAOA0";
		Inventory.PickupMessage "$MSG_CHAO_GET";
	}
	States {
	Spawn:
		CHAO A -1;
		Stop;
	}
}

class GravityShard : Shard {
	Default {
		Inventory.Icon "GRAVA0";
		Inventory.PickupMessage "$MSG_GRAV_GET";
	}
	States {
	Spawn:
		GRAV A -1;
		Stop;
	}
}

class MatterShard : Shard {
	Default {
		Inventory.Icon "MATTA0";
		Inventory.PickupMessage "$MSG_MATT_GET";
	}
	States {
	Spawn:
		MATT A -1;
		Stop;
	}
}

class VoidShard : Shard {
	Default {
		Inventory.Icon "VOIDA0";
		Inventory.PickupMessage "$MSG_VOID_GET";
	}
	States {
	Spawn:
		VOID A -1;
		Stop;
	}
}

class SoulShard : Shard {
	Default {
		Inventory.Icon "SOULA0";
		Inventory.PickupMessage "$MSG_SOUL_GET";
	}
	States {
	Spawn:
		SOUL A -1;
		Stop;
	}
}

class ShellShard : Shard {
	Default {
		Inventory.Icon "SHELA0";
		Inventory.PickupMessage "$MSG_SHEL_GET";
	}
	States {
	Spawn:
		SHEL A -1;
		Stop;
	}
}