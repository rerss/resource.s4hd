
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


-- <----------------- 튜토리얼 초기화 -----------------> --
function OnInvisibleLicenseTest()

	TutorialSystem:SetTotalStage( 2 );	-- 생성할 step의 갯수를 설정
	
	OnInvisivleLicenseTestStep01		(); -- step1 생성
	OnInvisivleLicenseTestStep02		(); -- step1 생성


end
-- <---------------------------------------------------> --


-- Notify ID이벤트 메세지
NI_START										= 101
NI_Text_Welcom01_OFF					= 102
NI_Text_Welcom02_OFF					= 103
NI_Text_Welcom03_OFF					= 104
NI_SCORE_COMPLETED01				= 105
NI_SKILL_STEALTH				= 106
NI_Text_CompleteTip01_on				= 107
NI_Text_CompleteTip01_off				= 108
NI_Text_CompleteTip02_on				= 109
NI_Text_CompleteTip02_off				= 110
NI_CONGRATULATION						= 111
NI_SCORE_COMPLETED02				= 112
NI_Blast01										= 113
NI_Text_LoadRevolver_off					= 114
NI_Blast											= 115

-- 텍스트
LoadStringTable( "Language/Script/tutorial_string_table.x7" );

TXT_Skill_invisivle_01=GetString( "TXT_Skill_invisivle_01" );		
TXT_Skill_invisivle_02=GetString( "TXT_Skill_invisivle_02" );			
TXT_Skill_invisivle_03=GetString( "TXT_Skill_invisivle_03" );
TXT_Skill_invisivle_04=GetString( "TXT_Skill_invisivle_04" );	
TXT_Skill_invisivle_05=GetString( "TXT_Skill_invisivle_05" );
TXT_Skill_invisivle_06=GetString( "TXT_Skill_invisivle_06" );	
TXT_Skill_invisivle_07=GetString( "TXT_Skill_invisivle_07" );
TXT_Skill_invisivle_08=GetString( "TXT_Skill_invisivle_08" );	
TXT_Skill_invisivle_09=GetString( "TXT_Skill_invisivle_09" );
TXT_Skill_invisivle_10=GetString( "TXT_Skill_invisivle_10" );
TXT_Skill_invisivle_11=GetString( "TXT_Skill_invisivle_11" );
TXT_Skill_invisivle_12=GetString( "TXT_Skill_invisivle_12" );
TXT_Skill_invisivle_13=GetString( "TXT_Skill_invisivle_13" );
TXT_Skill_invisivle_14=GetString( "TXT_Skill_invisivle_14" );
TXT_Skill_invisivle_15=GetString( "TXT_Skill_invisivle_15" );
TXT_Skill_invisivle_16=GetString( "TXT_Skill_invisivle_16" );
TXT_Skill_invisivle_17=GetString( "TXT_Skill_invisivle_17" );
TXT_Skill_invisivle_18=GetString( "TXT_Skill_invisivle_18" );
TXT_Skill_invisivle_19=GetString( "TXT_Skill_invisivle_19" );
TXT_Skill_invisivle_20=GetString( "TXT_Skill_invisivle_20" );
TXT_Skill_invisivle_21=GetString( "TXT_Skill_invisivle_21" );
                                       
ClearStringTable();


function OnInvisivleLicenseTestStep01()
	
	InvisivleLicense = TutorialSystem:GetEmptyStage();	
	
	-- 캐릭터및 인비저블 스폰
	-- ( 트리거 발동시점, 스폰타입, 스폰할트리거박스, 시작이벤트(SPAWN_NOTIFY 일때만 적용됨), 발생이벤트( SPAWN_FOCUS_ACTOR 가 아닐경우에만 적용됨 ) )
	ActorSpawn 			= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true );
	
	-- 아이템지급
	-- ( 장착할슬롯, 아이템아이디, in_시작이벤트 )
	BlockLoad		= TriggerPackage:GetItemDuplicator( 0, 3030001, 0, 0 );

	-- 해당시간이 지나면 이벤트 발생
	-- ( in_시작이벤트, out_발생이벤트, 시간( ms ), in_종료이벤트, 반복여부 ) 이벤트값이 0일경우 작동하지 않음

	Timer_TextStart							= TriggerPackage:GetEventAlram( 0, NI_START, 0, 0, false );
	Timer_Text_Welcom01_Delay			= TriggerPackage:GetEventAlram( NI_START, NI_Text_Welcom01_OFF, 5000, 0, false );
	Timer_Text_Welcom02_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 2000, 0, false );
	Timer_Text_Welcom03_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false );

	Timer_Text_CompleteTip01_on		= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_on, 1000, 0, false );
	Timer_Text_CompleteTip01_off		= TriggerPackage:GetEventAlram( NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, 10000, 0, false );

	Timer_Text_CompleteTip02_on		= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_on, 1000, 0, false );
	Timer_Text_CompleteTip02_off		= TriggerPackage:GetEventAlram( NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_off, 10000, 0, false );

	Text_ClearStep01						= TriggerPackage:GetTextViewerEx(220, 250, NI_Text_CompleteTip02_off, 0, TXT_Skill_invisivle_12, "Resources/GUI/New/TutorialImage_1.gui" );
	

	KeyPermiter01								= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_START, NI_START, false );
	KeyPermiter02								= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_Welcom03_OFF, NI_Text_Welcom03_OFF, true );

	KeyPermiter03								= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_on, false );
	KeyPermiter04								= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_off, NI_Text_CompleteTip01_off, true );

	KeyPermiter05								= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_on, false );
	KeyPermiter06								= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_off, NI_Text_CompleteTip02_off, true );

	-- GetSceneVisible						( true 또는 false, "씬 이름", 이벤트이름 )

	Arrow_Gate_off_01						= TriggerPackage:GetSceneVisible( true, "lc_arrow.scn", NI_START);

	Arrow_Gate_on_01						= TriggerPackage:GetSceneVisible( false, "lc_arrow.scn", NI_Text_CompleteTip02_off);


	-- 텍스트 보이게 설정
	-- ( 좌표x, 좌표y, in_시작이벤트, in_종료할이벤트, 표시할텍스트 )
	Text_Welcom01							= TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Skill_invisivle_01 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
	Text_Welcom02							= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Skill_invisivle_02 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
	Text_Welcom03							= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Skill_invisivle_03 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
	
	Text_Guide01								= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_SCORE_COMPLETED01, TXT_Skill_invisivle_04 , "Resources/GUI/New/TutorialImage_1.gui");
	Text_Guide02								= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_off, NI_SCORE_COMPLETED02, TXT_Skill_invisivle_09 , "Resources/GUI/New/TutorialImage_1.gui");
	
	Text_CompleteTip01						= TriggerPackage:GetTextViewerExA( 512, 300, NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, TXT_Skill_invisivle_07 , "Resources/GUI/New/TutorialImage_0.gui", true, false);
	Text_CompleteTip02						= TriggerPackage:GetTextViewerExA( 512, 300, NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_off, TXT_Skill_invisivle_08 , "Resources/GUI/New/TutorialImage_0.gui", true, false);

	Text_LoadRevolver					= TriggerPackage:GetTextViewerExA( 512, 300, NI_Text_CompleteTip01_off, NI_Text_LoadRevolver_off, TXT_Skill_invisivle_13, "Resources/GUI/New/TutorialImage_1.gui", true, false);
	Timer_Text_LoadRevolver_off	= TriggerPackage:GetEventAlram( NI_Text_CompleteTip01_off, NI_Text_LoadRevolver_off, 3000, 0, false );
	NarItemGet									= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\get_item.ogg", "", NI_Text_CompleteTip01_off, 0, 0, 0, 0 );


	-- ( 좌표X, 좌표Y, in_발생이벤트, out_완료이벤트, 글자포멧, 최종점수 )
	ScoreCheck01							= TriggerPackage:GetScoreObserver( 50, 200, NI_SKILL_STEALTH, NI_SCORE_COMPLETED01, TXT_Skill_invisivle_05, 5);
	ScoreCheck02							= TriggerPackage:GetScoreObserver( 50, 220, NI_Blast, NI_SCORE_COMPLETED02, TXT_Skill_invisivle_10, 2 );

	RegScoreCheck02						= TriggerPackage:GetObserverRegister( NI_Text_CompleteTip01_off, ScoreCheck02);

	Dummy_ScoreCheck01					= TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED01, NI_SKILL_STEALTH, TXT_Skill_invisivle_06 , "");
	Dummy_ScoreCheck02					= TriggerPackage:GetTextViewerEx(50, 220, NI_SCORE_COMPLETED02, 0, TXT_Skill_invisivle_11 , "");

	-- ( in_종료이벤트, out_발생이벤트, 감시할공격, 이벤트를 전달받을 특정트리거 )
	ActorAttackCheck01						= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01, NI_SKILL_STEALTH, "SKILL_STEALTH", ScoreCheck01 );

	RegActorAttackCheck01				= TriggerPackage:GetObserverRegister( NI_Text_Welcom03_OFF, ActorAttackCheck01);
	
	NarOK01										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0 );
	NarOK02										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02, 0, 0, 0, 0 );
	
	-- 다이나믹블러스트오브젝트 배치
	-- GetDeployTutoBlastObject( 오브젝트이름, 폭발이펙트이름, 폭발사운드이름, 리스폰사운드이름, 체력, 리스폰타임, 재질, 살아있는시간 )
	--SetupDeployTutoBlastObject( GetDeployTutoBlastObject()로 생성한트리거, 폭발시스코어, in_보여지는이벤트, in_사라지는이벤트, out_폭발시이벤트, 리스폰횟수 )	
	BlastObject01 = TriggerPackage:GetDeployTutoBlastObject( "blast2_block100_2", "mapeffect_blast_box.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 500,5000,3,0 );
							TriggerPackage:SetupDeployTutoBlastObject( BlastObject01, 0, NI_null, NI_START, NI_Blast01, 0 );

	BlastObject02 = TriggerPackage:GetDeployTutoBlastObject( "blast2_block100", "mapeffect_blast_box.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 500,5000,3,0 );
							TriggerPackage:SetupDeployTutoBlastObject( BlastObject02, 0, NI_null, NI_START, NI_Blast01, 0 );

	RevolverLoad					= TriggerPackage:GetItemDuplicator( 0, 2010002, 0, NI_Text_CompleteTip01_off );
	
	GateOpen_Step02						= TriggerPackage:GetCollisionChecker("trg_arrive_01", NI_CONGRATULATION, false);
	RegGateOpen_Step02					= TriggerPackage:GetObserverRegister( NI_Text_CompleteTip02_off, GateOpen_Step02);
	
	MessageBox_Step01					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, 0, 15 );

	

	InviBox								= TriggerPackage:GetDeployTutoBlastObject( "blast2_invibox", "eff_target_green.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 10,5000,3,0 );
												TriggerPackage:SetupDeployTutoBlastObject( InviBox, 0, NI_Text_CompleteTip01_off, NI_CONGRATULATION, NI_Blast, 0 );	
	BlastObject02AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_Text_CompleteTip01_off, InviBox, 0 );



	Congraturation_Step01					= TriggerPackage:GetTutorialComplete( NI_CONGRATULATION );
		
		
	-- 등록

	InvisivleLicense:Register(ActorSpawn);

	InvisivleLicense:Register(BlockLoad);

	InvisivleLicense:Register(Timer_TextStart);
	InvisivleLicense:Register(Timer_Text_Welcom01_Delay);
	InvisivleLicense:Register(Timer_Text_Welcom02_Delay);
	InvisivleLicense:Register(Timer_Text_Welcom03_Delay);
	
	InvisivleLicense:Register(Timer_Text_CompleteTip01_on);
	InvisivleLicense:Register(Timer_Text_CompleteTip01_off);

	InvisivleLicense:Register(Timer_Text_CompleteTip02_on);
	InvisivleLicense:Register(Timer_Text_CompleteTip02_off);

	InvisivleLicense:Register(Text_ClearStep01);
	
	InvisivleLicense:Register(KeyPermiter01);
	InvisivleLicense:Register(KeyPermiter02);

	InvisivleLicense:Register(KeyPermiter03);
	InvisivleLicense:Register(KeyPermiter04);
	
	InvisivleLicense:Register(KeyPermiter05);
	InvisivleLicense:Register(KeyPermiter06);

	InvisivleLicense:Register(Arrow_Gate_off_01);

	InvisivleLicense:Register(Arrow_Gate_on_01);
	
	InvisivleLicense:Register(Text_Welcom01);
	InvisivleLicense:Register(Text_Welcom02);
	InvisivleLicense:Register(Text_Welcom03);
	
	InvisivleLicense:Register(Text_Guide01);
	InvisivleLicense:Register(Text_Guide02);

	InvisivleLicense:Register(Text_CompleteTip01);
	InvisivleLicense:Register(Text_CompleteTip02);

	InvisivleLicense:Register(Text_LoadRevolver);
	InvisivleLicense:Register(Timer_Text_LoadRevolver_off);
	InvisivleLicense:Register(NarItemGet);

	InvisivleLicense:Register(RegScoreCheck02);
	InvisivleLicense:Register(Dummy_ScoreCheck01);
	InvisivleLicense:Register(Dummy_ScoreCheck02);
	--InvisivleLicense:Register(ActorAttackCheck01);
	
	InvisivleLicense:Register(RegActorAttackCheck01);
	
	InvisivleLicense:Register(NarOK01);
	InvisivleLicense:Register(NarOK02);

	InvisivleLicense:Register(BlastObject01);
	InvisivleLicense:Register(BlastObject02);

	InvisivleLicense:Register(RegGateOpen_Step02);
	--InvisivleLicense:Register();

	InvisivleLicense:Register(RevolverLoad);

	InvisivleLicense:Register(Congraturation_Step01);


	InvisivleLicense:Register(InviBox);
	InvisivleLicense:Register(BlastObject02AnimController);



	InvisivleLicense:Register(MessageBox_Step01);

	--InvisivleLicense:Register(GateOpen_Step02);

	TutorialSystem:AddStage( 0, InvisivleLicense );
	
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
NI_Blast02								= 212


function OnInvisivleLicenseTestStep02()
	
	TestStage									= TutorialSystem:GetEmptyStage();

		-- 캐릭터및 인비저블 스폰
	-- ( 트리거 발동시점, 스폰타입, 스폰할트리거박스, 시작이벤트(SPAWN_NOTIFY 일때만 적용됨), 발생이벤트( SPAWN_FOCUS_ACTOR 가 아닐경우에만 적용됨 ) )
	ActorSpawn 								= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true );
	
	-- 아이템지급
	-- ( 장착할슬롯, 아이템아이디, in_시작이벤트 )
	RevolverLoad								= TriggerPackage:GetItemDuplicator( 0, 2010002, 0, 0 );
	BlockLoad		= TriggerPackage:GetItemDuplicator( 0, 3030001, 0, 0 );

	Timer_StartStep02						= TriggerPackage:GetEventAlram( 0, NI_Start_Step02, 0, 0, false );
	Timer_Text_Step02Start					= TriggerPackage:GetEventAlram( NI_Start_Step02, NI_Text_Step02Start_off, 5000, 0, false );
	Timer_ReadyStep02						= TriggerPackage:GetEventAlram( NI_Text_Step02Start_off, NI_TestStart_Step02, 5000, 0, false );

	Timer_Text_TestStartStep02_off		= TriggerPackage:GetEventAlram( NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, 2000, 0, false );
	
	Timer_End									= TriggerPackage:GetEventAlram( NI_TestStart_Step02, NI_Fail, 60000, NI_Success, false);
														TriggerPackage:SetShowEventAlram(Timer_End, 470, 50, TXT_Skill_invisivle_14, 1 );

	Timer_Text_TestFail_off				= TriggerPackage:GetEventAlram( NI_Fail, NI_Text_TestFail_OFF, 3000, 0, false);
	Timer_Text_TestSuccess_off			= TriggerPackage:GetEventAlram( NI_Success, NI_Text_TestSuccess_OFF, 10000, 0, false);

	Hold_Actor_Step02_01					= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Start_Step02, NI_Start_Step02, false );
	Realse_Actor_Step02_01				= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_TestStart_Step02, NI_TestStart_Step02, true );

	Arrow_Gate_off_01						= TriggerPackage:GetSceneVisible( false, "lc_arrow.scn", NI_Text_CompleteTip02_off);

	Text_Step02Start							= TriggerPackage:GetTextViewerExA( 512, 250, NI_Start_Step02, NI_Text_Step02Start_off, TXT_Skill_invisivle_15, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_Step02Ready						= TriggerPackage:GetTextViewerExA( 512, 250, NI_Text_Step02Start_off, NI_TestStart_Step02, TXT_Skill_invisivle_16, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_TestStartStep02					= TriggerPackage:GetTextViewerExA( 512, 250, NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, TXT_Skill_invisivle_17, "Resources/GUI/New/TutorialImage_1.gui" , true, false );

	Text_Guide_Step02_01					= TriggerPackage:GetTextViewerEx(600, 500, NI_TestStart_Step02, NI_Success, TXT_Skill_invisivle_18, "Resources/GUI/New/TutorialImage_1.gui");
	
	Text_TestFail								= TriggerPackage:GetTextViewerExA( 512, 250, NI_Fail, NI_Text_TestFail_OFF, TXT_Skill_invisivle_19, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_TestSuccess						= TriggerPackage:GetTextViewerExA( 512, 200, NI_Success, NI_Text_TestSuccess_OFF, TXT_Skill_invisivle_20, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	
		ScoreCheck03							= TriggerPackage:GetScoreObserver( 50, 200, NI_Blast02, NI_Success, TXT_Skill_invisivle_21, 10 );
	
	-- 다이나믹블러스트오브젝트 배치
	-- GetDeployTutoBlastObject( 오브젝트이름, 폭발이펙트이름, 폭발사운드이름, 리스폰사운드이름, 체력, 리스폰타임, 재질, 살아있는시간 )
	--SetupDeployTutoBlastObject( GetDeployTutoBlastObject()로 생성한트리거, 폭발시스코어, in_보여지는이벤트, in_사라지는이벤트, out_폭발시이벤트, 리스폰횟수 )	
	InviBox02							= TriggerPackage:GetDeployTutoBlastObject( "blast2_invibox02", "eff_target_green.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 10,5000,3,0 );
												TriggerPackage:SetupDeployTutoBlastObject( InviBox02, 0, NI_Start_Step02, 0, NI_Blast02, 0 );
	BlastObject03AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_Start_Step02, InviBox02, 0 );
	
	InviBox03							= TriggerPackage:GetDeployTutoBlastObject( "blast2_invibox03", "eff_target_green.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 10,5000,3,0 );
												TriggerPackage:SetupDeployTutoBlastObject( InviBox03, 0, NI_Start_Step02, 0, NI_Blast02, 0 );
	BlastObject04AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_Start_Step02, InviBox03, 0 );
	
	InviBox04							= TriggerPackage:GetDeployTutoBlastObject( "blast2_invibox04", "eff_target_green.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 10,5000,3,0 );
												TriggerPackage:SetupDeployTutoBlastObject( InviBox04, 0, NI_Start_Step02, 0, NI_Blast02, 0 );
	BlastObject05AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_Start_Step02, InviBox04, 0 );



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
	InPutLicense								=	TriggerPackage:GetItemLicensed(NI_Success, 15);

	Hold_Actor_Fail							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Fail, NI_Fail, false );
	NarTimeIsUP								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\inter_timeover.ogg", "", NI_Fail, 0, 0, 0, 0 );
	NarLostGame								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_lost_the_match1.ogg", "", NI_Fail, 0, 0, 0, 0 );
	
	MessageBox_Step02					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, NI_Text_TestFail_OFF, 15 );
	MessageBox_Step03					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, 0, 15 );
	TestSuccessEnd						= TriggerPackage:GetTutorialComplete( NI_Text_TestSuccess_OFF );	

	-- 등록

	TestStage:Register(ActorSpawn);

	TestStage:Register(RevolverLoad);
	TestStage:Register(BlockLoad);
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

	TestStage:Register(ScoreCheck03);

	TestStage:Register(InviBox02);
	TestStage:Register(BlastObject03AnimController);
	TestStage:Register(InviBox03);
	TestStage:Register(BlastObject04AnimController);
	TestStage:Register(InviBox04);
	TestStage:Register(BlastObject05AnimController);	

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
