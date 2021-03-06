#define MAX_DIALOG_LIST		10
#define MAX_DIALOG_HEIGHT	(176.0)

static
	Text:tdHeader,
	Text:tdArticle[MAX_DIALOG_LIST],
	Text:tdFooter,

	Float:fHeader,
	Float:fArticle,
	Float:fFooter,
	Float:fSpace = 15.0;

stock CreateDynamicDialog(playerid, number)
{
	new
		color;

	fArticle = 205.5 - (number / 2) * fSpace - ((number % 2) ? (7.0) : (0.0));
	fHeader = fArticle + fSpace;
	fFooter = fArticle + fSpace * (number + 1);

	for (new i = 0; i < number; ++i)
	{
		fArticle += fSpace;
		color = (i % 2) ? (0xDBDBDBFF) : (-1);

		tdArticle[i] = TextDrawCreate(320.000000, fArticle, !"Article");
		TextDrawLetterSize(tdArticle[i], 0.000000, 1.300000);
		TextDrawTextSize(tdArticle[i], 0.000000, MAX_DIALOG_HEIGHT);
		TextDrawAlignment(tdArticle[i], 2);
		TextDrawColor(tdArticle[i], -1);
		TextDrawUseBox(tdArticle[i], 1);
		TextDrawBoxColor(tdArticle[i], color);
		TextDrawSetShadow(tdArticle[i], 0);
		TextDrawSetOutline(tdArticle[i], 0);
		TextDrawBackgroundColor(tdArticle[i], 255);
		TextDrawFont(tdArticle[i], 1);
		TextDrawSetProportional(tdArticle[i], 1);
		TextDrawSetShadow(tdArticle[i], 0);
		TextDrawShowForPlayer(playerid, tdArticle[i]);
	}

	tdHeader = TextDrawCreate(320.000000, fHeader, !"Header");
	TextDrawLetterSize(tdHeader, 0.000000, -2.500000);
	TextDrawTextSize(tdHeader, 0.000000, MAX_DIALOG_HEIGHT);
	TextDrawAlignment(tdHeader, 2);
	TextDrawColor(tdHeader, -1);
	TextDrawUseBox(tdHeader, 1);
	TextDrawBoxColor(tdHeader, -637206273);
	TextDrawSetShadow(tdHeader, 0);
	TextDrawSetOutline(tdHeader, 0);
	TextDrawBackgroundColor(tdHeader, 255);
	TextDrawFont(tdHeader, 1);
	TextDrawSetProportional(tdHeader, 1);
	TextDrawSetShadow(tdHeader, 0);
	TextDrawShowForPlayer(playerid, tdHeader);

	tdFooter = TextDrawCreate(320.000000, fFooter, !"Footer");
	TextDrawLetterSize(tdFooter, 0.000000, 3.000000);
	TextDrawTextSize(tdFooter, 0.000000, MAX_DIALOG_HEIGHT);
	TextDrawAlignment(tdFooter, 2);
	TextDrawColor(tdFooter, -1);
	TextDrawUseBox(tdFooter, 1);
	TextDrawBoxColor(tdFooter, 0x202020FF);
	TextDrawSetShadow(tdFooter, 0);
	TextDrawSetOutline(tdFooter, 0);
	TextDrawBackgroundColor(tdFooter, 255);
	TextDrawFont(tdFooter, 1);
	TextDrawSetProportional(tdFooter, 1);
	TextDrawSetShadow(tdFooter, 0);
	TextDrawShowForPlayer(playerid, tdFooter);

	return 1;
}
