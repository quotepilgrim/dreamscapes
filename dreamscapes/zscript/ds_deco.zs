Class Torch: Actor {
	Default {
		Radius 16;
		Height 56;
		+SOLID
	}
	States {
	Spawn:
		TORC A 10;
		TORC B 10;
		TORC C 10;
	}
}


class TreeA : Actor {
	//$Group Decorations/Plants
	Default {
		Radius 16;
		Height 96;
		+SOLID
	}
	States {
	Spawn:
		TREE A -1;
		Stop;
	}
}

class TreeB : Actor {
	//$Group Decorations/Plants
	Default {
		Radius 16;
		Height 96;
		+SOLID
	}
	States {
	Spawn:
		TREB A -1;
		Stop;
	}
}

class TreeC : Actor {
	//$Group Decorations/Plants
	Default {
		Radius 16;
		Height 96;
		+SOLID
	}
	States {
	Spawn:
		TREC A -1;
		Stop;
	}
}

class TreeD : Actor {
	//$Group Decorations/Plants
	Default {
		Radius 16;
		Height 96;
		+SOLID
	}
	States {
	Spawn:
		TRED A -1;
		Stop;
	}
}

class TreeF : Actor {
	//$Group Decorations/Plants
	Default {
		Radius 16;
		Height 256;
		+SOLID
	}
	States {
	Spawn:
		TREF A -1;
		Stop;
	}
}

class TreeG : Actor {
	//$Group Decorations/Plants
	Default {
		Radius 16;
		Height 256;
		+SOLID
	}
	States {
	Spawn:
		TREG A -1;
		Stop;
	}
}

class TreeH : Actor {
	//$Group Decorations/Plants
	Default {
		Radius 16;
		Height 256;
		+SOLID
	}
	States {
	Spawn:
		TREH A -1;
		Stop;
	}
}

class HandA : Actor {
	//$Group Decorations/Other
	Default {
		Radius 12;
		Height 56;
		+SOLID
	}
	States {
	Spawn:
		HAND A -1;
		Stop;
	}
}

class HandB : Actor {
	//$Group Decorations/Other
	Default {
		Radius 12;
		Height 56;
		+SOLID
	}
	States {
	Spawn:
		HNDB A -1;
		Stop;
	}
}


class BushA : Actor {
	//$Group Decorations/Plants
	Default {
		Radius 16;
		Height 16;
	}
	States {
	Spawn:
		BUSH A -1;
		Stop;
	}
}

class BushB : Actor {
	//$Group Decorations/Plants
	Default {
		Radius 16;
		Height 64;
		+SOLID
	}
	States {
	Spawn:
		BSHB A -1;
		Stop;
	}
}

class VineA : Actor {
	//$Group Decorations/Plants
	Default {
		Radius 16;
		Height 64;
		+SOLID
	}
	States {
	Spawn:
		VINE A -1;
		Stop;
	}
}

class Julia : Actor {
	//$Group Decorations/Julia
	Default {
		Radius 8;
		Height 28;
	}
	States {
	Spawn:
		JULI A -1;
		Stop;
	}
}

class HeadSilhouette : Actor {
	//$Group Decorations/Julia
	Default {
		Radius 45;
		Height 64;
		+SOLID
	}
	States {
	Spawn:
		HEAD A -1;
		Stop;
	}
}

class HeadWithEyes : HeadSilhouette {
	States {
	Spawn:
		HEDB A -1;
		Stop;
	}
}

class HeadWithTeeth : HeadSilhouette {
	States {
	Spawn:
		HEDC A -1;
		Stop;
	}
}

class FungusA : Actor {
	//$Group Decorations/Fungus
	Default {
		Radius 16;
		Height 64;
		+SOLID
	}
	States {
	Spawn:
		FUNG A -1;
		Stop;
	}
}

class FungusB : Actor {
	//$Group Decorations/Fungus
	Default {
		Radius 26;
		Height 64;
		+SOLID
	}
	States {
	Spawn:
		FUNB A -1;
		Stop;
	}
}

class FungusC : Actor {
	//$Group Decorations/Fungus
	Default {
		Radius 26;
		Height 64;
		+SOLID
	}
	States {
	Spawn:
		FUNC A -1;
		Stop;
	}
}

class FungusD : Actor {
	//$Group Decorations/Fungus
	Default {
		Radius 15;
		Height 32;
	}
	States {
	Spawn:
		FUND A -1;
		Stop;
	}
}

class FungusF : Actor {
	//$Group Decorations/Fungus
	Default {
		Radius 10;
		Height 24;
	}
	States {
	Spawn:
		FUNF A -1;
		Stop;
	}
}

class Table : Actor {
	//$Group Decorations/3D
	Default {
		radius 16;
		height 32;
		+SOLID
	}
	States {
	Spawn:
		TARG A 0;
		TABL A -1;
		Stop;
	}
}