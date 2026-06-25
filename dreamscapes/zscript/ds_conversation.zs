Class DSConversationMenu : ConversationMenu {
    override int FormatReplies(int activereply) {
        mSelection = -1;

        StrifeDialogueReply reply;
        int r = -1;
        int i = 1, j;
        for (reply = mCurNode.Children; reply != NULL; reply = reply.Next) {
            r++;
            if (reply.ShouldSkipReply(mPlayer)) {
                continue;
            }
            if (activereply == r) mSelection = i - 1;

            mShowGold |= reply.NeedsGold;

            let ReplyText = Stringtable.Localize(reply.Reply);
            if (reply.NeedsGold) {
                ReplyText.AppendFormat(" %s",
                                       Stringtable.Localize("$TXT_TRADE"));
                let amount = String.Format("%u", reply.PrintAmount);
                ReplyText.Replace("%u", amount);
            }
            let ReplyLines = displayFont.BreakLines(ReplyText, ReplyWidth);

            mResponses.Push(mResponseLines.Size());
            for (j = 0; j < ReplyLines.Count(); ++j) {
                mResponseLines.Push(ReplyLines.StringAt(j));
            }

            ++i;
            ReplyLines.Destroy();
        }

        if (mSelection == -1) {
            mSelection = r < activereply ? r + 1 : 0;
        }

        let goodbyestr = mCurNode.Goodbye;
        goodbyestr = Stringtable.Localize(goodbyestr);

        if (goodbyestr.Length() == 0 || goodbyestr.Left(1) == "$") {
            goodbyestr = "...";
        }
        mResponses.Push(mResponseLines.Size());
        mResponseLines.Push(goodbyestr);

        // Determine where the top of the reply list should be positioned.
        mYpos = MIN(140, 192 - mResponseLines.Size() * ReplyLineHeight);

        if (mSelection >= mResponses.Size()) {
            mSelection = mResponses.Size() - 1;
        }

        return mYpos;
    }
}