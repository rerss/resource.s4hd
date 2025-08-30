require "Resources/Script/KeyMacro.lua"

-- GetSpawnHelper�� ���

SPAWN_FOCUS_ACTOR							= 0
SPAWN_ENERMY_SENTRYGUN						= 1
SPAWN_ENERMY_SENTYFORCE						= 2
SPAWN_TRIGGER_BEGIN							= 0
SPAWN_NOTIFY								= 1

-- Notify ID�̺�Ʈ �޼���
NI_START										= 101
NI_Text_Welcom01_OFF							= 102
NI_Text_Welcom02_OFF							= 103
NI_Text_Welcom03_OFF							= 104
NI_SCORE_COMPLETED01							= 105
NI_ATTACK_1_SPYDAGGER							= 106
NI_Text_CompleteTip01_on						= 107
NI_Text_CompleteTip01_off						= 108
NI_Text_CompleteTip02_on						= 109
NI_Text_CompleteTip02_off						= 110
NI_SCORE_COMPLETED02							= 111
NI_ATTACK_2_SPYDAGGER							= 112
NI_CONGRATULATION								= 113
NI_ESC_CHECK									= 114

-- �ؽ�Ʈ
LoadStringTable( "Language/Script/challenge_string_table.x7" );

TXT_Weapon_SpyDagger_01=GetString( "TXT_Weapon_SpyDagger_01" );
TXT_Weapon_SpyDagger_02=GetString( "TXT_Weapon_SpyDagger_02" );
TXT_Weapon_SpyDagger_03=GetString( "TXT_Weapon_SpyDagger_03" );
TXT_Weapon_SpyDagger_04=GetString( "TXT_Weapon_SpyDagger_04" );
TXT_Weapon_SpyDagger_05=GetString( "TXT_Weapon_SpyDagger_05" );
TXT_Weapon_SpyDagger_06=GetString( "TXT_Weapon_SpyDagger_06" );
TXT_Weapon_SpyDagger_07=GetString( "TXT_Weapon_SpyDagger_07" );
TXT_Weapon_SpyDagger_08=GetString( "TXT_Weapon_SpyDagger_08" );
TXT_Weapon_SpyDagger_09=GetString( "TXT_Weapon_SpyDagger_09" );
TXT_Weapon_SpyDagger_10=GetString( "TXT_Weapon_SpyDagger_10" );
TXT_Weapon_SpyDagger_11=GetString( "TXT_Weapon_SpyDagger_11" );
TXT_Weapon_SpyDagger_12=GetString( "TXT_Weapon_SpyDagger_12" );
TXT_Weapon_SpyDagger_13=GetString( "TXT_Weapon_SpyDagger_13" );
TXT_Weapon_SpyDagger_14=GetString( "TXT_Weapon_SpyDagger_14" );
TXT_Weapon_SpyDagger_15=GetString( "TXT_Weapon_SpyDagger_15" );
TXT_Weapon_SpyDagger_16=GetString( "TXT_Weapon_SpyDagger_16" );
TXT_Weapon_SpyDagger_17=GetString( "TXT_Weapon_SpyDagger_17" );
TXT_Weapon_SpyDagger_18=GetString( "TXT_Weapon_SpyDagger_18" );
TXT_Weapon_SpyDagger_19=GetString( "TXT_Weapon_SpyDagger_19" );
TXT_Weapon_SpyDagger_20=GetString( "TXT_Weapon_SpyDagger_20" );
TXT_Weapon_SpyDagger_21=GetString( "TXT_Weapon_SpyDagger_21" );

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



-- <---------------���α׷����� ������ ���⺰ ����Ÿ��------------------------------------> --

--"ATTACK_1_SPYDAGGER" --�Ϲ�, ��������
--"ATTACK_2_SPYDAGGER" --��Ŭ�� ���

-- <----------------- PvE �ʱ�ȭ -----------------> --
function InitPvETrigger()

	PvESystem:SetTotalStage( 1 );	-- ������ step�� ������ ����
	
	OnSpyDaggerLicenseTestStep01		(); -- step1 ����
	
end
-- <---------------------------------------------------> --

function OnSpyDaggerLicenseTestStep01()

	SpyDaggerLicense = PvESystem:GetEmptyStage();	
	
	
	-- �ش�ð��� ������ �̺�Ʈ �߻�
	-- ( in_�����̺�Ʈ, out_�߻��̺�Ʈ, �ð�( ms ), in_�����̺�Ʈ, �ݺ����� ) �̺�Ʈ���� 0�ϰ�� �۵����� ����

	Timer_TextStart						= TriggerPackage:GetEventAlram( 0, NI_START, 0, 0, false );
	Timer_Text_Welcom01_Delay			= TriggerPackage:GetEventAlram( NI_START, NI_Text_Welcom01_OFF, 3000, 0, false );
	Timer_Text_Welcom02_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 3000, 0, false );
	Timer_Text_Welcom03_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false );
	
	Timer_Text_CompleteTip01_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_on, 500, 0, false );
	Timer_Text_CompleteTip01_off		= TriggerPackage:GetEventAlram( NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, 3000, 0, false );

	Timer_Text_CompleteTip02_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_on, 500, 0, false );
	Timer_Text_CompleteTip02_off		= TriggerPackage:GetEventAlram( NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_off, 3000, 0, false );
	
	-- ( ���� �̺�Ʈ )
	WeaponSlotRemoveAll					=  TriggerPackage:GetWeaponSlotRemoveAll( NI_START );

	-- ( ����̺�Ʈ, ���������Ű, X, Y, Z )
	Weapon_Drop_01 						= TriggerPackage:GetWeaponDrop( NI_Text_Welcom01_OFF, 2000006, 6, 671, -2199 );	
		
	-- �ؽ�Ʈ ���̰� ����
	-- ( ��ǥx, ��ǥy, in_�����̺�Ʈ, in_�������̺�Ʈ, ǥ�����ؽ�Ʈ )
	Text_Welcom01					= TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Weapon_SpyDagger_01 , "Resources/GUI/New/TutorialImage_1.gui", true, false);
	Text_Welcom02					= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Weapon_SpyDagger_02 , "Resources/GUI/New/TutorialImage_1.gui", true, false);
	Text_Welcom03					= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Weapon_SpyDagger_03 , "Resources/GUI/New/TutorialImage_1.gui", true, false);
	
	Text_Guide01					= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_SCORE_COMPLETED01, TXT_Weapon_SpyDagger_04 , "Resources/GUI/New/TutorialImage_1.gui");
	Text_Guide02					= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_off, NI_SCORE_COMPLETED02, TXT_Weapon_SpyDagger_05 , "Resources/GUI/New/TutorialImage_1.gui");
	
	Text_CompleteTip01			    = TriggerPackage:GetTextViewerExA(512, 300, NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_off, TXT_Weapon_SpyDagger_08 , "Resources/GUI/New/TutorialImage_0.gui", true, false);
	Text_CompleteTip02				= TriggerPackage:GetTextViewerExA(512, 300, NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_off, TXT_Weapon_SpyDagger_09 , "Resources/GUI/New/TutorialImage_0.gui", true, false);

	Text_ClearStep01				= TriggerPackage:GetTextViewerExA(600, 500, NI_Text_CompleteTip02_off, 0, TXT_Weapon_SpyDagger_12, "Resources/GUI/New/TutorialImage_1.gui");

	-- ( ��ǥX, ��ǥY, in_�߻��̺�Ʈ, out_�Ϸ��̺�Ʈ, ��������, �������� )
	ScoreCheck01					= TriggerPackage:GetScoreObserver(50, 200, NI_ATTACK_1_SPYDAGGER, NI_SCORE_COMPLETED01, TXT_Weapon_SpyDagger_06, 3 );
	ScoreCheck02					= TriggerPackage:GetScoreObserver(50, 220, NI_ATTACK_2_SPYDAGGER, NI_SCORE_COMPLETED02, TXT_Weapon_SpyDagger_10, 3 );
	
	--Dummy_ScoreCheck01	 			= TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED01, 0, TXT_Weapon_SpyDagger_07 , "");
	--Dummy_ScoreCheck02	 			= TriggerPackage:GetTextViewerEx(50, 220, NI_SCORE_COMPLETED02, 0, TXT_Weapon_SpyDagger_11 , "");
	
	-- ( in_�����̺�Ʈ, out_�߻��̺�Ʈ, �����Ұ���, �̺�Ʈ�� ���޹��� Ư��Ʈ���� )
	ActorAttackCheck01	 			= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01, NI_ATTACK_1_SPYDAGGER, "ATTACK_1_SPYDAGGER", ScoreCheck01 );
	ActorAttackCheck02 				= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED02, NI_ATTACK_2_SPYDAGGER, "ATTACK_2_SPYDAGGER", ScoreCheck02 );
	
	-- �����̵� �̼Ƿ�ƿ� �̺�Ʈ Ű�� ������.( in �߻��̺�Ʈ, in ������ �ϴ� �̺�Ʈ �� )
	--ToScriptNotify = TriggerPackage:GetT2STriggerNotify( NI_SCORE_COMPLETED02, 2 );

	RegActorAttackCheck01			= TriggerPackage:GetObserverRegister( NI_Text_Welcom03_OFF, ActorAttackCheck01);
	RegActorAttackCheck02			= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED01, ActorAttackCheck02);
	
	NarOK01							= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0 );
	NarOK02							= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02, 0, 0, 0, 0 );

	--GateOpen_Step01					= TriggerPackage:GetCollisionChecker("trg_arrive_01", NI_CONGRATULATION, false);
	--RegGateOpen_Step01				= TriggerPackage:GetObserverRegister( NI_Text_CompleteTip02_off, GateOpen_Step01);
	
	PressEscChecker					= TriggerPackage:GetKeyPressCheckerEx(NI_Text_CompleteTip02_off, NI_ESC_CHECK, IK_ESCAPE, NI_ESC_CHECK);
	Mission_Prize					= TriggerPackage:GetChallengePrize	( NI_ESC_CHECK, NI_CONGRATULATION );
	Congraturation_Step01			= TriggerPackage:GetChallengeComplete( NI_CONGRATULATION );
		
	--IK_ESCAPE
	
	-- ���
	
	
	SpyDaggerLicense:Register( RegActorAttackCheck01 );
	SpyDaggerLicense:Register( RegActorAttackCheck02 );

	SpyDaggerLicense:Register( NarOK01 );
	SpyDaggerLicense:Register( NarOK02 );

	SpyDaggerLicense:Register(Timer_Text_Welcom01_Delay);
	SpyDaggerLicense:Register(Timer_Text_Welcom02_Delay);
	SpyDaggerLicense:Register(Timer_Text_Welcom03_Delay);
	SpyDaggerLicense:Register(Timer_Text_CompleteTip01_on);
	SpyDaggerLicense:Register(Timer_Text_CompleteTip01_off);
	SpyDaggerLicense:Register(Timer_Text_CompleteTip02_on);
	SpyDaggerLicense:Register(Timer_Text_CompleteTip02_off);

	SpyDaggerLicense:Register(WeaponSlotRemoveAll);
	SpyDaggerLicense:Register(Weapon_Drop_01);

	SpyDaggerLicense:Register(Text_Welcom01);
	SpyDaggerLicense:Register(Text_Welcom02);
	SpyDaggerLicense:Register(Text_Welcom03);

	SpyDaggerLicense:Register(Text_Guide01);
	SpyDaggerLicense:Register(Text_Guide02);
	
	SpyDaggerLicense:Register(Text_ClearStep01);
	
	SpyDaggerLicense:Register(Text_CompleteTip01);
	SpyDaggerLicense:Register(Text_CompleteTip02);
		
	SpyDaggerLicense:Register(PressEscChecker);	
	SpyDaggerLicense:Register(Mission_Prize);	
	SpyDaggerLicense:Register(Congraturation_Step01);
	--SpyDaggerLicense:Register(RegGateOpen_Step01 );

	PvESystem:AddStage( 0, SpyDaggerLicense );
end

NI_Start_Step02						= 201
NI_Text_Step02Start_off				= 202
NI_TestStart_Step02					= 203
NI_Text_TestStartStep02_OFF			= 204
NI_Fail								= 205
NI_Success							= 999
NI_Text_TestFail_OFF				= 207
NI_Text_TestSuccess_OFF				= 208
NI_SayThree							= 209
NI_SayTwo							= 210
NI_SayOne							= 211
NI_Des								= 212
NI_Rebirth01						= 213
NI_Des01							= 214
NI_Rebirth02						= 215
NI_Des02							= 216


