class bnb_es_edenGUI {
	idd = 1;
	class Controls{
		class bnb_es_frame: RscFrame {
			idc = 1800;

			x = 0.1;
			y = 0.02;
			w = 0.734999;
			h = 0.58;
		};
		class bnb_es_background: RscText {
			idc = 1000;

			x = 0.1;
			y = 0.02;
			w = 0.7375;
			h = 0.58;
			colorBackground[] = {0,0,0,0.6};
			sizeEx = 1.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * GUI_GRID_H;
		};
		class bnb_es_callsignsSelect: RscText {
			idc = 1001;

			text = "Section Callsign :";
			x = 0.112499;
			y = 0.12;
			w = 0.24;
			h = 0.04;
			sizeEx = 1.2  * GUI_GRID_H;
		};
		class bnb_es_callsignEnter: RscEdit {
			idc = 1400;

			x = 0.124999;
			y = 0.18;
			w = 0.225;
			h = 0.06;
			colorBackground[] = {0.5,0.5,0.5,0.6};
			tooltip = "Callsign of sections";
			sizeEx = 1.1 * GUI_GRID_H;
			canModify = 1;
		};
		class bnb_es_hqCallsign: RscText {
			idc = 1002;

			text = "HQ Callsign :";
			x = 0.1125;
			y = 0.28;
			w = 0.2375;
			h = 0.04;
			sizeEx = 1.2  * GUI_GRID_H;
		};
		class bnb_es_callsignEnterHq: RscEdit {
			idc = 1461;

			x = 0.124999;
			y = 0.34;
			w = 0.225;
			h = 0.06;
			colorBackground[] = {0.5,0.5,0.5,0.6};
			tooltip = "Callsign for zeus";
			sizeEx = 1.1 * GUI_GRID_H;
			canModify = 1;
		};
		class bnb_es_sectionAmount: RscXSliderH {
			idc = 1900;

			x = 0.112499;
			y = 0.52;
			w = 0.225;
			h = 0.04;
			color[] = {1,1,1,0.6};
			colorActive[] = {1,1,1,1};
			colorDisable[] = {1,1,1,0.4};
			sliderRange[] = {0, 9};
			sliderPosition = 3;
			tooltip = "Number of sections to spawn :";
			sliderStep = 1;
			arrowEmpty = "\A3\ui_f\data\gui\cfg\slider\arrowEmpty_ca.paa";
			arrowFull = "\A3\ui_f\data\gui\cfg\slider\arrowFull_ca.paa";
			onSliderPosChanged = "ctrlSetText [1006, str sliderPosition 1900]";
		};
		class bnb_es_sectionCounter: RscText {
			idc = 1006;
			text = "3";
			x = 0.438125 * safezoneW + safezoneX;
			y = 0.511 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class bnb_es_sectionAmountText: RscText {
			idc = 1003;

			text = "Number of Sections";
			x = 0.112499;
			y = 0.46;
			w = 0.225;
			h = 0.04;
			sizeEx = 1.2 * GUI_GRID_H;
		};
		class bnb_es_title: RscText {
			idc = 1004;

			text = "Load 2BNB Slots & Modules";
			x = 0.112499;
			y = 0.04;
			w = 0.554999;
			h = 0.04;
			sizeEx = 1.5  * GUI_GRID_H;
		};
		class bnb_es_okButton: RscButtonMenuOK {
			x = 0.562499;
			y = 0.54;
			w = 0.12;
			h = 0.04;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
			onButtonClick = "[ctrlText 1400, ctrlText 1461, sliderPosition 1900] call bnb_es_core_fnc_edenCreateAssets";
		};
		class bnb_es_cancelButton: RscButtonMenuCancel {
			x = 0.7;
			y = 0.54;
			w = 0.12;
			h = 0.04;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
	};
};
