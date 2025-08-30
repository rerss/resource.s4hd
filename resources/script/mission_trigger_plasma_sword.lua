require "Resources/Script/KeyMacro.lua"

-- GetSpawnHelper�� ���

SPAWN_FOCUS_ACTOR							= 0
SPAWN_ENERMY_SENTRYGUN						= 1
SPAWN_ENERMY_SENTYFORCE						= 2
SPAWN_TRIGGER_BEGIN							= 0
SPAWN_NOTIFY								= 1

-- Notify ID�̺�Ʈ �޼���
NI_START									= 101
NI_Text_Welcom01_OFF						= 102
NI_Text_Welcom02_OFF						= 103
NI_Text_Welcom03_OFF						= 104
-- NI_COOUNTERSWORD_LOAD					= 000 ����ϴ� ���� ����
-- NI_UNLOCK_ACTOR							= 000 ����ϴ� ���� ����
NI_SCORE_COMPLETED01						= 105
NI_ATTACK_WEAK_PLASM_SWORD					= 106
NI_TXTON01									= 107
NI_Text_CompleteTip01_OFF					= 108
NI_TXTON02									= 109
NI_Text_CompleteTip02_OFF					= 110
NI_TXTON03									= 111
NI_Text_CompleteTip03_OFF					= 112
NI_SCORE_COMPLETED02						= 113
NI_ATTACK_STRONG_PLASMA_SWORD	 			= 114
NI_SCORE_COMPLETED03						= 115
NI_ATTACK_2_PLASMA_SWORD					= 116
NI_SCORE_COMPLETED04						= 117
NI_ATTACK_STRONG1_PLASMA_SWORD				= 118
NI_SCORE_COMPLETED05						= 119
NI_ATTACK_JUMP_PLASMA_SWORD					= 120
NI_CONGRATULATION							= 121
--NI_Text_ClearStep01_OFF					= 000 -- 2013.06.21 ���� ��� ����
NI_ESC_CHECK								= 122

-- �ؽ�Ʈ
LoadStringTable( "Language/Script/challenge_string_table.x7" );

TXT_Weapon_PlasmaSword_01=GetString( "TXT_Weapon_PlasmaSword_01" );
TXT_Weapon_PlasmaSword_02=GetString( "TXT_Weapon_PlasmaSword_02" );
TXT_Weapon_PlasmaSword_03=GetString( "TXT_Weapon_PlasmaSword_03" );
TXT_Weapon_PlasmaSword_04=GetString( "TXT_Weapon_PlasmaSword_04" );
TXT_Weapon_PlasmaSword_05=GetString( "TXT_Weapon_PlasmaSword_05" );
TXT_Weapon_PlasmaSword_06=GetString( "TXT_Weapon_PlasmaSword_06" );
TXT_Weapon_PlasmaSword_07=GetString( "TXT_Weapon_PlasmaSword_07" );
TXT_Weapon_PlasmaSword_08=GetString( "TXT_Weapon_PlasmaSword_08" );
TXT_Weapon_PlasmaSword_09=GetString( "TXT_Weapon_PlasmaSword_09" );
TXT_Weapon_PlasmaSword_10=GetString( "TXT_Weapon_PlasmaSword_10" );
TXT_Weapon_PlasmaSword_11=GetString( "TXT_Weapon_PlasmaSword_11" );
TXT_Weapon_PlasmaSword_12=GetString( "TXT_Weapon_PlasmaSword_12" );
TXT_Weapon_PlasmaSword_13=GetString( "TXT_Weapon_PlasmaSword_13" );
TXT_Weapon_PlasmaSword_14=GetString( "TXT_Weapon_PlasmaSword_14" );
TXT_Weapon_PlasmaSword_15=GetString( "TXT_Weapon_PlasmaSword_15" );
TXT_Weapon_PlasmaSword_16=GetString( "TXT_Weapon_PlasmaSword_16" );
TXT_Weapon_PlasmaSword_17=GetString( "TXT_Weapon_PlasmaSword_17" );
TXT_Weapon_PlasmaSword_18=GetString( "TXT_Weapon_PlasmaSword_18" );
TXT_Weapon_PlasmaSword_19=GetString( "TXT_Weapon_PlasmaSword_19" );
TXT_Weapon_PlasmaSword_20=GetString( "TXT_Weapon_PlasmaSword_20" );
TXT_Weapon_PlasmaSword_21=GetString( "TXT_Weapon_PlasmaSword_21" );
TXT_Weapon_PlasmaSword_22=GetString( "TXT_Weapon_PlasmaSword_22" );
TXT_Weapon_PlasmaSword_23=GetString( "TXT_Weapon_PlasmaSword_23" );
TXT_Weapon_PlasmaSword_24=GetString( "TXT_Weapon_PlasmaSword_24" );
TXT_Weapon_PlasmaSword_25=GetString( "TXT_Weapon_PlasmaSword_25" );
TXT_Weapon_PlasmaSword_26=GetString( "TXT_Weapon_PlasmaSword_26" );
TXT_Weapon_PlasmaSword_27=GetString( "TXT_Weapon_PlasmaSword_27" );
TXT_Weapon_PlasmaSword_28=GetString( "TXT_Weapon_PlasmaSword_28" );
TXT_Weapon_PlasmaSword_29=GetString( "TXT_Weapon_PlasmaSword_29" );
TXT_Weapon_PlasmaSword_30=GetString( "TXT_Weapon_PlasmaSword_30" );
TXT_Weapon_PlasmaSword_31=GetString( "TXT_Weapon_PlasmaSword_31" );
TXT_Weapon_PlasmaSword_32=GetString( "TXT_Weapon_PlasmaSword_32" );
TXT_Weapon_PlasmaSword_33=GetString( "TXT_Weapon_PlasmaSword_33" );

ClearStringTable();                                                                                          

-- <------------------- GUIViewType -------------------> --
-- TutorialGUISet.h ����� ����..

index = 0;

KEY_GUIDE							= index; index = index + 1;
KEYBOARD_STATE_MOVE					= index; index = index + 1;
KEYBOARD_STATE_JUMP					= index; index = index + 1;
KEYBOARD_STATE_SKILL				= index; index = index + 1;
KEYBOARD_STATE_SLIDE				= index; index = index + 1;
KEYBOARD_STATE_NON					= index; index = index + 1;
MOUSE_GUIDE							= index; index = index + 1;
MOUSE_STATE_ACTIVE					= index; index = index + 1;
MOUSE_STATE_NON						= index; index = index + 1;

-- <---------------------------------------------------> --

--"ATTACK_2_PLASMA_SWORD" 			--�ö�� ������ �뽬����
--"ATTACK_WEAK_PLASMA_SWORD"		--�ö�� ������ �Ϲݰ���
--"ATTACK_STRONG_PLASMA_SWORD"		--�ö�� ������ ������
--"ATTACK_STRONG1_PLASMA_SWORD"		--�ö�� ������ �뽬����
--"ATTACK_JUMP_PLASMA_SWORD"		--�ö�� ������ ��������

-- <----------------- PvE �ʱ�ȭ -----------------> --
function InitPvETrigger()

	PvESystem:SetTotalStage( 1 );	-- ������ step�� ������ ����
	
	OnPlasmaSwordLicenseTestStep01		(); -- step1 ����

end
-- <---------------------------------------------------> --

function OnPlasmaSwordLicenseTestStep01()
	
	PlasmaSwordLicense = PvESystem:GetEmptyStage();	
	
	-- �ش�ð��� ������ �̺�Ʈ �߻�
	-- ( in_�����̺�Ʈ, out_�߻��̺�Ʈ, �ð�( ms ), in_�����̺�Ʈ, �ݺ����� ) �̺�Ʈ���� 0�ϰ�� �۵����� ����
	
	Timer_TextStart						= TriggerPackage:GetEventAlram( 0, NI_START, 0, 0, false );
	Timer_Text_Welcom01_Delay			= TriggerPackage:GetEventAlram( NI_START, NI_Text_Welcom01_OFF, 5000, 0, false );
	Timer_Text_Welcom02_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 3000, 0, false );
	Timer_Text_Welcom03_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false );
	
	Timer_Text_CompleteTip01_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED03, NI_TXTON01, 500, 0, false);
	Timer_Text_CompleteTip01			= TriggerPackage:GetEventAlram( NI_TXTON01, NI_Text_CompleteTip01_OFF, 4000, 0, false );

	Timer_Text_CompleteTip02_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED02, NI_TXTON02, 500, 0, false);
	Timer_Text_CompleteTip02			= TriggerPackage:GetEventAlram( NI_TXTON02, NI_Text_CompleteTip02_OFF, 4000, 0, false );	

	Timer_Text_CompleteTip03_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED05, NI_TXTON03, 500, 0, false);
	Timer_Text_CompleteTip03			= TriggerPackage:GetEventAlram( NI_TXTON03, NI_Text_CompleteTip03_OFF, 4000, 0, false );	
	
	-- ( ���� �̺�Ʈ )
	WeaponSlotRemoveAll					=  TriggerPackage:GetWeaponSlotRemoveAll( NI_START );

	-- ( ����̺�Ʈ, ���������Ű, X, Y, Z )
	Weapon_Drop_01 						= TriggerPackage:GetWeaponDrop( NI_Text_Welcom02_OFF, 2000001, 6, 671, -2199 );	

--	Timer_Text_ClearStep01_off			= TriggerPackage:GetEventAlram( NI_Text_CompleteTip03_OFF, NI_Text_ClearStep01_OFF, 6000, 0, true );


	-- �ؽ�Ʈ ���̰� ����
	-- ( ��ǥx, ��ǥy, in_�����̺�Ʈ, in_�������̺�Ʈ, ǥ�����ؽ�Ʈ )
	Text_Welcom01 						= TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Weapon_PlasmaSword_01 , "Resources/GUI/New/TutorialImage_1.gui" , true, false);
	Text_Welcom02						= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Weapon_PlasmaSword_02 , "Resources/GUI/New/TutorialImage_1.gui" , true, false);
	Text_Welcom03						= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Weapon_PlasmaSword_03 , "Resources/GUI/New/TutorialImage_1.gui" , true, false);
	
	Text_Guide_01						= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_SCORE_COMPLETED01, TXT_Weapon_PlasmaSword_04,"Resources/GUI/New/TutorialImage_1.gui" );
	Text_Guide_02						= TriggerPackage:GetTextViewerEx(600, 500, NI_SCORE_COMPLETED01, NI_SCORE_COMPLETED02, TXT_Weapon_PlasmaSword_05 , "Resources/GUI/New/TutorialImage_1.gui" );
	Text_Guide_03						= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip02_OFF, NI_SCORE_COMPLETED03, TXT_Weapon_PlasmaSword_06 , "Resources/GUI/New/TutorialImage_1.gui" );
	Text_Guide_04						= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_OFF, NI_SCORE_COMPLETED04, TXT_Weapon_PlasmaSword_07 , "Resources/GUI/New/TutorialImage_1.gui" );
	Text_Guide_05						= TriggerPackage:GetTextViewerEx(600, 500, NI_SCORE_COMPLETED04, NI_SCORE_COMPLETED05, TXT_Weapon_PlasmaSword_08 , "Resources/GUI/New/TutorialImage_1.gui" );

	Text_CompleteTip01 					= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED03, NI_Text_CompleteTip01_OFF, TXT_Weapon_PlasmaSword_20, "Resources/GUI/New/TutorialImage_0.gui" , true, false);
	Text_CompleteTip02	 				= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_OFF, TXT_Weapon_PlasmaSword_21, "Resources/GUI/New/TutorialImage_0.gui" , true, false);
	Text_CompleteTip03	 				= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED05, NI_Text_CompleteTip03_OFF, TXT_Weapon_PlasmaSword_22, "Resources/GUI/New/TutorialImage_0.gui" , true, false);

	Text_ClearStep01					= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip03_OFF, 0, TXT_Weapon_PlasmaSword_19, "Resources/GUI/New/TutorialImage_1.gui" );

	-- ��������
	-- ( ��ǥX, ��ǥY, in_�߻��̺�Ʈ, out_�Ϸ��̺�Ʈ, ��������, �������� )
	ScoreMng01							= TriggerPackage:GetScoreObserver( 50, 200, NI_ATTACK_WEAK_PLASM_SWORD, NI_SCORE_COMPLETED01, TXT_Weapon_PlasmaSword_09, 3 );
	ScoreMng02							= TriggerPackage:GetScoreObserver( 50, 220, NI_ATTACK_STRONG_PLASMA_SWORD, NI_SCORE_COMPLETED02, TXT_Weapon_PlasmaSword_10, 3 );
	ScoreMng03							= TriggerPackage:GetScoreObserver( 50, 240, NI_ATTACK_2_PLASMA_SWORD, NI_SCORE_COMPLETED03, TXT_Weapon_PlasmaSword_11, 3 );
	ScoreMng04							= TriggerPackage:GetScoreObserver( 50, 260, NI_ATTACK_STRONG1_PLASMA_SWORD, NI_SCORE_COMPLETED04, TXT_Weapon_PlasmaSword_12, 3 );
	ScoreMng05							= TriggerPackage:GetScoreObserver( 50, 280, NI_ATTACK_JUMP_PLASMA_SWORD, NI_SCORE_COMPLETED05, TXT_Weapon_PlasmaSword_13, 3 );
	
	--Dummy_Score01	= TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED01, NI_ATTACK_WEAK_PLASM_SWORD, TXT_Weapon_PlasmaSword_14 , "" );
	--Dummy_Score02	= TriggerPackage:GetTextViewerEx(50, 220, NI_SCORE_COMPLETED02, NI_ATTACK_STRONG_PLASMA_SWORD, TXT_Weapon_PlasmaSword_15 , "" );
	--Dummy_Score03	= TriggerPackage:GetTextViewerEx(50, 240, NI_SCORE_COMPLETED03, NI_ATTACK_2_PLASMA_SWORD, TXT_Weapon_PlasmaSword_16 , "" );
	--Dummy_Score04	= TriggerPackage:GetTextViewerEx(50, 260, NI_SCORE_COMPLETED04, NI_ATTACK_STRONG1_PLASMA_SWORD, TXT_Weapon_PlasmaSword_17 , "" );
	--Dummy_Score05	= TriggerPackage:GetTextViewerEx(50, 280, NI_SCORE_COMPLETED05, NI_ATTACK_JUMP_PLASMA_SWORD, TXT_Weapon_PlasmaSword_18 , "" );

	-- ���� ���� ����
	-- ( in_�����̺�Ʈ, out_�߻��̺�Ʈ, �����Ұ���, �̺�Ʈ�� ���޹��� Ư��Ʈ���� )
		
	ActorAttackEvent01					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01, NI_ATTACK_WEAK_PLASM_SWORD, "ATTACK_WEAK_PLASMA_SWORD", ScoreMng01 );
	ActorAttackEvent02					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED02, NI_ATTACK_STRONG_PLASMA_SWORD, "ATTACK_STRONG_PLASMA_SWORD", ScoreMng02 );
	ActorAttackEnvet03					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED03, NI_ATTACK_2_PLASMA_SWORD, "ATTACK_2_PLASMA_SWORD", ScoreMng03 );
	ActorAttackEnvet04					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED04, NI_ATTACK_STRONG1_PLASMA_SWORD, "ATTACK_STRONG1_PLASMA_SWORD", ScoreMng04 );
	ActorAttackEnvet05					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED05, NI_ATTACK_JUMP_PLASMA_SWORD, "ATTACK_JUMP_PLASMA_SWORD", ScoreMng05 );

	RegActorAttackEvent01				= TriggerPackage:GetObserverRegister( NI_Text_Welcom03_OFF, ActorAttackEvent01);
	RegActorAttackEvent02				= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED01, ActorAttackEvent02);
	RegActorAttackEvent03				= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED02, ActorAttackEnvet03);
	RegActorAttackEvent04				= TriggerPackage:GetObserverRegister( NI_Text_CompleteTip01_OFF, ActorAttackEnvet04);
	RegActorAttackEvent05				= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED04, ActorAttackEnvet05);

--	GateOpen_Step01						= TriggerPackage:GetCollisionChecker("trg_arrive_01", NI_CONGRATULATION, false);
--	RegGateOpen_Step01					= TriggerPackage:GetObserverRegister( NI_Text_ClearStep01_OFF, GateOpen_Step01);

	NarOK01								= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0 );
	NarOK02								= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02, 0, 0, 0, 0 );
	NarOK03								= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED03, 0, 0, 0, 0 );
	NarOK04								= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED04, 0, 0, 0, 0 );
	NarOK05								= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED05, 0, 0, 0, 0 );

	--Hit_Box01_off				= TriggerPackage:GetSceneVisible( true, "lc_countersword_hit.scn", NI_START);

	--Arrow_Gate_off_01		= TriggerPackage:GetSceneVisible( true, "lc_countersword_arrow.scn", NI_START);
	--Arrow_Gate_on_01		= TriggerPackage:GetSceneVisible( false, "lc_countersword_arrow.scn", NI_Text_CompleteTip03_OFF);

	PressEscChecker						= TriggerPackage:GetKeyPressCheckerEx(NI_Text_CompleteTip03_OFF, NI_ESC_CHECK, IK_ESCAPE, NI_ESC_CHECK);
	Mission_Prize						= TriggerPackage:GetChallengePrize	( NI_ESC_CHECK, NI_CONGRATULATION );	
	Congraturation_Step01				= TriggerPackage:GetChallengeComplete( NI_CONGRATULATION );


-- ���	

	PlasmaSwordLicense:Register( RegActorAttackEvent01 );
	PlasmaSwordLicense:Register( RegActorAttackEvent02 );
	PlasmaSwordLicense:Register( RegActorAttackEvent03 );
	PlasmaSwordLicense:Register( RegActorAttackEvent04 );
	PlasmaSwordLicense:Register( RegActorAttackEvent05 );
--	PlasmaSwordLicense:Register( RegGateOpen_Step01 );

	PlasmaSwordLicense:Register( NarOK01 );
	PlasmaSwordLicense:Register( NarOK02 );
	PlasmaSwordLicense:Register( NarOK03 );
	PlasmaSwordLicense:Register( NarOK04 );
	PlasmaSwordLicense:Register( NarOK05 );

	PlasmaSwordLicense:Register(Timer_Text_Welcom01_Delay);
	PlasmaSwordLicense:Register(Timer_Text_Welcom02_Delay);
	PlasmaSwordLicense:Register(Timer_Text_Welcom03_Delay);
	
	PlasmaSwordLicense:Register(Timer_Text_CompleteTip01_on);
    PlasmaSwordLicense:Register( Timer_Text_CompleteTip01 );	
    PlasmaSwordLicense:Register(Timer_Text_CompleteTip02_on);
    PlasmaSwordLicense:Register( Timer_Text_CompleteTip02 );
	PlasmaSwordLicense:Register(Timer_Text_CompleteTip03_on);
	PlasmaSwordLicense:Register( Timer_Text_CompleteTip03 );
--	PlasmaSwordLicense:Register(Timer_Text_ClearStep01_off);

	PlasmaSwordLicense:Register(WeaponSlotRemoveAll);
	PlasmaSwordLicense:Register(Weapon_Drop_01);
	
	PlasmaSwordLicense:Register(Text_Welcom01);
	PlasmaSwordLicense:Register(Text_Welcom02);
	PlasmaSwordLicense:Register(Text_Welcom03);

	PlasmaSwordLicense:Register(Text_Guide_01);
	PlasmaSwordLicense:Register(Text_Guide_02);
	PlasmaSwordLicense:Register(Text_Guide_03);
	PlasmaSwordLicense:Register(Text_Guide_04);
	PlasmaSwordLicense:Register(Text_Guide_05);

	PlasmaSwordLicense:Register(Text_ClearStep01);

	--PlasmaSwordLicense:Register(Dummy_Score01);
	--PlasmaSwordLicense:Register(Dummy_Score02);
	--PlasmaSwordLicense:Register(Dummy_Score03);
	--PlasmaSwordLicense:Register(Dummy_Score04);
	--PlasmaSwordLicense:Register(Dummy_Score05);

	PlasmaSwordLicense:Register( Text_CompleteTip01 );
	PlasmaSwordLicense:Register( Text_CompleteTip02 );
	PlasmaSwordLicense:Register( Text_CompleteTip03 );
	PlasmaSwordLicense:Register(Timer_TextStart);

	--PlasmaSwordLicense:Register(Hit_Box01_off);

	--PlasmaSwordLicense:Register(Arrow_Gate_off_01);
	--PlasmaSwordLicense:Register(Arrow_Gate_on_01);

	--CounterSwordLicense:Register(GateOpen_Step01);

	--PlasmaSwordLicense:Register(MessageBox_Step01);

	PlasmaSwordLicense:Register(PressEscChecker);	
	PlasmaSwordLicense:Register(Mission_Prize);
	PlasmaSwordLicense:Register(Congraturation_Step01);
	
	PvESystem:AddStage( 0, PlasmaSwordLicense );


	
end

NI_Start_Step02						= 201
NI_Text_Step02Start_off				= 202
NI_TestStart_Step02					= 203
NI_Text_TestStartStep02_OFF			= 204
NI_Fail								= 205
NI_Text_TestFail_OFF				= 206
NI_Blast							= 207
NI_Text_Blast_01_off				= 208
NI_Success							= 999
NI_Text_TestSuccess_OFF				= 210
NI_Blast_01							= 211
NI_Blast_02							= 212
NI_Blast_03							= 213
NI_Text_Blast_02_off				= 214
NI_Text_Blast_03_off				= 215
NI_Phase2							= 216
NI_SayThree							= 217
NI_SayTwo							= 218
NI_SayOne							= 219

