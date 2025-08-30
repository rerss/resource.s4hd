
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
function OnDualGunLicenseTest()

	TutorialSystem:SetTotalStage( 2 );	-- 생성할 step의 갯수를 설정
	
	OnDualGunLicenseTestStep01		(); -- step1 생성
	OnDualGunLicenseTestStep02		(); -- step2 생성


end
-- <---------------------------------------------------> --


-- Notify ID이벤트 메세지
NI_START										= 101
NI_Text_Welcom01_OFF					= 102
NI_Text_Welcom02_OFF					= 103
NI_Text_Welcom03_OFF					= 104
NI_SCORE_COMPLETED01				= 105
NI_SCORE_COMPLETED02				= 106
NI_SCORE_COMPLETED03				= 107
NI_ATTACK_1_DUAL_GUN		= 108
NI_RELOAD_DUAL_GUN		= 109
NI_ATTACK_2_DUAL_GUN		= 110
NI_Text_CompleteTip01_on				= 111
NI_Text_CompleteTip01_off				= 112
NI_Text_CompleteTip02_on				= 113
NI_Text_CompleteTip02_off				= 114
NI_Text_CompleteTip03_on				= 115
NI_Text_CompleteTip03_off				= 116
NI_CONGRATULATION						= 117

-- 텍스트
LoadStringTable( "Language/Script/tutorial_string_table.x7" );

TXT_Weapon_SmashRifle_01=GetString( "TXT_Weapon_SmashRifle_01" );
TXT_Weapon_SmashRifle_02=GetString( "TXT_Weapon_SmashRifle_02" );
TXT_Weapon_SmashRifle_03=GetString( "TXT_Weapon_SmashRifle_03" );
TXT_Weapon_SmashRifle_04=GetString( "TXT_Weapon_SmashRifle_04" );
TXT_Weapon_SmashRifle_05=GetString( "TXT_Weapon_SmashRifle_05" );
TXT_Weapon_SmashRifle_06=GetString( "TXT_Weapon_SmashRifle_06" );
TXT_Weapon_SmashRifle_07=GetString( "TXT_Weapon_SmashRifle_07" );
TXT_Weapon_SmashRifle_08=GetString( "TXT_Weapon_SmashRifle_08" );
TXT_Weapon_SmashRifle_09=GetString( "TXT_Weapon_SmashRifle_09" );
TXT_Weapon_SmashRifle_10=GetString( "TXT_Weapon_SmashRifle_10" );
TXT_Weapon_SmashRifle_11=GetString( "TXT_Weapon_SmashRifle_11" );
TXT_Weapon_SmashRifle_12=GetString( "TXT_Weapon_SmashRifle_12" );
TXT_Weapon_SmashRifle_13=GetString( "TXT_Weapon_SmashRifle_13" );
TXT_Weapon_SmashRifle_14=GetString( "TXT_Weapon_SmashRifle_14" );
TXT_Weapon_SmashRifle_15=GetString( "TXT_Weapon_SmashRifle_15" );
TXT_Weapon_SmashRifle_16=GetString( "TXT_Weapon_SmashRifle_16" );
TXT_Weapon_SmashRifle_17=GetString( "TXT_Weapon_SmashRifle_17" );
TXT_Weapon_SmashRifle_18=GetString( "TXT_Weapon_SmashRifle_18" );
TXT_Weapon_SmashRifle_19=GetString( "TXT_Weapon_SmashRifle_19" );
TXT_Weapon_SmashRifle_20=GetString( "TXT_Weapon_SmashRifle_20" );
TXT_Weapon_SmashRifle_21=GetString( "TXT_Weapon_SmashRifle_21" );
TXT_Weapon_SmashRifle_22=GetString( "TXT_Weapon_SmashRifle_22" );
TXT_Weapon_SmashRifle_23=GetString( "TXT_Weapon_SmashRifle_23" );
TXT_Weapon_SmashRifle_24=GetString( "TXT_Weapon_SmashRifle_24" );
TXT_Weapon_SmashRifle_25=GetString( "TXT_Weapon_SmashRifle_25" );
TXT_Weapon_SmashRifle_26=GetString( "TXT_Weapon_SmashRifle_26" );
TXT_Weapon_SmashRifle_27=GetString( "TXT_Weapon_SmashRifle_27" );
TXT_Weapon_SmashRifle_28=GetString( "TXT_Weapon_SmashRifle_28" );

ClearStringTable();   
                                                                                       
function OnDualGunLicenseTestStep01()
	
	DUALGunLicense = TutorialSystem:GetEmptyStage();	
	
	-- 캐릭터및 센트리건 스폰
	-- ( 트리거 발동시점, 스폰타입, 스폰할트리거박스, 시작이벤트(SPAWN_NOTIFY 일때만 적용됨), 발생이벤트( SPAWN_FOCUS_ACTOR 가 아닐경우에만 적용됨 ) )
	ActorSpawn 			= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true );
	
	-- 아이템지급
	-- ( 장착할슬롯, 아이템아이디, in_시작이벤트 )
	DUALGunLoad				= TriggerPackage:GetItemDuplicator( 0, 2010006, 0, 0 );
	
	-- 해당시간이 지나면 이벤트 발생
	-- ( in_시작이벤트, out_발생이벤트, 시간( ms ), in_종료이벤트, 반복여부 ) 이벤트값이 0일경우 작동하지 않음
	
	Timer_TextStart						= TriggerPackage:GetEventAlram( 0, NI_START, 0, 0, false );
	Timer_Text_Welcom01_Delay		= TriggerPackage:GetEventAlram( NI_START, NI_Text_Welcom01_OFF, 5000, 0, false );
	Timer_Text_Welcom02_Delay		= TriggerPackage:GetEventAlram( NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 3000, 0, false );
	Timer_Text_Welcom03_Delay		= TriggerPackage:GetEventAlram( NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false );
		
	Timer_Text_CompleteTip01_on	= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_on, 500, 0, false );
	Timer_Text_CompleteTip01_off	= TriggerPackage:GetEventAlram( NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, 4000, 0, false );

	Timer_Text_CompleteTip02_on	= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_on, 500, 0, false );
	Timer_Text_CompleteTip02_off	= TriggerPackage:GetEventAlram( NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_off, 4000, 0, false );

	Timer_Text_CompleteTip03_on	= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED03, NI_Text_CompleteTip03_on, 500, 0, false );
	Timer_Text_CompleteTip03_off	= TriggerPackage:GetEventAlram( NI_Text_CompleteTip03_on, NI_Text_CompleteTip03_off, 4000, 0, false );
	
	

	KeyPermiter01							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_START, NI_START, false );
	KeyPermiter02							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_Welcom03_OFF, NI_Text_Welcom03_OFF, true );

	KeyPermiter03							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_on, false );
	KeyPermiter04							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_off, NI_Text_CompleteTip01_off, true );

	KeyPermiter05							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_on, false );
	KeyPermiter06							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_off, NI_Text_CompleteTip02_off, true );

	KeyPermiter07							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip03_on, NI_Text_CompleteTip03_on, false );
	KeyPermiter08							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip03_off, NI_Text_CompleteTip03_off, true );

	
	-- 텍스트 보이게 설정
	-- ( 좌표x, 좌표y, in_시작이벤트, in_종료할이벤트, 표시할텍스트 )
	Text_Welcom01	= TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Weapon_SmashRifle_01 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
	Text_Welcom02	= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Weapon_SmashRifle_02 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
	Text_Welcom03	= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Weapon_SmashRifle_03 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
	
	Text_Guide01		= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_SCORE_COMPLETED01, TXT_Weapon_SmashRifle_04 , "Resources/GUI/New/TutorialImage_1.gui");
	Text_Guide02		= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_off, NI_SCORE_COMPLETED02, TXT_Weapon_SmashRifle_05 , "Resources/GUI/New/TutorialImage_1.gui");
	Text_Guide03		= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip02_off, NI_SCORE_COMPLETED03, TXT_Weapon_SmashRifle_06 , "Resources/GUI/New/TutorialImage_1.gui");

	Text_CompleteTip01		= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_off, TXT_Weapon_SmashRifle_09 , "Resources/GUI/New/TutorialImage_0.gui", true, false );
	Text_CompleteTip02		= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_off, TXT_Weapon_SmashRifle_10 , "Resources/GUI/New/TutorialImage_0.gui", true, false );
	Text_CompleteTip03		= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED03, NI_Text_CompleteTip03_off, TXT_Weapon_SmashRifle_15 , "Resources/GUI/New/TutorialImage_0.gui", true, false );

	Text_ClearStep01		= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_CompleteTip03_off, 0, TXT_Weapon_SmashRifle_16 , "Resources/GUI/New/TutorialImage_1.gui" , true, false );

	-- ( 좌표X, 좌표Y, in_발생이벤트, out_완료이벤트, 글자포멧, 최종점수 )
	ScoreCheck01		= TriggerPackage:GetScoreObserver( 50, 200, NI_ATTACK_1_DUAL_GUN, NI_SCORE_COMPLETED01, TXT_Weapon_SmashRifle_07, 5 );
	ScoreCheck02		= TriggerPackage:GetScoreObserver( 50, 220, NI_RELOAD_DUAL_GUN, NI_SCORE_COMPLETED02, TXT_Weapon_SmashRifle_11, 3 );
	ScoreCheck03		= TriggerPackage:GetScoreObserver( 50, 240, NI_ATTACK_2_DUAL_GUN, NI_SCORE_COMPLETED03, TXT_Weapon_SmashRifle_13, 5 );

	Dummy_ScoreCheck01	 	= TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED01, 0, TXT_Weapon_SmashRifle_08 , "");
	Dummy_ScoreCheck02	 	= TriggerPackage:GetTextViewerEx(50, 220, NI_SCORE_COMPLETED02, 0, TXT_Weapon_SmashRifle_12 , "");
	Dummy_ScoreCheck03	 	= TriggerPackage:GetTextViewerEx(50, 240, NI_SCORE_COMPLETED03, 0, TXT_Weapon_SmashRifle_14 , "");

	
	-- ( in_종료이벤트, out_발생이벤트, 감시할공격, 이벤트를 전달받을 특정트리거 )
	ActorAttackCheck01	 = TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01, NI_ATTACK_1_DUAL_GUN, "ATTACK_1_SMG3", ScoreCheck01 );
	ActorAttackCheck02 = TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED02, NI_RELOAD_DUAL_GUN, "RELOAD_SMG3", ScoreCheck02 );
	ActorAttackCheck03 = TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED03, NI_ATTACK_2_DUAL_GUN, "ATTACK_2_SMG3", ScoreCheck03 );
	
	RegActorAttackCheck01	= TriggerPackage:GetObserverRegister( NI_Text_Welcom03_OFF, ActorAttackCheck01);
	RegActorAttackCheck02	= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED01, ActorAttackCheck02);
	RegActorAttackCheck03	= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED02, ActorAttackCheck03);
	
	NarOK01			= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0 );
	NarOK02			= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02, 0, 0, 0, 0 );
	NarOK03			= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED03, 0, 0, 0, 0 );
	
	GateOpen_Step01			= TriggerPackage:GetCollisionChecker("trg_arrive_01", NI_CONGRATULATION, false);
	RegGateOpen_Step01		= TriggerPackage:GetObserverRegister( NI_Text_CompleteTip03_off, GateOpen_Step01);

	Arrow_Gate_off_01			= TriggerPackage:GetSceneVisible( true, "lc_arrow.scn", NI_START);
	Arrow_Gate_on_01			= TriggerPackage:GetSceneVisible( false, "lc_arrow.scn", NI_Text_CompleteTip03_off);

	MessageBox_Step01		= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, 0, 31 );

	Congraturation_Step01	= TriggerPackage:GetTutorialComplete( NI_CONGRATULATION );
		
	
	-- 등록

	DUALGunLicense:Register(ActorSpawn);

	DUALGunLicense:Register(DUALGunLoad);

	DUALGunLicense:Register(Timer_TextStart);
	DUALGunLicense:Register(Timer_Text_Welcom01_Delay);
	DUALGunLicense:Register(Timer_Text_Welcom02_Delay);
	DUALGunLicense:Register(Timer_Text_Welcom03_Delay);

	DUALGunLicense:Register(Timer_Text_CompleteTip01_on);
	DUALGunLicense:Register(Timer_Text_CompleteTip01_off);

	DUALGunLicense:Register(Timer_Text_CompleteTip02_on);
	DUALGunLicense:Register(Timer_Text_CompleteTip02_off);

	DUALGunLicense:Register(Timer_Text_CompleteTip03_on);
	DUALGunLicense:Register(Timer_Text_CompleteTip03_off);
	
	DUALGunLicense:Register(Text_ClearStep01);

	DUALGunLicense:Register(KeyPermiter01);
	DUALGunLicense:Register(KeyPermiter02);

	DUALGunLicense:Register(KeyPermiter03);
	DUALGunLicense:Register(KeyPermiter04);

	DUALGunLicense:Register(KeyPermiter05);
	DUALGunLicense:Register(KeyPermiter06);

	DUALGunLicense:Register(KeyPermiter07);
	DUALGunLicense:Register(KeyPermiter08);
	
	DUALGunLicense:Register(Text_Welcom01);
	DUALGunLicense:Register(Text_Welcom02);
	DUALGunLicense:Register(Text_Welcom03);

	DUALGunLicense:Register(Text_Guide01);
	DUALGunLicense:Register(Text_Guide02);
	DUALGunLicense:Register(Text_Guide03);
	
	DUALGunLicense:Register(Text_CompleteTip01);
	DUALGunLicense:Register(Text_CompleteTip02);
	DUALGunLicense:Register(Text_CompleteTip03);

	DUALGunLicense:Register(Dummy_ScoreCheck01);
	DUALGunLicense:Register(Dummy_ScoreCheck02);
	DUALGunLicense:Register(Dummy_ScoreCheck03);

	DUALGunLicense:Register(RegActorAttackCheck01);
	DUALGunLicense:Register(RegActorAttackCheck02);
	DUALGunLicense:Register(RegActorAttackCheck03);

	DUALGunLicense:Register(NarOK01);
	DUALGunLicense:Register(NarOK02);
	DUALGunLicense:Register(NarOK03);

	--DUALGunLicense:Register(GateOpen_Step01);
	DUALGunLicense:Register(RegGateOpen_Step01);

	DUALGunLicense:Register(Arrow_Gate_off_01);
	DUALGunLicense:Register(Arrow_Gate_on_01);

	DUALGunLicense:Register(MessageBox_Step01);

	DUALGunLicense:Register(Congraturation_Step01);

	--DUALGunLicense:Register();

	TutorialSystem:AddStage( 0, DUALGunLicense );

end



-- 스텝2


NI_Start_Step02						= 201
NI_Text_Step02Start_off				= 202
NI_TestStart_Step02					= 203
NI_Text_TestStartStep02_OFF	= 204
NI_Fail									= 205
NI_Text_TestFail_OFF				= 206
NI_Blast									= 207
NI_Text_Blast_01_off					= 208
NI_Success							= 999
NI_Text_TestSuccess_OFF		= 210
NI_Blast_01								= 211
NI_Blast_02								= 212
NI_Blast_03								= 213
NI_Text_Blast_02_off					= 214
NI_Text_Blast_03_off					= 215
NI_Phase2								= 216
NI_SayThree							= 217
NI_SayTwo								= 218
NI_SayOne								= 219

function OnDualGunLicenseTestStep02()

	TestStage						= TutorialSystem:GetEmptyStage();

	SpawnHelper01				= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_02", 0, 0, 0, 0, true );
	DUALGunLoad		= TriggerPackage:GetItemDuplicator( 0, 2010006, 0, 0 );

	Timer_StartStep02			= TriggerPackage:GetEventAlram( 0, NI_Start_Step02, 0, 0, false );
	Timer_Text_Step02Start		= TriggerPackage:GetEventAlram( NI_Start_Step02, NI_Text_Step02Start_off, 5000, 0, false );
	Timer_ReadyStep02			= TriggerPackage:GetEventAlram( NI_Text_Step02Start_off, NI_TestStart_Step02, 5000, 0, false );
	
	Timer_Text_TestStartStep02_off	= TriggerPackage:GetEventAlram( NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, 2000, 0, false );

	Timer_End						= TriggerPackage:GetEventAlram( NI_TestStart_Step02, NI_Fail, 300000, NI_Success, false);
											TriggerPackage:SetShowEventAlram(Timer_End, 470, 50, TXT_Weapon_SmashRifle_17, 1 );

	Timer_Text_TestFail_off			= TriggerPackage:GetEventAlram( NI_Fail, NI_Text_TestFail_OFF, 10000, 0, false);
	Timer_Text_TestSuccess_off		= TriggerPackage:GetEventAlram( NI_Success, NI_Text_TestSuccess_OFF, 10000, 0, false);

	Hold_Actor_Step02_01		= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Start_Step02, NI_Start_Step02, false );
	Realse_Actor_Step02_01	= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_TestStart_Step02, NI_TestStart_Step02, true );

	Timer_Blast_Msg_01		= TriggerPackage:GetEventAlram( NI_Blast, NI_Text_Blast_01_off, 1000, 0, false);
	Timer_Blast_Msg_02		= TriggerPackage:GetEventAlram( NI_Blast_01, NI_Text_Blast_02_off, 1000, 0, false);
	Timer_Blast_Msg_03		= TriggerPackage:GetEventAlram( NI_Blast_02, NI_Text_Blast_03_off, 1000, 0, false);
	--Timer_Blast_Msg_04		= TriggerPackage:GetEventAlram( NI_Blast_02, NI_Text_Blast_01_off, 0, 0, false);
	--Timer_Blast_Msg_05		= TriggerPackage:GetEventAlram( NI_Blast_03, NI_Text_Blast_01_off, 0, 0, false);
	--Timer_Blast_Msg_06		= TriggerPackage:GetEventAlram( NI_Blast_01, NI_Text_Blast_02_off, 0, 0, false);
	--Timer_Blast_Msg_07		= TriggerPackage:GetEventAlram( NI_Blast_03, NI_Text_Blast_02_off, 0, 0, false);
	--Timer_Blast_Msg_08		= TriggerPackage:GetEventAlram( NI_Blast_01, NI_Text_Blast_03_off, 0, 0, false);
	--Timer_Blast_Msg_09		= TriggerPackage:GetEventAlram( NI_Blast_02, NI_Text_Blast_03_off, 0, 0, false);
		

	Text_Step02Start				= TriggerPackage:GetTextViewerExA( 512, 250, NI_Start_Step02, NI_Text_Step02Start_off, TXT_Weapon_SmashRifle_18, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_Step02Ready			= TriggerPackage:GetTextViewerExA( 512, 250, NI_Text_Step02Start_off, NI_TestStart_Step02, TXT_Weapon_SmashRifle_19, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_TestStartStep02		= TriggerPackage:GetTextViewerExA( 512, 250, NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, TXT_Weapon_SmashRifle_20, "Resources/GUI/New/TutorialImage_1.gui" , true, false );

	Test_TestGuide				= TriggerPackage:GetTextViewerEx(600, 500, NI_TestStart_Step02, NI_Success, TXT_Weapon_SmashRifle_21,"Resources/GUI/New/TutorialImage_1.gui" );

	Text_TestFail					= TriggerPackage:GetTextViewerExA( 512, 250, NI_Fail, NI_Text_TestFail_OFF, TXT_Weapon_SmashRifle_22, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_TestSuccess			= TriggerPackage:GetTextViewerExA( 512, 200, NI_Success, NI_Text_TestSuccess_OFF, TXT_Weapon_SmashRifle_23, "Resources/GUI/New/TutorialImage_1.gui" , true, false );

	Text_Blast_01					= TriggerPackage:GetTextViewerExA( 512, 310, NI_Blast, NI_Text_Blast_01_off, TXT_Weapon_SmashRifle_24, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_Blast_02					= TriggerPackage:GetTextViewerExA( 512, 310, NI_Blast_01, NI_Text_Blast_02_off, TXT_Weapon_SmashRifle_25, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_Blast_03					= TriggerPackage:GetTextViewerExA( 512, 310, NI_Blast_02, NI_Text_Blast_03_off, TXT_Weapon_SmashRifle_26, "Resources/GUI/New/TutorialImage_1.gui" , true, false );

	TestFailEnd					= TriggerPackage:GetTutorialComplete( NI_Text_TestFail_OFF );

	NarBlast01						= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_Blast, 0, 0, 0, 0 );
	
	-- 다이나믹블러스트오브젝트 배치
	-- GetDeployTutoBlastObject( 오브젝트이름, 폭발이펙트이름, 폭발사운드이름, 리스폰사운드이름, 체력, 리스폰타임, 재질, 살아있는시간 )
	--SetupDeployTutoBlastObject( GetDeployTutoBlastObject()로 생성한트리거, 폭발시스코어, in_보여지는이벤트, in_사라지는이벤트, out_폭발시이벤트, 리스폰횟수 )
	BlastObject01 = TriggerPackage:GetDeployTutoBlastObject( "blast2_box5", "eff_target_green.seq", "wall_destroy_steel.ogg", "wall_create.ogg",5,5000,3,0 );
							TriggerPackage:SetupDeployTutoBlastObject( BlastObject01, 0, NI_Text_TestStartStep02_OFF, NI_Phase2, NI_Blast, 0 );

	BlastObject02 = TriggerPackage:GetDeployTutoBlastObject( "blast2_box10", "eff_target_yellow.seq", "wall_destroy_steel.ogg", "wall_create.ogg",10,5000,3,0 );
							TriggerPackage:SetupDeployTutoBlastObject( BlastObject02, 0, NI_Text_TestStartStep02_OFF, NI_Phase2, NI_Blast_01, 0 );

	BlastObject03 = TriggerPackage:GetDeployTutoBlastObject( "blast2_box20", "eff_target_orange.seq", "wall_destroy_steel.ogg", "wall_create.ogg",20,5000,3,0 );
							TriggerPackage:SetupDeployTutoBlastObject( BlastObject03, 0, NI_Text_TestStartStep02_OFF, NI_Phase2, NI_Blast_02, 0 );


	BlastObject04 = TriggerPackage:GetDeployTutoBlastObject( "blast2_box5_2", "eff_target_green.seq", "wall_destroy_steel.ogg", "wall_create.ogg",5,5000,3,0 );
							TriggerPackage:SetupDeployTutoBlastObject( BlastObject04, 0, NI_Phase2, 0, NI_Blast, 0 );

	BlastObject05 = TriggerPackage:GetDeployTutoBlastObject( "blast2_box10_2", "eff_target_yellow.seq", "wall_destroy_steel.ogg", "wall_create.ogg",10,5000,3,0 );
							TriggerPackage:SetupDeployTutoBlastObject( BlastObject05, 0, NI_Phase2, 0, NI_Blast_01, 0 );

	BlastObject06 = TriggerPackage:GetDeployTutoBlastObject( "blast2_box20_2", "eff_target_orange.seq", "wall_destroy_steel.ogg", "wall_create.ogg",20,5000,3,0 );
							TriggerPackage:SetupDeployTutoBlastObject( BlastObject06, 0, NI_Phase2, 0, NI_Blast_02, 0 );



	 -- ( in_시작트리거, 배치한블러스트오브젝트트리거, 시작틱 )
 	--BlastObject02AnimControllerStop = TriggerPackage:GetTutoBlastObjectAnimControllerStop( TEST_ANIM_STOP, BlastObject02 );

	BlastObject01AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_TestStart_Step02, BlastObject01, 0 );
	BlastObject02AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_TestStart_Step02, BlastObject02, 0 );
	BlastObject03AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_TestStart_Step02, BlastObject03, 0 );

	BlastObject04AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_Phase2, BlastObject04, 0 );
	BlastObject05AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_Phase2, BlastObject05, 0 );
	BlastObject06AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_Phase2, BlastObject06, 0 );

	Timer_Plus_00		= TriggerPackage:GetEventAlram( NI_Blast, NI_Blast_03, 0, 0, false);
	Timer_Plus_01		= TriggerPackage:GetEventAlram( NI_Blast_01, NI_Blast_03, 0, 0, false);
	Timer_Plus_02		= TriggerPackage:GetEventAlram( NI_Blast_01, NI_Blast_03, 0, 0, false);
	Timer_Plus_03		= TriggerPackage:GetEventAlram( NI_Blast_02, NI_Blast_03, 0, 0, false);
	Timer_Plus_04		= TriggerPackage:GetEventAlram( NI_Blast_02, NI_Blast_03, 0, 0, false);
	Timer_Plus_05		= TriggerPackage:GetEventAlram( NI_Blast_02, NI_Blast_03, 0, 0, false);
	
	--Timer_Plus_01		= TriggerPackage:GetEventAlram( NI_Blast_01, NI_Blast, 0, 0, false);
	--Timer_Plus_02		= TriggerPackage:GetEventAlram( NI_Blast_01, NI_Blast, 0, 0, false);
	--Timer_Plus_03		= TriggerPackage:GetEventAlram( NI_Blast_02, NI_Blast, 0, 0, false);
	--Timer_Plus_04		= TriggerPackage:GetEventAlram( NI_Blast_02, NI_Blast, 0, 0, false);
	--Timer_Plus_05		= TriggerPackage:GetEventAlram( NI_Blast_02, NI_Blast, 0, 0, false);

	ScoreMngBlast01	= TriggerPackage:GetScoreObserver( 50, 200, NI_Blast_03, NI_Success, TXT_Weapon_SmashRifle_27, 30 );
	ScoreMngBlast02	= TriggerPackage:GetScoreObserver( 2000, 2000, NI_Blast_03, NI_Phase2, TXT_Weapon_SmashRifle_28, 15 );


	Hold_Actor_Step02_02		= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Success, NI_Success, false );
	Hold_Actor_Step02_03		= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Fail, NI_Fail, false );
	--Realse_Actor_Step02_02	= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_TestStart_Step02, NI_TestStart_Step02, true );

	Arrow_Gate_off_02			= TriggerPackage:GetSceneVisible( false, "lc_arrow.scn", NI_Start_Step02);

	-- 튜토리얼 공통 종결 부분
	Timer_SayThree							= TriggerPackage:GetEventAlram( NI_Text_Step02Start_off, NI_SayThree, 2000, 0, false);
	Timer_SayTwo							= TriggerPackage:GetEventAlram( NI_SayThree, NI_SayTwo, 1000, 0, false);
	Timer_SayOne							= TriggerPackage:GetEventAlram( NI_SayTwo, NI_SayOne, 1000, 0, false);	
	
	NarThree									= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\3.ogg", "", NI_SayThree, 0, 0, 0, 0 );
	NarTwo										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\2.ogg", "", NI_SayTwo, 0, 0, 0, 0 );
	NarOne										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\1.ogg", "", NI_SayOne, 0, 0, 0, 0 );

	NarEnd										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_Success, 0, 0, 0, 0 );
	NarWinGame								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_have_won_the_match.ogg", "", NI_Success, 0, 0, 0, 0 );
	InPutLicense								=	TriggerPackage:GetItemLicensed(NI_Success, 31);

	Hold_Actor_Fail							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Fail, NI_Fail, false );
	NarTimeIsUP								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\inter_timeover.ogg", "", NI_Fail, 0, 0, 0, 0 );
	NarLostGame								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_lost_the_match1.ogg", "", NI_Fail, 0, 0, 0, 0 );
	
	MessageBox_Step02					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, NI_Text_TestFail_OFF, 31 );
	MessageBox_Step03					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, 0, 31 );
	TestSuccessEnd						= TriggerPackage:GetTutorialComplete( NI_Text_TestSuccess_OFF );	


	-- 등록
	TestStage:Register(SpawnHelper01);
	TestStage:Register(DUALGunLoad);

	TestStage:Register(Timer_StartStep02);
	TestStage:Register(Timer_Text_Step02Start);
	TestStage:Register(Timer_ReadyStep02);

	TestStage:Register(Timer_Text_TestStartStep02_off);

	TestStage:Register(Timer_End);	

	TestStage:Register(Timer_Text_TestFail_off);	
	TestStage:Register(Timer_Text_TestSuccess_off);

	TestStage:Register(Hold_Actor_Step02_01);
	TestStage:Register(Realse_Actor_Step02_01);
	
	TestStage:Register(Timer_Blast_Msg_01);
	TestStage:Register(Timer_Blast_Msg_02);
	TestStage:Register(Timer_Blast_Msg_03);
	--TestStage:Register(Timer_Blast_Msg_04);
	--TestStage:Register(Timer_Blast_Msg_05);
	--TestStage:Register(Timer_Blast_Msg_06);
	--TestStage:Register(Timer_Blast_Msg_07);
	--TestStage:Register(Timer_Blast_Msg_08);
	--TestStage:Register(Timer_Blast_Msg_09);
	
	TestStage:Register(Text_Step02Start);
	TestStage:Register(Text_Step02Ready);
	TestStage:Register(Text_TestStartStep02);

	TestStage:Register(Test_TestGuide);

	TestStage:Register(Text_TestFail);
	TestStage:Register(Text_TestSuccess);

	TestStage:Register(Text_Blast_01);
	TestStage:Register(Text_Blast_02);
	TestStage:Register(Text_Blast_03);

	TestStage:Register(TestFailEnd);

	TestStage:Register(NarBlast01);

	TestStage:Register(BlastObject01);
	TestStage:Register(BlastObject02);
	TestStage:Register(BlastObject03);

	TestStage:Register(BlastObject04);
	TestStage:Register(BlastObject05);
	TestStage:Register(BlastObject06);

	TestStage:Register(Timer_Plus_00);
	TestStage:Register(Timer_Plus_01);
	TestStage:Register(Timer_Plus_02);
	TestStage:Register(Timer_Plus_03);
	TestStage:Register(Timer_Plus_04);
	TestStage:Register(Timer_Plus_05);

	TestStage:Register(BlastObject01AnimController);
	TestStage:Register(BlastObject02AnimController);
	TestStage:Register(BlastObject03AnimController);
	TestStage:Register(BlastObject04AnimController);
	TestStage:Register(BlastObject05AnimController);
	TestStage:Register(BlastObject06AnimController);
	
	TestStage:Register(ScoreMngBlast01);
	TestStage:Register(ScoreMngBlast02);

	TestStage:Register(Hold_Actor_Step02_02);
	TestStage:Register(Hold_Actor_Step02_03);
	DUALGunLicense:Register(Arrow_Gate_off_02);
	
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
