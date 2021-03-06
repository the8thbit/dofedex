class dofus.graphics.gapi.controls.conquestzonesviewer.ConquestZonesViewerVillageItem extends dofus.graphics.gapi.core.DofusAdvancedComponent
{
	function ConquestZonesViewerVillageItem()
	{
		super();
		this.api = _global.API;
		this._ldrAlignment._alpha = 0;
		this._mcNotAligned._alpha = 0;
		this._mcAlignmentInteractivity._alpha = 0;
		this._mcDoorClose._alpha = 0;
		this._mcDoorOpen._alpha = 0;
		this._mcDoorInteractivity._alpha = 0;
		this._mcPrismClose._alpha = 0;
		this._mcPrismOpen._alpha = 0;
		this._mcPrismInteractivity._alpha = 0;
	}
	function __set__list(var2)
	{
		this._mcList = var2;
		return this.__get__list();
	}
	function setValue(var2, var3, var4)
	{
		if(var2)
		{
			this._oItem = var4;
			this._lblVillage.text = this.api.lang.getMapAreaText(var4.id).n;
			if(var4.alignment == -1)
			{
				this._ldrAlignment._alpha = 0;
				this._mcNotAligned._alpha = 100;
			}
			else
			{
				this._mcNotAligned._alpha = 0;
				this._ldrAlignment._alpha = 100;
				this._ldrAlignment.contentPath = dofus.Constants.ALIGNMENTS_MINI_PATH + var4.alignment + ".swf";
			}
			if(var4.door)
			{
				this._mcDoorClose._alpha = 0;
				this._mcDoorOpen._alpha = 100;
			}
			else
			{
				this._mcDoorClose._alpha = 100;
				this._mcDoorOpen._alpha = 0;
			}
			if(var4.prism)
			{
				this._mcPrismClose._alpha = 0;
				this._mcPrismOpen._alpha = 100;
			}
			else
			{
				this._mcPrismClose._alpha = 100;
				this._mcPrismOpen._alpha = 0;
			}
			this._mcAlignmentInteractivity.onRollOver = function()
			{
				ref.over({target:this});
			};
			this._mcAlignmentInteractivity.onRollOut = function()
			{
				ref.out({target:this});
			};
			this._mcDoorInteractivity.onRollOver = function()
			{
				ref.over({target:this});
			};
			this._mcDoorInteractivity.onRollOut = function()
			{
				ref.out({target:this});
			};
			this._mcPrismInteractivity.onRollOver = function()
			{
				ref.over({target:this});
			};
			this._mcPrismInteractivity.onRollOut = function()
			{
				ref.out({target:this});
			};
		}
		else if(this._lblVillage.text != undefined)
		{
			this._lblVillage.text = "";
			this._ldrAlignment._alpha = 0;
			this._ldrAlignment.contentPath = undefined;
			this._mcNotAligned._alpha = 0;
			this._mcAlignmentInteractivity._alpha = 0;
			this._mcDoorClose._alpha = 0;
			this._mcDoorOpen._alpha = 0;
			this._mcDoorInteractivity._alpha = 0;
			this._mcPrismClose._alpha = 0;
			this._mcPrismOpen._alpha = 0;
			this._mcPrismInteractivity._alpha = 0;
		}
	}
	function over(var2)
	{
		switch(var2.target)
		{
			case this._mcAlignmentInteractivity:
				this.api.ui.showTooltip(this.api.lang.getText("ALIGNMENT") + ": " + (this._oItem.alignment <= 0?this._oItem.alignment != -1?this.api.lang.getText("NEUTRAL_WORD"):this.api.lang.getText("NON_ALIGNED"):new dofus.datacenter.(this._oItem.alignment,1).name),_root._xmouse,_root._ymouse - 20);
				break;
			case this._mcDoorInteractivity:
				this.api.ui.showTooltip(!this._oItem.door?this.api.lang.getText("CONQUEST_VILLAGE_DOOR_CLOSE"):this.api.lang.getText("CONQUEST_VILLAGE_DOOR_OPEN"),_root._xmouse,_root._ymouse - 20);
				break;
			default:
				if(var0 !== this._mcPrismInteractivity)
				{
					break;
				}
				this.api.ui.showTooltip(!this._oItem.prism?this.api.lang.getText("CONQUEST_VILLAGE_PRISM_CLOSE"):this.api.lang.getText("CONQUEST_VILLAGE_PRISM_OPEN"),_root._xmouse,_root._ymouse - 20);
				break;
		}
	}
	function out(var2)
	{
		this.api.ui.hideTooltip();
	}
}
