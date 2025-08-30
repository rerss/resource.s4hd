
-- GetSpawnHelper용 상수

SPAWN_FOCUS_ACTOR							= 0
SPAWN_ENERMY_SENTRYGUN				= 1
SPAWN_ENERMY_SENTYFORCE				= 2
SPAWN_TRIGGER_BEGIN							= 0
SPAWN_NOTIFY										= 1




-- <------------------- GUIViewType -------------------> --
-- TutorialGUISet.h 내용과 같게..

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


--"RELOAD_MIND_ENERGY"		
--"RELOAD_SUBMACHINE_GUN"	
--"RELOAD_MACHINE_GUN"		
--"RELOAD_RIFLE"			
--"RELOAD_MINE_LAUNCHER"	
--"RELOAD_REVOLVER"		
--"RELOAD_SMG2"			
--"RELOAD_CANNONADE"		
--"RELOAD_MIND_STROM"


-- <----------------- 튜토리얼 초기화 -----------------> --
function OnMindShockLicenseTest()

	TutorialSystem:SetTotalStage( 2 );	-- 생성할 step의 갯수를 설정
	
	OnMindShockLicenseTestStep01		(); -- step1 생성
	OnMindShockLicenseTestStep02		(); -- step2 생성


end
-- <---------------------------------------------------> --


-- Notify ID이벤트 메세지
NI_START										= 101
NI_Text_Welcom01_OFF					= 102
NI_Text_Welcom02_OFF					= 103
NI_Text_Welcom03_OFF					= 104
NI_SCORE_COMPLETED01				= 105
NI_ATTACK_1_MIND_STROM			= 106
NI_Text_CompleteTip01_on				= 107
NI_Text_CompleteTip01_off				= 108
NI_Text_CompleteTip02_on				= 109
NI_Text_CompleteTip02_off				= 110
NI_SCORE_COMPLETED02				= 111
NI_RELOAD_MIND_STROM				= 112
NI_CONGRATULATION						= 113

-- 텍스트
LoadStringTable( "Language/Script/tutorial_string_table.x7" );

TXT_Weapon_MindShock_01=GetString( "TXT_Weapon_MindShock_01" );
TXT_Weapon_MindShock_02=GetString( "TXT_Weapon_MindShock_02" );
TXT_Weapon_MindShock_03=GetString( "TXT_Weapon_MindShock_03" );
TXT_Weapon_MindShock_04=GetString( "TXT_Weapon_MindShock_04" );
TXT_Weapon_MindShock_05=GetString( "TXT_Weapon_MindShock_05" );
TXT_Weapon_MindShock_06=GetString( "TXT_Weapon_MindShock_06" );
TXT_Weapon_MindShock_07=GetString( "TXT_Weapon_MindShock_07" );
TXT_Weapon_MindShock_08=GetString( "TXT_Weapon_MindShock_08" );
TXT_Weapon_MindShock_09=GetString( "TXT_Weapon_MindShock_09" );
TXT_Weapon_MindShock_10=GetString( "TXT_Weapon_MindShock_10" );
TXT_Weapon_MindShock_11=GetString( "TXT_Weapon_MindShock_11" );
TXT_Weapon_MindShock_12=GetString( "TXT_Weapon_MindShock_12" );
TXT_Weapon_MindShock_13=GetString( "TXT_Weapon_MindShock_13" );
TXT_Weapon_MindShock_14=GetString( "TXT_Weapon_MindShock_14" );
TXT_Weapon_MindShock_15=GetString( "TXT_Weapon_MindShock_15" );
TXT_Weapon_MindShock_16=GetString( "TXT_Weapon_MindShock_16" );
TXT_Weapon_MindShock_17=GetString( "TXT_Weapon_MindShock_17" );
TXT_Weapon_MindShock_18=GetString( "TXT_Weapon_MindShock_18" );
TXT_Weapon_MindShock_19=GetString( "TXT_Weapon_MindShock_19" );
TXT_Weapon_MindShock_20=GetString( "TXT_Weapon_MindShock_20" );

ClearStringTable();

function OnMindShockLicenseTestStep01()
	
	MindShockLicense = TutorialSystem:GetEmptyStage();	
	
	-- 캐릭터및 센트리건 스폰
	-- ( 트리거 발동시점, 스폰타입, 스폰할트리거박스, 시작이벤트(SPAWN_NOTIFY 일때만 적용됨), 발생이벤트( SPAWN_FOCUS_ACTOR 가 아닐경우에만 적용됨 ) )
	ActorSpawn 			= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true );
	
	-- 아이템지급
	-- ( 장착할슬롯, 아이템아이디, in_시작이벤트 )
	MindShockLoad				= TriggerPackage:GetItemDuplicator( 0, 2060002, 0, 0 );
	
	-- 해당시간이 지나면 이벤트 발생
	-- ( in_시작이벤트, out_발생이벤트, 시간( ms ), in_종료이벤트, 반복여부 ) 이벤트값이 0일경우 작동하지 않음
	
	Timer_TextStart						= TriggerPackage:GetEventAlram( 0, NI_START, 0, 0, false );
	Timer_Text_Welcom01_Delay		= TriggerPackage:GetEventAlram( NI_START, NI_Text_Welcom01_OFF, 5000, 0, false );
	Timer_Text_Welcom02_Delay		= TriggerPackage:GetEventAlram( NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 3000, 0, false );
	Timer_Text_Welcom03_Delay		= TriggerPackage:GetEventAlram( NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false );
		
	Timer_Text_CompleteTip01_on	= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_on, 500, 0, false );
	Timer_Text_CompleteTip01_off	= TriggerPackage:GetEventAlram( NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, 6000, 0, false );

	Timer_Text_CompleteTip02_on	= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_on, 500, 0, false );
	Timer_Text_CompleteTip02_off	= TriggerPackage:GetEventAlram( NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_off, 6000, 0, false );


	KeyPermiter01							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_START, NI_START, false );
	KeyPermiter02							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_Welcom03_OFF, NI_Text_Welcom03_OFF, true );

	KeyPermiter03							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_on, false );
	KeyPermiter04							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_off, NI_Text_CompleteTip01_off, true );

	KeyPermiter05							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_on, false );
	KeyPermiter06							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_off, NI_Text_CompleteTip02_off, true );

	-- 텍스트 보이게 설정
	-- ( 좌표x, 좌표y, in_시작이벤트, in_종료할이벤트, 표시할텍스트 )
	Text_Welcom01	= TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Weapon_MindShock_01 , "Resources/GUI/New/TutorialImage_1.gui", true, false);
	Text_Welcom02	= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Weapon_MindShock_02 , "Resources/GUI/New/TutorialImage_1.gui", true, false);
	Text_Welcom03	= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Weapon_MindShock_03 , "Resources/GUI/New/TutorialImage_1.gui", true, false);
	
	Text_Guide01		= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_SCORE_COMPLETED01, TXT_Weapon_MindShock_04 , "Resources/GUI/New/TutorialImage_1.gui");
	Text_Guide02		= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_off, NI_SCORE_COMPLETED02, TXT_Weapon_MindShock_05 , "Resources/GUI/New/TutorialImage_1.gui");
	
	Text_CompleteTip01		= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_off, TXT_Weapon_MindShock_08 , "Resources/GUI/New/TutorialImage_0.gui", true, false);
	Text_CompleteTip02		= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_off, TXT_Weapon_MindShock_09 , "Resources/GUI/New/TutorialImage_0.gui", true, false);

	Text_ClearStep01		= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_CompleteTip02_off, 0, TXT_Weapon_MindShock_12, "Resources/GUI/New/TutorialImage_1.gui" , true, false);

	-- ( 좌표X, 좌표Y, in_발생이벤트, out_완료이벤트, 글자포멧, 최종점수 )
	ScoreCheck01		= TriggerPackage:GetScoreObserver( 50, 200, NI_ATTACK_1_MIND_STROM, NI_SCORE_COMPLETED01, TXT_Weapon_MindShock_06, 5 );
	ScoreCheck02		= TriggerPackage:GetScoreObserver( 50, 220, NI_RELOAD_MIND_STROM, NI_SCORE_COMPLETED02, TXT_Weapon_MindShock_10, 3 );

	Dummy_ScoreCheck01	 	= TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED01, 0, TXT_Weapon_MindShock_07 , "");
	Dummy_ScoreCheck02	 	= TriggerPackage:GetTextViewerEx(50, 220, NI_SCORE_COMPLETED02, 0, TXT_Weapon_MindShock_11 , "");

	-- ( in_종료이벤트, out_발생이벤트, 감시할공격, 이벤트를 전달받을 특정트리거 )
	ActorAttackCheck01	 = TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01, NI_ATTACK_1_MIND_STROM, "ATTACK_1_MIND_STROM", ScoreCheck01 );
	ActorAttackCheck02 = TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED02, NI_RELOAD_MIND_STROM, "RELOAD_MIND_STROM", ScoreCheck02 );

	RegActorAttackCheck01	= TriggerPackage:GetObserverRegister( NI_Text_Welcom03_OFF, ActorAttackCheck01);
	RegActorAttackCheck02	= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED01, ActorAttackCheck02);
	
	NarOK01			= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0 );
	NarOK02			= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02, 0, 0, 0, 0 );

	GateOpen_Step01			= TriggerPackage:GetCollisionChecker("trg_arrive_01", NI_CONGRATULATION, false);
	RegGateOpen_Step01		= TriggerPackage:GetObserverRegister( NI_Text_CompleteTip02_off, GateOpen_Step01);

	MessageBox_Step01					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, 0, 12 );

	Arrow_Gate_off_01						= TriggerPackage:GetSceneVisible( true, "lc_arrow.scn", NI_START);
	Arrow_Gate_on_01						= TriggerPackage:GetSceneVisible( false, "lc_arrow.scn", NI_Text_CompleteTip02_off);

	Congraturation_Step01	= TriggerPackage:GetTutorialComplete( NI_CONGRATULATION );
		
	
	-- 등록

	MindShockLicense:Register(ActorSpawn);

	MindShockLicense:Register(MindShockLoad);

	MindShockLicense:Register(Timer_TextStart);
	MindShockLicense:Register(Timer_Text_Welcom01_Delay);
	MindShockLicense:Register(Timer_Text_Welcom02_Delay);
	MindShockLicense:Register(Timer_Text_Welcom03_Delay);

	MindShockLicense:Register(Timer_Text_CompleteTip01_on);
	MindShockLicense:Register(Timer_Text_CompleteTip01_off);

	MindShockLicense:Register(Timer_Text_CompleteTip02_on);
	MindShockLicense:Register(Timer_Text_CompleteTip02_off);

	MindShockLicense:Register(Text_ClearStep01);

	MindShockLicense:Register(KeyPermiter01);
	MindShockLicense:Register(KeyPermiter02);

	MindShockLicense:Register(KeyPermiter03);
	MindShockLicense:Register(KeyPermiter04);

	MindShockLicense:Register(KeyPermiter05);
	MindShockLicense:Register(KeyPermiter06);

	MindShockLicense:Register(Text_Welcom01);
	MindShockLicense:Register(Text_Welcom02);
	MindShockLicense:Register(Text_Welcom03);

	MindShockLicense:Register(Text_Guide01);
	MindShockLicense:Register(Text_Guide02);

	MindShockLicense:Register(Text_CompleteTip01);
	MindShockLicense:Register(Text_CompleteTip02);

	MindShockLicense:Register(Dummy_ScoreCheck01);
	MindShockLicense:Register(Dummy_ScoreCheck02);


	MindShockLicense:Register(RegActorAttackCheck01);
	MindShockLicense:Register(RegActorAttackCheck02);

	MindShockLicense:Register(NarOK01);
	MindShockLicense:Register(NarOK02);

	--MindShockLicense:Register(GateOpen_Step01);
	MindShockLicense:Register(RegGateOpen_Step01);

	MindShockLicense:Register(MessageBox_Step01);

	MindShockLicense:Register(Arrow_Gate_off_01);
	MindShockLicense:Register(Arrow_Gate_on_01);

	MindShockLicense:Register(Congraturation_Step01);

	--MindShockLicense:Register();

	TutorialSystem:AddStage( 0, MindShockLicense );

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

function OnMindShockLicenseTestStep02()
	
	TestStage									= TutorialSystem:GetEmptyStage();

		-- 캐릭터및 마인드쇼크 스폰
	-- ( 트리거 발동시점, 스폰타입, 스폰할트리거박스, 시작이벤트(SPAWN_NOTIFY 일때만 적용됨), 발생이벤트( SPAWN_FOCUS_ACTOR 가 아닐경우에만 적용됨 ) )
	ActorSpawn 								= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true );
	
	CentryGunSpawn01			 			= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_ENERMY_SENTRYGUN, "trg_sentry06", 0, NI_Des, 0, 0, true );
	CentryGunSpawn02	 		 			= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_ENERMY_SENTRYGUN, "trg_sentry07", 0, NI_Des, 0, 0, true );
	CentryGunSpawn03			 			= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_ENERMY_SENTRYGUN, "trg_sentry08", 0, NI_Des, 0, 0, true );

	ScoreCheck01							= TriggerPackage:GetScoreObserver( 50, 200, NI_Des, NI_Success, TXT_Weapon_MindShock_13, 3 );

	-- 아이템지급
	-- ( 장착할슬롯, 아이템아이디, in_시작이벤트 )
	MindShockLoad							= TriggerPackage:GetItemDuplicator( 0, 2060002, 0, 0 );


	Timer_StartStep02						= TriggerPackage:GetEventAlram( 0, NI_Start_Step02, 0, 0, false );
	Timer_Text_Step02Start					= TriggerPackage:GetEventAlram( NI_Start_Step02, NI_Text_Step02Start_off, 5000, 0, false );
	Timer_ReadyStep02						= TriggerPackage:GetEventAlram( NI_Text_Step02Start_off, NI_TestStart_Step02, 5000, 0, false );

	Timer_Text_TestStartStep02_off		= TriggerPackage:GetEventAlram( NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, 2000, 0, false );
	
	Timer_End									= TriggerPackage:GetEventAlram( NI_TestStart_Step02, NI_Fail, 40000, NI_Success, false);
														TriggerPackage:SetShowEventAlram(Timer_End, 470, 50, TXT_Weapon_MindShock_14, 1 );

	Timer_Text_TestFail_off				= TriggerPackage:GetEventAlram( NI_Fail, NI_Text_TestFail_OFF, 3000, 0, false);
	Timer_Text_TestSuccess_off			= TriggerPackage:GetEventAlram( NI_Success, NI_Text_TestSuccess_OFF, 10000, 0, false);

	Hold_Actor_Step02_01					= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Start_Step02, NI_Start_Step02, false );
	Realse_Actor_Step02_01				= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_TestStart_Step02, NI_TestStart_Step02, true );

	Arrow_Gate_off_01						= TriggerPackage:GetSceneVisible( false, "lc_arrow.scn", NI_Text_CompleteTip02_off);

	Text_Step02Start							= TriggerPackage:GetTextViewerExA( 512, 250, NI_Start_Step02, NI_Text_Step02Start_off, TXT_Weapon_MindShock_15, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_Step02Ready						= TriggerPackage:GetTextViewerExA( 512, 250, NI_Text_Step02Start_off, NI_TestStart_Step02, TXT_Weapon_MindShock_16, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_TestStartStep02					= TriggerPackage:GetTextViewerExA( 512, 250, NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, TXT_Weapon_MindShock_17, "Resources/GUI/New/TutorialImage_1.gui" , true, false );

	Text_Guide_Step02_01					= TriggerPackage:GetTextViewerEx(600, 500, NI_TestStart_Step02, 0, TXT_Weapon_MindShock_18, "Resources/GUI/New/TutorialImage_1.gui");
	
	Text_TestFail								= TriggerPackage:GetTextViewerExA( 512, 250, NI_Fail, NI_Text_TestFail_OFF, TXT_Weapon_MindShock_19 , "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_TestSuccess						= TriggerPackage:GetTextViewerExA( 512, 200, NI_Success, NI_Text_TestSuccess_OFF, TXT_Weapon_MindShock_20 , "Resources/GUI/New/TutorialImage_1.gui" , true, false );

	GoalOpen_Step01						= TriggerPackage:GetCollisionChecker("trg_arrive_02", NI_Success, false);
	RegGateOpen_Step01					= TriggerPackage:GetObserverRegister( NI_Text_TestStartStep02_OFF, GoalOpen_Step01);
	
	--GetItemLicensed(in_시작이벤트, 라이센스아이디)

	-- 튜토리얼 공통 종결 부분
	Timer_SayThree							= TriggerPackage:GetEventAlram( NI_Text_Step02Start_off, NI_SayThree, 2000, 0, false);
	Timer_SayTwo							= TriggerPackage:GetEventAlram( NI_SayThree, NI_SayTwo, 1000, 0, false);
	Timer_SayOne							= TriggerPackage:GetEventAlram( NI_SayTwo, NI_SayOne, 1000, 0, false);	
	
	NarThree									= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\3.ogg", "", NI_SayThree, 0, 0, 0, 0 );
	NarTwo										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\2.ogg", "", NI_SayTwo, 0, 0, 0, 0 );
	NarOne										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\1.ogg", "", NI_SayOne, 0, 0, 0, 0 );

	NarEnd										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_Success, 0, 0, 0, 0 );
	NarWinGame								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_have_won_the_match.ogg", "", NI_Success, 0, 0, 0, 0 );
	InPutLicense								=	TriggerPackage:GetItemLicensed(NI_Success, 12);

	Hold_Actor_Fail							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Fail, NI_Fail, false );
	NarTimeIsUP								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\inter_timeover.ogg", "", NI_Fail, 0, 0, 0, 0 );
	NarLostGame								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_lost_the_match1.ogg", "", NI_Fail, 0, 0, 0, 0 );
	
	MessageBox_Step02					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, NI_Text_TestFail_OFF, 12 );
	MessageBox_Step03					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, 0, 12 );

	TestSuccessEnd						= TriggerPackage:GetTutorialComplete( NI_Text_TestSuccess_OFF );	

	-- 등록

	TestStage:Register(ActorSpawn);

	TestStage:Register(CentryGunSpawn01);
	TestStage:Register(CentryGunSpawn02);
	TestStage:Register(CentryGunSpawn03);

	TestStage:Register(	ScoreCheck01);

	TestStage:Register(	MindShockLoad);

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

	-- 튜토리얼 공통 종결 부분
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
