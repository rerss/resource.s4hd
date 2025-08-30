
-- GetSpawnHelper�� ���

SPAWN_FOCUS_ACTOR							= 0
SPAWN_ENERMY_SENTRYGUN				= 1
SPAWN_ENERMY_SENTYFORCE				= 2
SPAWN_ALLIANCE_MALE						= 3
SPAWN_ALLIANCE_FEMALE					= 4
SPAWN_ENEMY_MALE							= 5
SPAWN_ENEMY_FEMALE						= 6

SPAWN_TRIGGER_BEGIN							= 0
SPAWN_NOTIFY										= 1




-- <------------------- GUIViewType -------------------> --
-- TutorialGUISet.h ����� ����..

index = 0;

KEY_GUIDE							= index; index = index + 1;
KEYBOARD_STATE_MOVE		= index; index = index + 1;
KEYBOARD_STATE_JUMP		= index; index = index + 1;
KEYBOARD_STATE_SKILL		= index; index = index + 1;
KEYBOARD_STATE_SLIDE		= index; index = index + 1;
KEYBOARD_STATE_NON			= index; index = index + 1;

MOUSE_GUIDE						= index; index = index + 1;
MOUSE_STATE_ACTIVE			= index; index = index + 1;
MOUSE_STATE_NON				= index; index = index + 1;

-- <---------------------------------------------------> --

--"SKILL_FLY"				
--"SKILL_ANCHORING"		
--"SKILL_STEALTH"			
--"SKILL_SENSOR"			
--"SKILL_SHIELD"			
--"SKILL_WALL_CREATION"	
--"SKILL_BIND"				
--"SKILL_METALIC"			
--"SKILL_BERSERK"			
--"ATTACK_1_SUBMACHINE_GUN"
--"ATTACK_1_MACHINE_GUN"
--"ATTACK_1_RIFLE"
--"ATTACK_1_SENTRYGUN_BUILDER"
--"ATTACK_1_MINE_LAUNCHER"
--"ATTACK_1_MIND_ENERGY"
--"ATTACK_1_REVOLVER"	
--"ATTACK_1_CANNONADE"
--"ATTACK_1_MIND_STROM"
--"ATTACK_1_SENTIWALL_BUILDER"



--"ATTACK_2_COUNTER_SWORD"
--"ATTACK_STRONG_COUNTER_SWORD"
--"ATTACK_WEAK_COUNTER_SWORD"
--"ATTACK_AFTERDASH2_COUNTER_SWORD"
--"ATTACK_AFTERDASH3_COUNTER_SWORD"
--"ATTACK_AFTERDASH4_COUNTER_SWORD"
--"ATTACK_JUMP_COUNTER_SWORD"


--"ATTACK_2_PLASMA_SWORD"
--"ATTACK_WEAK_PLASMA_SWORD"
--"ATTACK_STRONG_PLASMA_SWORD"
--"ATTACK_STRONG1_PLASMA_SWORD"
--"ATTACK_JUMP_PLASMA_SWORD"


-- <----------------- Ʃ�丮�� �ʱ�ȭ -----------------> --
function OnMetalicLicenseTest()

	TutorialSystem:SetTotalStage( 2 );	-- ������ step�� ������ ����
	
	OnMetalicLicenseTestStep01		(); -- step1 ����
	OnMetalicLicenseTestStep02		(); -- step2 ����

end
-- <---------------------------------------------------> --


-- Notify ID�̺�Ʈ �޼���
NI_START										= 101
NI_Text_Welcom01_OFF					= 102
NI_Text_Welcom02_OFF					= 103
NI_Text_Welcom03_OFF					= 104
NI_SCORE_COMPLETED01				= 105
NI_SKILL_ANCHORING						= 106
NI_Text_CompleteTip01_on				= 107
NI_Text_CompleteTip01_off				= 108
NI_Text_CompleteTip02_on				= 109
NI_Text_CompleteTip02_off				= 110
NI_CONGRATULATION						= 111
NI_SCORE_COMPLETED02				= 112

-- �ؽ�Ʈ
LoadStringTable( "Language/Script/tutorial_string_table.x7" );

TXT_Skill_Metalic_01=GetString( "TXT_Skill_Metalic_01" );
TXT_Skill_Metalic_02=GetString( "TXT_Skill_Metalic_02" );
TXT_Skill_Metalic_03=GetString( "TXT_Skill_Metalic_03" );
TXT_Skill_Metalic_04=GetString( "TXT_Skill_Metalic_04" );
TXT_Skill_Metalic_05=GetString( "TXT_Skill_Metalic_05" );
TXT_Skill_Metalic_06=GetString( "TXT_Skill_Metalic_06" );
TXT_Skill_Metalic_07=GetString( "TXT_Skill_Metalic_07" );
TXT_Skill_Metalic_08=GetString( "TXT_Skill_Metalic_08" );
TXT_Skill_Metalic_09=GetString( "TXT_Skill_Metalic_09" );
TXT_Skill_Metalic_10=GetString( "TXT_Skill_Metalic_10" );
TXT_Skill_Metalic_11=GetString( "TXT_Skill_Metalic_11" );
TXT_Skill_Metalic_12=GetString( "TXT_Skill_Metalic_12" );
TXT_Skill_Metalic_13=GetString( "TXT_Skill_Metalic_13" );
TXT_Skill_Metalic_14=GetString( "TXT_Skill_Metalic_14" );
TXT_Skill_Metalic_15=GetString( "TXT_Skill_Metalic_15" );
TXT_Skill_Metalic_16=GetString( "TXT_Skill_Metalic_16" );
                           
ClearStringTable();

function OnMetalicLicenseTestStep01()

	MetalicLicense = TutorialSystem:GetEmptyStage();	
	
		-- ĳ���͹� ��Ż�� ����
		-- ( Ʈ���� �ߵ�����, ����Ÿ��, ������Ʈ���Źڽ�, �����̺�Ʈ(SPAWN_NOTIFY �϶��� �����), �߻��̺�Ʈ( SPAWN_FOCUS_ACTOR �� �ƴҰ�쿡�� ����� ) )
		ActorSpawn 			= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true );
		
		-- ����������
		-- ( �����ҽ���, �����۾��̵�, in_�����̺�Ʈ )
		MetalicLoad				= TriggerPackage:GetItemDuplicator( 0, 3080001, 0, 0 );
		
		-- �ش�ð��� ������ �̺�Ʈ �߻�
		-- ( in_�����̺�Ʈ, out_�߻��̺�Ʈ, �ð�( ms ), in_�����̺�Ʈ, �ݺ����� ) �̺�Ʈ���� 0�ϰ�� �۵����� ����
		
		Timer_TextStart							= TriggerPackage:GetEventAlram( 0, NI_START, 0, 0, false );
		Timer_Text_Welcom01_Delay			= TriggerPackage:GetEventAlram( NI_START, NI_Text_Welcom01_OFF, 5000, 0, false );
		Timer_Text_Welcom02_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 2000, 0, false );
		Timer_Text_Welcom03_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false );

		Timer_Text_CompleteTip01_on		= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_on, 1000, 0, false );
		Timer_Text_CompleteTip01_off		= TriggerPackage:GetEventAlram( NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, 12000, 0, false );

		Timer_Text_CompleteTip02_on		= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_on, 1000, 0, false );
		Timer_Text_CompleteTip02_off		= TriggerPackage:GetEventAlram( NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_off, 12000, 0, false );

		Text_ClearStep01						= TriggerPackage:GetTextViewerEx(220, 250, NI_Text_CompleteTip01_off, 0, TXT_Skill_Metalic_08, "Resources/GUI/New/TutorialImage_1.gui" );
		
		KeyPermiter01								= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_START, NI_START, false );
		KeyPermiter02								= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_Welcom03_OFF, NI_Text_Welcom03_OFF, true );

		KeyPermiter03								= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_on, false );
		KeyPermiter04								= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_off, NI_Text_CompleteTip01_off, true );

		KeyPermiter05								= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_on, false );
		KeyPermiter06								= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_off, NI_Text_CompleteTip02_off, true );
		
		-- GetSceneVisible						( true �Ǵ� false, "�� �̸�", �̺�Ʈ�̸� )
		Arrow_Gate_off_01						= TriggerPackage:GetSceneVisible( true, "lc_arrow.scn", NI_START);
		Arrow_Gate_on_01						= TriggerPackage:GetSceneVisible( false, "lc_arrow.scn", NI_Text_CompleteTip01_off);
	
		-- �ؽ�Ʈ ���̰� ����
		-- ( ��ǥx, ��ǥy, in_�����̺�Ʈ, in_�������̺�Ʈ, ǥ�����ؽ�Ʈ )
		Text_Welcom01							= TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Skill_Metalic_01 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
		Text_Welcom02							= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Skill_Metalic_02 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
		Text_Welcom03							= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Skill_Metalic_03 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
		
		Text_Guide01								= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_Text_CompleteTip01_on, TXT_Skill_Metalic_04 , "Resources/GUI/New/TutorialImage_1.gui");
		
		Text_CompleteTip01	 = TriggerPackage:GetTextViewerExA( 512, 300, NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, TXT_Skill_Metalic_07 , "Resources/GUI/New/TutorialImage_0.gui", true, false);
		
		-- ( ��ǥX, ��ǥY, in_�߻��̺�Ʈ, out_�Ϸ��̺�Ʈ, ��������, �������� )
		ScoreCheck01							= TriggerPackage:GetScoreObserver( 50, 200, NI_SKILL_ANCHORING, NI_SCORE_COMPLETED01, TXT_Skill_Metalic_05, 3 );

		Dummy_ScoreCheck01					= TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED01, NI_SKILL_ANCHORING, TXT_Skill_Metalic_06 , "");
		
		-- ( in_�����̺�Ʈ, out_�߻��̺�Ʈ, �����Ұ���, �̺�Ʈ�� ���޹��� Ư��Ʈ���� )
		ActorAttackCheck01						= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01, NI_SKILL_ANCHORING, "SKILL_METALIC", ScoreCheck01 );

		RegActorAttackCheck01				= TriggerPackage:GetObserverRegister( NI_Text_Welcom03_OFF, ActorAttackCheck01);
	
		NarOK01										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0 );
			
		GateOpen_Step02						= TriggerPackage:GetCollisionChecker("trg_arrive_01", NI_CONGRATULATION, false);
		RegGateOpen_Step02					= TriggerPackage:GetObserverRegister( NI_Text_CompleteTip01_off, GateOpen_Step02);
	
		MessageBox_Step01					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, 0, 20 );
	
		Congraturation_Step01					= TriggerPackage:GetTutorialComplete( NI_CONGRATULATION );
		
		-- ���

	MetalicLicense:Register(ActorSpawn);

	MetalicLicense:Register(MetalicLoad);

	MetalicLicense:Register(Timer_TextStart);
	MetalicLicense:Register(Timer_Text_Welcom01_Delay);
	MetalicLicense:Register(Timer_Text_Welcom02_Delay);
	MetalicLicense:Register(Timer_Text_Welcom03_Delay);
	
	MetalicLicense:Register(Timer_Text_CompleteTip01_on);
	MetalicLicense:Register(Timer_Text_CompleteTip01_off);

	MetalicLicense:Register(Timer_Text_CompleteTip02_on);
	MetalicLicense:Register(Timer_Text_CompleteTip02_off);

	MetalicLicense:Register(Text_ClearStep01);
	
	MetalicLicense:Register(KeyPermiter01);
	MetalicLicense:Register(KeyPermiter02);

	MetalicLicense:Register(KeyPermiter03);
	MetalicLicense:Register(KeyPermiter04);
	
	MetalicLicense:Register(KeyPermiter05);
	MetalicLicense:Register(KeyPermiter06);


	MetalicLicense:Register(Arrow_Gate_off_01);

	MetalicLicense:Register(Arrow_Gate_on_01);
	
	MetalicLicense:Register(Text_Welcom01);
	MetalicLicense:Register(Text_Welcom02);
	MetalicLicense:Register(Text_Welcom03);
	
	MetalicLicense:Register(Text_Guide01);
	
	MetalicLicense:Register(Text_CompleteTip01);
	
	MetalicLicense:Register(Dummy_ScoreCheck01);
	--MetalicLicense:Register(ActorAttackCheck01);
	
	MetalicLicense:Register(RegActorAttackCheck01);
	
	MetalicLicense:Register(NarOK01);

	MetalicLicense:Register(RegGateOpen_Step02);
	--MetalicLicense:Register();

	MetalicLicense:Register(Congraturation_Step01);

	MetalicLicense:Register(MessageBox_Step01);

--	MetalicLicense:Register(GateOpen_Step02);

	TutorialSystem:AddStage( 0, MetalicLicense );
			
end

NI_Start_Step02						= 201
NI_Text_Step02Start_off				= 202
NI_TestStart_Step02					= 203
NI_Text_TestStartStep02_OFF	= 204
NI_Fail									= 205
NI_Success							= 999
NI_Text_TestFail_OFF				= 207
NI_Text_TestSuccess_OFF		= 208
NI_SayThree							= 209
NI_SayTwo								= 210
NI_SayOne								= 211
NI_Des									= 212

function OnMetalicLicenseTestStep02()

	TestStage									= TutorialSystem:GetEmptyStage();
	
	-- ĳ���͹� ���� ����
	-- ( Ʈ���� �ߵ�����, ����Ÿ��, ������Ʈ���Źڽ�, �����̺�Ʈ(SPAWN_NOTIFY �϶��� �����), �߻��̺�Ʈ( SPAWN_FOCUS_ACTOR �� �ƴҰ�쿡�� ����� ) )
	ActorSpawn 								= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true );
	
	CentryGunSpawn01			 			= TriggerPackage:GetSpawnHelper( SPAWN_NOTIFY, SPAWN_ENERMY_SENTRYGUN, "trg_sentry01", NI_TestStart_Step02, NI_Des, 0, 0, true );
														TriggerPackage:SetSpawnHelperHP( CentryGunSpawn01, 100, 1 );
	CentryGunSpawn02	 		 			= TriggerPackage:GetSpawnHelper( SPAWN_NOTIFY, SPAWN_ENERMY_SENTRYGUN, "trg_sentry02", NI_TestStart_Step02, NI_Des, 0, 0, true );
														TriggerPackage:SetSpawnHelperHP( CentryGunSpawn02, 100, 1 );
	CentryGunSpawn03			 			= TriggerPackage:GetSpawnHelper( SPAWN_NOTIFY, SPAWN_ENERMY_SENTRYGUN, "trg_sentry03", NI_TestStart_Step02, NI_Des, 0, 0, true );
														TriggerPackage:SetSpawnHelperHP( CentryGunSpawn03, 100, 1 );
	CentryGunSpawn04			 			= TriggerPackage:GetSpawnHelper( SPAWN_NOTIFY, SPAWN_ENERMY_SENTRYGUN, "trg_sentry04", NI_TestStart_Step02, NI_Des, 0, 0, true );
														TriggerPackage:SetSpawnHelperHP( CentryGunSpawn04, 100, 1 );
	CentryGunSpawn05		 				= TriggerPackage:GetSpawnHelper( SPAWN_NOTIFY, SPAWN_ENERMY_SENTRYGUN, "trg_sentry05", NI_TestStart_Step02, NI_Des, 0, 0, true );
														TriggerPackage:SetSpawnHelperHP( CentryGunSpawn05, 100, 1 );
	CentryGunSpawn06			 			= TriggerPackage:GetSpawnHelper( SPAWN_NOTIFY, SPAWN_ENERMY_SENTRYGUN, "trg_sentry06", NI_TestStart_Step02, NI_Des, 0, 0, true );
														TriggerPackage:SetSpawnHelperHP( CentryGunSpawn06, 100, 1 );
	CentryGunSpawn07			 			= TriggerPackage:GetSpawnHelper( SPAWN_NOTIFY, SPAWN_ENERMY_SENTRYGUN, "trg_sentry07", NI_TestStart_Step02, NI_Des, 0, 0, true );
														TriggerPackage:SetSpawnHelperHP( CentryGunSpawn07, 100, 1 );
	
	ScoreCheck01							= TriggerPackage:GetScoreObserver( 50, 200, NI_Des, NI_Success, TXT_Skill_Metalic_9, 7 );
	
	-- ����������
	-- ( �����ҽ���, �����۾��̵�, in_�����̺�Ʈ )
	MetalicLoad								= TriggerPackage:GetItemDuplicator( 0, 3080001, 0, 0 );
	--SubMachineGunLoad					= TriggerPackage:GetItemDuplicator( 0, 2010000, 0, 0 );
	--MindShockLoad							= TriggerPackage:GetItemDuplicator( 0, 2060002, 0, 0 );	
	PlasmaSwordLoad				= TriggerPackage:GetItemDuplicator( 0, 2000000, 0, 0 );
	
	Timer_StartStep02						= TriggerPackage:GetEventAlram( 0, NI_Start_Step02, 0, 0, false );
	Timer_Text_Step02Start					= TriggerPackage:GetEventAlram( NI_Start_Step02, NI_Text_Step02Start_off, 5000, 0, false );
	Timer_ReadyStep02						= TriggerPackage:GetEventAlram( NI_Text_Step02Start_off, NI_TestStart_Step02, 5000, 0, false );

	Timer_Text_TestStartStep02_off		= TriggerPackage:GetEventAlram( NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, 2000, 0, false );
	
	Timer_End									= TriggerPackage:GetEventAlram( NI_TestStart_Step02, NI_Fail, 10000, NI_Success, false);
														TriggerPackage:SetShowEventAlram(Timer_End, 470, 50, TXT_Skill_Metalic_10, 1 );

	Timer_Text_TestFail_off				= TriggerPackage:GetEventAlram( NI_Fail, NI_Text_TestFail_OFF, 3000, 0, false);
	Timer_Text_TestSuccess_off			= TriggerPackage:GetEventAlram( NI_Success, NI_Text_TestSuccess_OFF, 10000, 0, false);

	Hold_Actor_Step02_01					= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Start_Step02, NI_Start_Step02, false );
	Realse_Actor_Step02_01				= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_TestStart_Step02, NI_TestStart_Step02, true );

	Arrow_Gate_off_01						= TriggerPackage:GetSceneVisible( false, "lc_arrow.scn", NI_Text_CompleteTip02_off);
	
	Text_Step02Start							= TriggerPackage:GetTextViewerExA( 512, 250, NI_Start_Step02, NI_Text_Step02Start_off, TXT_Skill_Metalic_11, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_Step02Ready						= TriggerPackage:GetTextViewerExA( 512, 250, NI_Text_Step02Start_off, NI_TestStart_Step02, TXT_Skill_Metalic_12, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_TestStartStep02					= TriggerPackage:GetTextViewerExA( 512, 250, NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, TXT_Skill_Metalic_13, "Resources/GUI/New/TutorialImage_1.gui" , true, false );

	Text_Guide_Step02_01					= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_TestStartStep02_OFF, 0, TXT_Skill_Metalic_14, "Resources/GUI/New/TutorialImage_1.gui");
	
	Text_TestFail								= TriggerPackage:GetTextViewerExA( 512, 250, NI_Fail, NI_Text_TestFail_OFF, TXT_Skill_Metalic_15, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_TestSuccess						= TriggerPackage:GetTextViewerExA( 512, 200, NI_Success, NI_Text_TestSuccess_OFF, TXT_Skill_Metalic_16, "Resources/GUI/New/TutorialImage_1.gui" , true, false );

	GoalOpen_Step01						= TriggerPackage:GetCollisionChecker("trg_arrive_02", NI_Success, false);
	RegGateOpen_Step01					= TriggerPackage:GetObserverRegister( NI_Text_TestStartStep02_OFF, GoalOpen_Step01);
	
	--GetItemLicensed(in_�����̺�Ʈ, ���̼������̵�)

	-- Ʃ�丮�� ���� ���� �κ�
	Timer_SayThree							= TriggerPackage:GetEventAlram( NI_Text_Step02Start_off, NI_SayThree, 2000, 0, false);
	Timer_SayTwo							= TriggerPackage:GetEventAlram( NI_SayThree, NI_SayTwo, 1000, 0, false);
	Timer_SayOne							= TriggerPackage:GetEventAlram( NI_SayTwo, NI_SayOne, 1000, 0, false);	
	
	NarThree									= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\3.ogg", "", NI_SayThree, 0, 0, 0, 0 );
	NarTwo										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\2.ogg", "", NI_SayTwo, 0, 0, 0, 0 );
	NarOne										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\1.ogg", "", NI_SayOne, 0, 0, 0, 0 );

	NarEnd										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_Success, 0, 0, 0, 0 );
	NarWinGame								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_have_won_the_match.ogg", "", NI_Success, 0, 0, 0, 0 );
	InPutLicense								=	TriggerPackage:GetItemLicensed(NI_Success, 20);

	Hold_Actor_Fail							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Fail, NI_Fail, false );
	NarTimeIsUP								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\inter_timeover.ogg", "", NI_Fail, 0, 0, 0, 0 );
	NarLostGame								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_lost_the_match1.ogg", "", NI_Fail, 0, 0, 0, 0 );
	
	MessageBox_Step02					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, NI_Text_TestFail_OFF, 20 );
	MessageBox_Step03					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, 0, 20 );

	TestSuccessEnd						= TriggerPackage:GetTutorialComplete( NI_Text_TestSuccess_OFF );	
	-- ���
	
	TestStage:Register(ActorSpawn);

	TestStage:Register(CentryGunSpawn01);
	TestStage:Register(CentryGunSpawn02);
	TestStage:Register(CentryGunSpawn03);
	TestStage:Register(CentryGunSpawn04);
	TestStage:Register(CentryGunSpawn05);
	TestStage:Register(CentryGunSpawn06);
	TestStage:Register(CentryGunSpawn07);

	TestStage:Register(ScoreCheck01);

	TestStage:Register(MetalicLoad);
	--TestStage:Register(SubMachineGunLoad);
	--TestStage:Register(	MindShockLoad);
	TestStage:Register(PlasmaSwordLoad);
	
	TestStage:Register(Timer_StartStep02);
	TestStage:Register(Timer_Text_Step02Start);
	TestStage:Register(Timer_ReadyStep02);

	TestStage:Register(Timer_Text_TestStartStep02_off);

	TestStage:Register(Timer_End);

	TestStage:Register(Timer_Text_TestFail_off);
	TestStage:Register(Timer_Text_TestSuccess_off);

	TestStage:Register(Hold_Actor_Step02_01);
	TestStage:Register(Realse_Actor_Step02_01);

	TestStage:Register(Arrow_Gate_off_01);

	TestStage:Register(Text_Step02Start);
	TestStage:Register(Text_Step02Ready);
	TestStage:Register(Text_TestStartStep02);

	TestStage:Register(Text_Guide_Step02_01);

	TestStage:Register(Text_TestFail);
	TestStage:Register(Text_TestSuccess);

	--TestStage:Register(GoalOpen_Step01);
	TestStage:Register(RegGateOpen_Step01);

	-- Ʃ�丮�� ���� ���� �κ�
	TestStage:Register(Timer_SayThree);
	TestStage:Register(Timer_SayTwo);
	TestStage:Register(Timer_SayOne);

	TestStage:Register(NarThree);
	TestStage:Register(NarTwo);
	TestStage:Register(NarOne);

	TestStage:Register(NarEnd);
	TestStage:Register(NarWinGame);
	TestStage:Register(InPutLicense);

	TestStage:Register(Hold_Actor_Fail);
	TestStage:Register(NarTimeIsUP);
	TestStage:Register(NarLostGame);

	TestStage:Register(MessageBox_Step02);
	TestStage:Register(MessageBox_Step03);
	TestStage:Register(TestSuccessEnd);
		
	TutorialSystem:AddStage(1, TestStage);

end
	
	
	
	
	
	
	