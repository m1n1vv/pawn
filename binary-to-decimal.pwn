//V2
main()
{
	static const
		sub[] = "1000101";
	new
		result,
		error;
	for (new i = 0, n = strlen(sub) - 1; i <= n; i++)
	{
		switch (sub[i])
        	{
            		case '0', '1':
            		{
				result += (sub[i] == '1') ? (1 << n - i) : (0);
			}
            		default:
            		{
                		error++;
                		break;
            		}
        	}
	}
	if (!error)
	{
		printf("\tResult: %i\n", result);
	}
	else
	{
		printf("\tError\n");
	}
}

//V1
main()
{
	new 
		m,
		p,
		bool:st,
		k,
		res,
		string[50];
	static 
		sub[] = "1000101";
	for(new i = 0; i < sizeof(sub)-1; i++)
	{
		if (st == false)
		{
			k = sizeof(sub) - 2;
			st = true;
		}
		m = Power(2, k--);
		if (sub[i] == '1')
		{
			res += m;
			p = 1;
		}
		else if (sub[i] == '0')
		{
			res += 0;
			p = 0;
		}
		format(string, sizeof string, "\t%d\t%d\t%d\n", m, p, res);
		printf(string);
	}
}
stock Power(a, n)
{
	if (n != 0) 
		return a*Power(a, n-1);
	return 1;
}
