class DreamscapeHUD : BaseStatusBar
{
	HUDFont mHUDFont;
	DreamscapePlayer pmo;

	override void Init(void)
	{
		Super.Init();
		SetSize(0, 320, 200);
		Font fnt = SmallFont;
		mHUDFont = HUDFont.Create(fnt, fnt.GetCharWidth("0"), Mono_CellLeft, 1, 1);	
	}

	override void Draw(int state, double TicFrac)
	{
		if (CPlayer && CPlayer.mo)
		{
			pmo = DreamscapePlayer(CPlayer.mo);
		}

		BaseStatusBar.Draw(state, TicFrac);

		if (state == HUD_StatusBar || state == HUD_Fullscreen)
		{
			BeginHUD(forcescaled: true);

			DrawStatus();
		}
	}
	
	int GetShardCount()
	{
		int num = 0;
		for(Inventory item = CPlayer.mo.Inv; item != NULL; item = item.Inv)
		{
			if(item is "Shard") num++;
		}
		return num;
	}

	void DrawStatus(void)
	{
		int shard_txt_pos = -9 * StringTable.Localize("$TXT_HUD_SHARDS").length() - 44;

		DrawString(mHUDFont, StringTable.Localize("$TXT_HUD_HEALTH") .. FormatNumber(pmo.player.health, 3), (44, -20));
		DrawString(mHUDFont, StringTable.Localize("$TXT_HUD_SHARDS") .. FormatNumber(GetShardCount()), (shard_txt_pos, -20));
	}
}
