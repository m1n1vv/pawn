stock LeavePlayer(playerid, const string[])
{
	static
	    	find,
	    	sizeid,
	    	line;
	    
	new
	    	str[50],
	    	str_id[5],
	    	str_1[50],
	    	str_2[50];
	    
	valstr(str_id, playerid);
	sizeid = strlen(str_id);
	line = strlen(string);
	strcat(str, string);
    
	find = strfind(string, str_id);

	if (find != -1)
	{
		strmid(str_1, string, 0, find);
		strmid(str_2, string, find+sizeid, line);
		strcat(str_1, "-1");
		strcat(str_1, str_2);
	    	return str_1;
	}
	else return str;
}
