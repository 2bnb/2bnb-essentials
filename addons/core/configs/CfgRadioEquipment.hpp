/* ----------------------------------------------------------------------------
Config: Radio Equipment

Description:
	Modifies the configs of the radio equipment we use

Author:
	Arend
---------------------------------------------------------------------------- */
class CfgWeapons {
	class CBA_MiscItem;
	class CBA_MiscItem_ItemInfo;
	class tfw_rf3080Item : CBA_MiscItem {
		class ItemInfo: CBA_MiscItem_ItemInfo {
			bnb_es_rangeBoostMultiplier = 4;
		};
	};
};
