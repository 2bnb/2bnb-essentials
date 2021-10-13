/* ----------------------------------------------------------------------------
Config: ACE Explosives

Description:
	Registers RHS explosives to ACE Explosives framework.
	Removes the "Activate mine" scroll menu option.

Author:
	Arend
---------------------------------------------------------------------------- */
class CfgMagazines {
	class CA_Magazine;
	// RHS M112
	class rhsusf_m112_mag : CA_Magazine {
		ACE_Explosives_Placeable = 1;
		useAction = 0;
		ACE_Explosives_SetupObject = "rhsusf_explosive_m112";
		ACE_Explosives_DelayTime = 1.5;

		class ACE_Triggers {
			SupportedTriggers[] = {"Timer", "Command", "MK16_Transmitter", "DeadmanSwitch"};
			class Timer {
				FuseTime = 0.5;
			};

			class Command {
				FuseTime = 0.5;
			};

			class MK16_Transmitter : Command {};
			class DeadmanSwitch : Command {};
		};
	};
	class rhsusf_m112x4_mag : rhsusf_m112_mag {
		ACE_Explosives_SetupObject = "rhsusf_explosive_m112x4";
	};

	// Global Mobilisation Explosives
	class gm_explosiveRemoteMagazine_base;
	class gm_explosive_petn_charge : gm_explosiveRemoteMagazine_base {
		useAction = 0;
		ACE_Explosives_SetupObject = "ACE_Explosives_Place_gm_explosive_petn_charge";
	};
	class gm_explosive_plnp_charge : gm_explosiveRemoteMagazine_base {
		useAction = 0;
		ACE_Explosives_SetupObject = "ACE_Explosives_Place_gm_explosive_plnp_charge";
	};

	// Global Mobilisation Mines
	class gm_putMagazine_base;
	class gm_mine_at_base : gm_putMagazine_base {
		ACE_Explosives_Placeable = 1;
		useAction = 0;
		ACE_Explosives_DelayTime = 1.5;

		class ACE_Triggers {
			SupportedTriggers[] = {"PressurePlate"};
			class PressurePlate {
				FuseTime = 0.5;
				digDistance = 0.05;
			};
		};
	};
	class gm_mine_ap_dm31 : gm_mine_at_base {
		ACE_Explosives_SetupObject = "ACE_Explosives_Place_gm_mine_ap_dm31";

		class ACE_Triggers {
			SupportedTriggers[] = {"Tripwire"};
			class Tripwire {
				FuseTime = 0.5;
				digDistance = 0.05;
			};
		};
	};
	class gm_mine_ap_pfm1 : gm_mine_at_base {
		ACE_Explosives_SetupObject = "ACE_Explosives_Place_gm_mine_ap_pfm1";
	};
	class gm_mine_at_dm21 : gm_mine_at_base {
		ACE_Explosives_SetupObject = "ACE_Explosives_Place_gm_mine_at_dm21";
	};
	class gm_mine_at_dm1233 : gm_mine_at_base {
		ACE_Explosives_SetupObject = "ACE_Explosives_Place_gm_mine_at_dm1233";
	};
	class gm_mine_at_tm46 : gm_mine_at_base {
		ACE_Explosives_SetupObject = "ACE_Explosives_Place_gm_mine_at_tm46";
	};
};

class CfgAmmo {
	class gm_mine_bounce_base;
	class gm_mine_ap_dm31 : gm_mine_bounce_base {
		ACE_explosives_defuseObjectPosition[] = {-4.96289,0.0348816,0};
	};
};

class CfgVehicles {
	class ACE_Explosives_Place;
	// RHS M112
	class rhsusf_explosive_m112 : ACE_Explosives_Place {};
	class rhsusf_explosive_m112x4 : ACE_Explosives_Place {};

	// Global Mobilisation Explosives
	class ACE_Explosives_Place_gm_explosive_petn_charge : ACE_Explosives_Place {
		displayName = "PETN";
		model = "gm\gm_weapons\gm_put\gm_explosive_charge_petn";
	};
	class ACE_Explosives_Place_gm_explosive_plnp_charge : ACE_Explosives_Place {
		displayName = "PLNP";
		model = "gm\gm_weapons\gm_put\gm_explosive_charge_plnp";
	};

	// Global Mobilisation Mines
	class ACE_Explosives_Place_gm_mine_ap_dm31 : ACE_Explosives_Place {
		displayName = "AP Mine DM31";
		model = "gm\gm_weapons\gm_put\gm_mine_ap_dm31_disarmed";
	};
	class ACE_Explosives_Place_gm_mine_ap_pfm1 : ACE_Explosives_Place {
		displayName = "AP Mine Scatterable PFM1";
		model = "gm\gm_weapons\gm_put\gm_mine_ap_pfm1_disarmed";
	};
	class ACE_Explosives_Place_gm_mine_at_dm21 : ACE_Explosives_Place {
		displayName = "AT Mine DM21";
		model = "gm\gm_weapons\gm_put\gm_mine_at_dm21_disarmed";
	};
	class ACE_Explosives_Place_gm_mine_at_dm1233 : ACE_Explosives_Place {
		displayName = "AT Mine Scatterable DM1233";
		model = "gm\gm_weapons\gm_put\gm_mine_at_dm1233_disarmed";
	};
	class ACE_Explosives_Place_gm_mine_at_tm46 : ACE_Explosives_Place {
		displayName = "AT Mine TM46";
		model = "gm\gm_weapons\gm_put\gm_mine_at_tm46_disarmed";
	};
};

// Remove "Activate mine" action from diffused explosives/mines
class CfgActions {
	class None;
	class UseContainerMagazine : None {
		show = 0;
	};
};
