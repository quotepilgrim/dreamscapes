class ConditionedListMenu : ListMenu
{
	override void Init(Menu parent, ListMenuDescriptor desc)
	{
		super.Init(NULL, desc);
		
		int curY = 0;
		bool cont = false;
		for(int i = 0; i < mDesc.mItems.Size(); i++)
		{
			let lmItem = ListMenuItem(mDesc.mItems[i]);
			if (!lmItem)
				continue;
				
			let selItem = ListMenuItemSelectable(lmItem);
			if (!selItem)
			{
				cont = false;
				curY = lmItem.GetY();
				continue;
			}
			
			if (!cont)
			{
				curY = selItem.GetY();
				cont = true;
			}
			
			let condItem = ListMenuItemCondTextItem(lmItem);
			if (condItem && !condItem.DrawItem())
				continue;
				
			selItem.SetY(curY);
			curY += 16;
		}
		
		int sel = 0;
		while (!mDesc.mItems[sel].Selectable())
		{
			sel++;
			if (sel >= mDesc.mItems.size())
			{
				sel = 0;
				break;
			}
		}
		mDesc.mSelectedItem = sel;
	}
}

class ListMenuItemCondTextItem : ListMenuItemTextItem {
	Name mType;

	void Init(ListMenuDescriptor desc, String text, String hotkey, Name child, int param, Name type)
	{
		Super.Init(desc, text, hotkey, child, param);
		mType = type;
	}
	
	bool DrawItem()
	{
		bool inGame = (gamestate == GS_LEVEL || gamestate == GS_INTERMISSION);
		
		if (mType == "InTitle") {
			return !inGame;
		} else {
			return inGame;
		}
			
		return true;
	}
	
	override bool Selectable()
	{
		if (!mEnabled) 
			return false;
		
		return DrawItem();
	}
	
	override void Draw(bool selected, ListMenuDescriptor desc)
	{
		if (!DrawItem())
			return;
			
		super.Draw(selected, desc);
	}
	
	override bool Activate()
	{
		if (!Selectable()) 
			return false;
			
		if (mType == "InGameClose")
		{
			menuactive = false;
			return true;
		}
		
		Menu.SetMenu(mAction, mParam);
		return true;
	}
}