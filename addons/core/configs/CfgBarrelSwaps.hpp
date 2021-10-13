/* ----------------------------------------------------------------------------
Config: Barrel Swaps

Description:
	Registers modded and vanilla machineguns to be able to use the
	ACE barrel swap framework.

Author:
	Arend
---------------------------------------------------------------------------- */
class CfgWeapons {
	// UK3CB Weapons
	class Rifle_Long_Base_F;
	class UK3CB_BAF_L110_Base : Rifle_Long_Base_F {
		ace_overheating_allowSwapBarrel = 1;
	};
	class UK3CB_BAF_L7A2 : Rifle_Long_Base_F {
		ace_overheating_allowSwapBarrel = 1;
	};

	// Vanilla Minimi
	class LMG_03_base_F;
	class LMG_03_F : LMG_03_base_F {
		ace_overheating_allowSwapBarrel = 1;
	};

	// Global Mobilisation MG3
	class gm_mg3_base;
	class gm_mg3_blk : gm_mg3_base {
		ace_overheating_allowSwapBarrel = 1;
	};
	class gm_mg3_des : gm_mg3_base {
		ace_overheating_allowSwapBarrel = 1;
	};
};
