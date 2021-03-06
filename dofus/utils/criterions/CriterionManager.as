class dofus.utils.criterions.CriterionManager
{
	static var MAIN_TYPE_AREA = "A";
	static var TYPE_AREA_ALIGNMENT = "A";
	static var MAIN_TYPE_BASIC = "B";
	static var TYPE_BASIC_EPISOD = "E";
	function CriterionManager()
	{
	}
	static function fillingCriterions(var2)
	{
		var var3 = var2.split("|");
		var var4 = 0;
		while(var4 < var3.length)
		{
			var var5 = String(var3[var4]).split("&");
			if(var5.length != 0)
			{
				var var6 = 0;
				var var7 = 0;
				while(var7 < var5.length)
				{
					var var8 = dofus.utils.criterions.CriterionManager.parseCriterion(var5[var7]);
					if(var8.isFilled())
					{
						var6 = var6 + 1;
					}
					var7 = var7 + 1;
				}
				if(var6 == var5.length)
				{
					return true;
				}
			}
			var4 = var4 + 1;
		}
		return false;
	}
	static function parseCriterion(var2)
	{
		var var3 = var2.charAt(0);
		var var4 = var2.charAt(1);
		var var5 = var2.charAt(2);
		var var6 = var2.substring(3);
		if((var var0 = var3) !== dofus.utils.criterions.CriterionManager.MAIN_TYPE_AREA)
		{
			if(var0 === dofus.utils.criterions.CriterionManager.MAIN_TYPE_BASIC)
			{
				if((var0 = var4) === dofus.utils.criterions.CriterionManager.TYPE_BASIC_EPISOD)
				{
					var var7 = new dofus.utils.criterions.basicCriterion.(var5,Number(var6));
				}
			}
		}
		else if((var0 = var4) === dofus.utils.criterions.CriterionManager.TYPE_AREA_ALIGNMENT)
		{
			var7 = new dofus.utils.criterions.subareaCriterion.
(var5,Number(var6));
		}
		if(var7 == null || !var7.check())
		{
			return null;
		}
		return var7;
	}
}
