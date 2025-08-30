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
NI_ATTACK_WEAK_BREAKER						= 106
NI_TXTON01									= 107
NI_Text_CompleteTip01_OFF					= 108
NI_TXTON02									= 109
NI_Text_CompleteTip02_OFF					= 110
NI_TXTON03									= 111
NI_Text_CompleteTip03_OFF					= 112
NI_SCORE_COMPLETED02						= 113
NI_ATTACK_STRONG_BREAKER	 				= 114
NI_SCORE_COMPLETED03						= 115
NI_ATTACK_JUMP_BREAKER						= 116
-- NI_ATTACK_2_BREAKER						= 000 ����ϴ� ���� ����
-- NI_SCORE_COMPLETED04						= 000 ����ϴ� ���� ����
-- NI_ATTACK_STRONG1_BREAKER				= 000 ����ϴ� ���� ����
-- NI_SCORE_COMPLETED05						= 000 ����ϴ� ���� ����
NI_CONGRATULATION							= 117
NI_Text_ClearStep01_OFF						= 118
NI_ESC_CHECK								= 119

-- �ؽ�Ʈ
LoadStringTable( "Language/Script/challenge_string_table.x7" );

TXT_Weapon_Breaker_01=GetString( "TXT_Weapon_Breaker_01" );
TXT_Weapon_Breaker_02=GetString( "TXT_Weapon_Breaker_02" );
TXT_Weapon_Breaker_03=GetString( "TXT_Weapon_Breaker_03" );
TXT_Weapon_Breaker_04=GetString( "TXT_Weapon_Breaker_04" );
TXT_Weapon_Breaker_05=GetString( "TXT_Weapon_Breaker_05" );
TXT_Weapon_Breaker_06=GetString( "TXT_Weapon_Breaker_06" );
TXT_Weapon_Breaker_07=GetString( "TXT_Weapon_Breaker_07" );
TXT_Weapon_Breaker_08=GetString( "TXT_Weapon_Breaker_08" );
TXT_Weapon_Breaker_09=GetString( "TXT_Weapon_Breaker_09" );
TXT_Weapon_Breaker_10=GetString( "TXT_Weapon_Breaker_10" );
TXT_Weapon_Breaker_11=GetString( "TXT_Weapon_Breaker_11" );
TXT_Weapon_Breaker_12=GetString( "TXT_Weapon_Breaker_12" );
TXT_Weapon_Breaker_13=GetString( "TXT_Weapon_Breaker_13" );

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

--"ATTACK_JUMP_BREAKER_SWORD" 
--"ATTACK_WEAK_BREAKER_SWORD" 
--"ATTACK_AFTERDASH2_BREAKER_SWORD" 
--"ATTACK_AFTERDASH3_BREAKER_SWORD" 
--"BREAKER_SWORD_GATHERGUAGE"

-- <----------------- PvE �ʱ�ȭ -----------------> --
function InitPvETrigger()

	PvESystem:SetTotalStage( 1 );	-- ������ step�� ������ ����
	
	OnBreakerLicenseTestStep01		(); -- step1 ����

end
-- <---------------------------------------------------> --

function OnBreakerLicenseTestStep01()
	
	BreakerLicense = PvESystem:GetEmptyStage();	
	
	-- �ش�ð��� ������ �̺�Ʈ �߻�
	-- ( in_�����̺�Ʈ, out_�߻��̺�Ʈ, �ð�( ms ), in_�����̺�Ʈ, �ݺ����� ) �̺�Ʈ���� 0�ϰ�� �۵����� ����
	
	Timer_TextStart						= TriggerPackage:GetEventAlram( 0, NI_START, 0, 0, false );
	Timer_Text_Welcom01_Delay			= TriggerPackage:GetEventAlram( NI_START, NI_Text_Welcom01_OFF, 5000, 0, false );
	Timer_Text_Welcom02_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 3000, 0, false );
	Timer_Text_Welcom03_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false );
	
	Timer_Text_CompleteTip01_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED01, NI_TXTON01, 500, 0, false);
	Timer_Text_CompleteTip01			= TriggerPackage:GetEventAlram( NI_TXTON01, NI_Text_CompleteTip01_OFF, 5000, 0, false );

	Timer_Text_CompleteTip02_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED02, NI_TXTON02, 500, 0, false);
	Timer_Text_CompleteTip02			= TriggerPackage:GetEventAlram( NI_TXTON02, NI_Text_CompleteTip02_OFF, 5000, 0, false );	

	Timer_Text_CompleteTip03_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED03, NI_TXTON03, 500, 0, false);
	Timer_Text_CompleteTip03			= TriggerPackage:GetEventAlram( NI_TXTON03, NI_Text_CompleteTip03_OFF, 5000, 0, false );	
	
	-- ( ���� �̺�Ʈ )
	WeaponSlotRemoveAll					=  TriggerPackage:GetWeaponSlotRemoveAll( NI_START );

	-- ( ����̺�Ʈ, ���������Ű, X, Y, Z )
	Weapon_Drop_01 						= TriggerPackage:GetWeaponDrop( NI_Text_Welcom02_OFF, 2000013, 6, 671, -2199 );	

	Timer_Text_ClearStep01_off			= TriggerPackage:GetEventAlram( NI_Text_CompleteTip03_OFF, NI_Text_ClearStep01_OFF, 6000, 0, true );

	-- ��������
	-- ( ��ǥX, ��ǥY, in_�߻��̺�Ʈ, out_�Ϸ��̺�Ʈ, ��������, �������� )
	ScoreMng01							= TriggerPackage:GetScoreObserver( 50, 200, NI_ATTACK_WEAK_BREAKER, NI_SCORE_COMPLETED01, TXT_Weapon_Breaker_07, 3 );
	ScoreMng02							= TriggerPackage:GetScoreObserver( 50, 220, NI_ATTACK_STRONG_BREAKER, NI_SCORE_COMPLETED02, TXT_Weapon_Breaker_08, 3 );
	ScoreMng03							= TriggerPackage:GetScoreObserver( 50, 240, NI_ATTACK_JUMP_BREAKER, NI_SCORE_COMPLETED03, TXT_Weapon_Breaker_09, 3 );
	

	-- �ؽ�Ʈ ���̰� ����
	-- ( ��ǥx, ��ǥy, in_�����̺�Ʈ, in_�������̺�Ʈ, ǥ�����ؽ�Ʈ )
	Text_Welcom01 						= TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Weapon_Breaker_01 , "Resources/GUI/New/TutorialImage_1.gui" , true, false);
	Text_Welcom02						= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Weapon_Breaker_02 , "Resources/GUI/New/TutorialImage_1.gui" , true, false);
	Text_Welcom03						= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Weapon_Breaker_03 , "Resources/GUI/New/TutorialImage_1.gui" , true, false);
--guide	
	Text_Guide_01						= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_SCORE_COMPLETED01, TXT_Weapon_Breaker_04,"Resources/GUI/New/TutorialImage_1.gui" );
	Text_Guide_02						= TriggerPackage:GetTextViewerEx(600, 500, NI_SCORE_COMPLETED01, NI_SCORE_COMPLETED02, TXT_Weapon_Breaker_05 , "Resources/GUI/New/TutorialImage_1.gui" );
	Text_Guide_03						= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip02_OFF, NI_SCORE_COMPLETED03, TXT_Weapon_Breaker_06 , "Resources/GUI/New/TutorialImage_1.gui" );

	Text_ClearStep01					= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip03_OFF, 0, TXT_Weapon_Breaker_10, "Resources/GUI/New/TutorialImage_1.gui" );
--tip
	Text_CompleteTip01 					= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_OFF, TXT_Weapon_Breaker_11, "Resources/GUI/New/TutorialImage_0.gui" , true, false);
	Text_CompleteTip02	 				= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_OFF, TXT_Weapon_Breaker_12, "Resources/GUI/New/TutorialImage_0.gui" , true, false);
	Text_CompleteTip03	 				= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED03, NI_Text_CompleteTip03_OFF, TXT_Weapon_Breaker_13, "Resources/GUI/New/TutorialImage_0.gui" , true, false);

	-- ���� ���� ����
	-- ( in_�����̺�Ʈ, out_�߻��̺�Ʈ, �����Ұ���, �̺�Ʈ�� ���޹��� Ư��Ʈ���� )
	
	ActorAttackEvent01					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01, NI_ATTACK_WEAK_BREAKER, "ATTACK_WEAK_BREAKER_SWORD", ScoreMng01 );
	ActorAttackEvent02					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED02, NI_ATTACK_STRONG_BREAKER, "BREAKER_SWORD_GATHERGUAGE", ScoreMng02 );
	ActorAttackEnvet03					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED03, NI_ATTACK_JUMP_BREAKER, "ATTACK_JUMP_BREAKER_SWORD", ScoreMng03 );

	RegActorAttackEvent01				= TriggerPackage:GetObserverRegister( NI_Text_Welcom03_OFF, ActorAttackEvent01);
	RegActorAttackEvent02				= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED01, ActorAttackEvent02);
	RegActorAttackEvent03				= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED02, ActorAttackEnvet03);


	NarOK01								= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0 );
	NarOK02								= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02, 0, 0, 0, 0 );
	NarOK03								= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED03, 0, 0, 0, 0 );


	PressEscChecker						= TriggerPackage:GetKeyPressCheckerEx(NI_Text_CompleteTip03_OFF, NI_ESC_CHECK, IK_ESCAPE, NI_ESC_CHECK);
	Mission_Prize						= TriggerPackage:GetChallengePrize	( NI_ESC_CHECK, NI_CONGRATULATION );	
	Congraturation_Step01				= TriggerPackage:GetChallengeComplete( NI_CONGRATULATION );


-- ���	

	BreakerLicense:Register( RegActorAttackEvent01 );
	BreakerLicense:Register( RegActorAttackEvent02 );
	BreakerLicense:Register( RegActorAttackEvent03 );

	BreakerLicense:Register( NarOK01 );
	BreakerLicense:Register( NarOK02 );
	BreakerLicense:Register( NarOK03 );

	BreakerLicense:Register(Timer_Text_Welcom01_Delay);
	BreakerLicense:Register(Timer_Text_Welcom02_Delay);
	BreakerLicense:Register(Timer_Text_Welcom03_Delay);
	BreakerLicense:Register(Timer_Text_CompleteTip01_on);
	BreakerLicense:Register(Timer_Text_CompleteTip02_on);
	BreakerLicense:Register(Timer_Text_CompleteTip03_on);
	BreakerLicense:Register(Timer_Text_ClearStep01_off);

	BreakerLicense:Register(WeaponSlotRemoveAll);
	BreakerLicense:Register(Weapon_Drop_01);
	
	BreakerLicense:Register(Text_Welcom01);
	BreakerLicense:Register(Text_Welcom02);
	BreakerLicense:Register(Text_Welcom03);

	BreakerLicense:Register(Text_Guide_01);
	BreakerLicense:Register(Text_Guide_02);
	BreakerLicense:Register(Text_Guide_03);

	BreakerLicense:Register(Text_ClearStep01);

	BreakerLicense:Register( Timer_Text_CompleteTip01 );
	BreakerLicense:Register( Timer_Text_CompleteTip02 );
	BreakerLicense:Register( Timer_Text_CompleteTip03 );
	BreakerLicense:Register( Text_CompleteTip01 );
	BreakerLicense:Register( Text_CompleteTip02 );
	BreakerLicense:Register( Text_CompleteTip03 );
	BreakerLicense:Register(Timer_TextStart);

	BreakerLicense:Register(PressEscChecker);	
	BreakerLicense:Register(Mission_Prize);
	BreakerLicense:Register(Congraturation_Step01);
	
	PvESystem:AddStage( 0, BreakerLicense );
	
end
