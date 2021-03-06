class dofus.datacenter.Mutant extends dofus.datacenter.Character
{
	function Mutant(sID, clipClass, §\x1e\x13\x14§, cellNum, §\x11\x1b§, gfxID, bShowIsPlayer)
	{
		super();
		this._bShowIsPlayer = bShowIsPlayer == undefined?false:bShowIsPlayer;
		this.initialize(sID,clipClass,var5,cellNum,var7,gfxID);
	}
	function __get__name()
	{
		if(!this._bShowIsPlayer)
		{
			return this.monsterName;
		}
		return this._sPlayerName;
	}
	function __set__monsterID(var2)
	{
		this._nMonsterID = var2;
		return this.__get__monsterID();
	}
	function __get__monsterID()
	{
		return this._nMonsterID;
	}
	function __set__playerName(var2)
	{
		this._sPlayerName = var2;
		return this.__get__playerName();
	}
	function __get__playerName()
	{
		return this._sPlayerName;
	}
	function __get__monsterName()
	{
		return this.api.lang.getMonstersText(this._nMonsterID).n;
	}
	function __get__alignment()
	{
		return new dofus.datacenter.();
	}
	function __set__powerLevel(var2)
	{
		this._nPowerLevel = Number(var2);
		return this.__get__powerLevel();
	}
	function __get__powerLevel()
	{
		return this._nPowerLevel;
	}
	function __get__Level()
	{
		return this.api.lang.getMonstersText(this._nMonsterID)["g" + this._nPowerLevel].l;
	}
	function __get__resistances()
	{
		return this.api.lang.getMonstersText(this._nMonsterID)["g" + this._nPowerLevel].r;
	}
	function __set__showIsPlayer(var2)
	{
		this._bShowIsPlayer = var2;
		return this.__get__showIsPlayer();
	}
	function __get__showIsPlayer()
	{
		return this._bShowIsPlayer;
	}
}
