
-- GetSpawnHelper용 상수

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
function OnMindEnergyLicenseTest()

	TutorialSystem:SetTotalStage( 2 );	-- 생성할 step의 갯수를 설정
	
	OnMindEnergyLicenseTestStep01		(); -- step1 생성
	OnMindEnergyLicenseTestStep02		(); -- step2 생성

end
-- <---------------------------------------------------> --


-- Notify ID이벤트 메세지
NI_START										= 101
NI_Text_Welcom01_OFF					= 102
NI_Text_Welcom02_OFF					= 103
NI_Text_Welcom03_OFF					= 104
NI_SCORE_COMPLETED01				= 105
NI_ATTACK_1_MIND_ENERGY			= 106
NI_Text_CompleteTip01_on				= 107
NI_Text_CompleteTip01_off				= 108
NI_Text_CompleteTip02_off				= 109
NI_CONGRATULATION						= 110
NI_Text_TestSuccess_OFF				= 111
NI_SCORE_COMPLETED02				= 112
NI_ATTACK_1_MIND_ENERGY_02		= 113
NI_Text_SpwanNotify01_off				= 114
NI_HP_Full										= 115

-- 텍스트
LoadStringTable( "Language/Script/tutorial_string_table.x7" );

TXT_Weapon_MindEnergy_01=GetString( "TXT_Weapon_MindEnergy_01" );
TXT_Weapon_MindEnergy_02=GetString( "TXT_Weapon_MindEnergy_02" );
TXT_Weapon_MindEnergy_03=GetString( "TXT_Weapon_MindEnergy_03" );
TXT_Weapon_MindEnergy_04=GetString( "TXT_Weapon_MindEnergy_04" );
TXT_Weapon_MindEnergy_05=GetString( "TXT_Weapon_MindEnergy_05" );
TXT_Weapon_MindEnergy_06=GetString( "TXT_Weapon_MindEnergy_06" );
TXT_Weapon_MindEnergy_07=GetString( "TXT_Weapon_MindEnergy_07" );
TXT_Weapon_MindEnergy_08=GetString( "TXT_Weapon_MindEnergy_08" );
TXT_Weapon_MindEnergy_09=GetString( "TXT_Weapon_MindEnergy_09" );
TXT_Weapon_MindEnergy_10=GetString( "TXT_Weapon_MindEnergy_10" );
TXT_Weapon_MindEnergy_11=GetString( "TXT_Weapon_MindEnergy_11" );
TXT_Weapon_MindEnergy_12=GetString( "TXT_Weapon_MindEnergy_12" );
TXT_Weapon_MindEnergy_13=GetString( "TXT_Weapon_MindEnergy_13" );
TXT_Weapon_MindEnergy_14=GetString( "TXT_Weapon_MindEnergy_14" );
TXT_Weapon_MindEnergy_15=GetString( "TXT_Weapon_MindEnergy_15" );
TXT_Weapon_MindEnergy_16=GetString( "TXT_Weapon_MindEnergy_16" );
TXT_Weapon_MindEnergy_17=GetString( "TXT_Weapon_MindEnergy_17" );
TXT_Weapon_MindEnergy_18=GetString( "TXT_Weapon_MindEnergy_18" );
TXT_Weapon_MindEnergy_19=GetString( "TXT_Weapon_MindEnergy_19" );
TXT_Weapon_MindEnergy_20=GetString( "TXT_Weapon_MindEnergy_20" );
TXT_Weapon_MindEnergy_21=GetString( "TXT_Weapon_MindEnergy_21" );
TXT_Weapon_MindEnergy_22=GetString( "TXT_Weapon_MindEnergy_22" );
                                                        
ClearStringTable();
														
function OnMindEnergyLicenseTestStep01()
	
	MindEnergyLicense = TutorialSystem:GetEmptyStage();	
	
	-- 캐릭터및 마인드에너지 스폰
	-- ( 트리거 발동시점, 스폰타입, 스폰할트리거박스, 시작이벤트(SPAWN_NOTIFY 일때만 적용됨), 발생이벤트( SPAWN_FOCUS_ACTOR 가 아닐경우에만 적용됨 ) )
	ActorSpawn 			= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true );
	
	-- 아이템지급
	-- ( 장착할슬롯, 아이템아이디, in_시작이벤트 )
	MindEnergyLoad				= TriggerPackage:GetItemDuplicator( 0, 2060001, 0, 0 );
	
	-- 해당시간이 지나면 이벤트 발생
	-- ( in_시작이벤트, out_발생이벤트, 시간( ms ), in_종료이벤트, 반복여부 ) 이벤트값이 0일경우 작동하지 않음
	
	Timer_TextStart						= TriggerPackage:GetEventAlram( 0, NI_START, 0, 0, false );
	Timer_Text_Welcom01_Delay		= TriggerPackage:GetEventAlram( NI_START, NI_Text_Welcom01_OFF, 5000, 0, false );
	Timer_Text_Welcom02_Delay		= TriggerPackage:GetEventAlram( NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 3000, 0, false );
	Timer_Text_Welcom03_Delay		= TriggerPackage:GetEventAlram( NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false );

	Timer_Text_CompleteTip01_on	= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_on, 500, 0, false );
	Timer_Text_CompleteTip01_off	= TriggerPackage:GetEventAlram( NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, 8000, 0, false );

	Timer_Text_SpwanNotify01_off	= TriggerPackage:GetEventAlram( NI_Text_CompleteTip01_off, NI_Text_SpwanNotify01_off, 5000, 0, false );


	Timer_Text_CompleteTip02_off	= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_off, 8000, 0, false );

	KeyPermiter01							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_START, NI_START, false );
	KeyPermiter02							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_Welcom03_OFF, NI_Text_Welcom03_OFF, true );

	KeyPermiter03							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_on, false );
	KeyPermiter04							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_SpwanNotify01_off, NI_Text_SpwanNotify01_off, true );

	KeyPermiter05							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_SCORE_COMPLETED02, NI_SCORE_COMPLETED02, false );
	KeyPermiter06							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_off, NI_Text_CompleteTip02_off, true );

	-- 텍스트 보이게 설정
	-- ( 좌표x, 좌표y, in_시작이벤트, in_종료할이벤트, 표시할텍스트 )
	Text_Welcom01	= TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Weapon_MindEnergy_01 , "Resources/GUI/New/TutorialImage_1.gui", true, false);
	Text_Welcom02	= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Weapon_MindEnergy_02 , "Resources/GUI/New/TutorialImage_1.gui", true, false);
	Text_Welcom03	= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Weapon_MindEnergy_03 , "Resources/GUI/New/TutorialImage_1.gui", true, false);
	
	Text_Guide01		= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_SCORE_COMPLETED01, TXT_Weapon_MindEnergy_04 , "Resources/GUI/New/TutorialImage_1.gui");
	Text_Guide02		= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_off, NI_Text_CompleteTip02_off, TXT_Weapon_MindEnergy_05 , "Resources/GUI/New/TutorialImage_1.gui");
	
	Text_CompleteTip01	 = TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_off, TXT_Weapon_MindEnergy_08 , "Resources/GUI/New/TutorialImage_0.gui", true, false);
	Text_CompleteTip02	 = TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_off, TXT_Weapon_MindEnergy_09 , "Resources/GUI/New/TutorialImage_0.gui", true, false);

	Text_SpwanNotify01	 = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_CompleteTip01_off, NI_Text_SpwanNotify01_off, TXT_Weapon_MindEnergy_10, "Resources/GUI/New/TutorialImage_1.gui", true, false);

	Text_TestSuccess	= TriggerPackage:GetTextViewerExA( 512, 200, NI_Text_CompleteTip02_off, NI_Text_TestSuccess_OFF, TXT_Weapon_MindEnergy_11, "Resources/GUI/New/TutorialImage_1.gui" , true, false);

	-- ( 좌표X, 좌표Y, in_발생이벤트, out_완료이벤트, 글자포멧, 최종점수 )
	ScoreCheck01		= TriggerPackage:GetScoreObserver( 50, 200, NI_ATTACK_1_MIND_ENERGY, NI_SCORE_COMPLETED01, TXT_Weapon_MindEnergy_06, 3 );
	ScoreCheck02		= TriggerPackage:GetScoreObserver( 50, 220, NI_HP_Full, NI_SCORE_COMPLETED02, TXT_Weapon_MindEnergy_12, 1 );


	Dummy_ScoreCheck01	 	= TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED01, 0, TXT_Weapon_MindEnergy_07 , "");
	Dummy_ScoreCheck02	 	= TriggerPackage:GetTextViewerEx(50, 220, NI_SCORE_COMPLETED02, 0, TXT_Weapon_MindEnergy_13, "");


	NarOK01			= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0 );
	NarOK02			= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02, 0, 0, 0, 0 );

	-- 캐릭터스폰
	DummyCharacterSpawn01	= TriggerPackage:GetSpawnHelper( SPAWN_NOTIFY, SPAWN_ALLIANCE_FEMALE, "trg_dummy", NI_Text_SpwanNotify01_off, NI_Des, 0, 0, true );
												TriggerPackage:SetSpawnHelperHP( DummyCharacterSpawn01, 100, 10 );
												TriggerPackage:SetSpawnHelperSubTriger( DummyCharacterSpawn01, NI_HP_Full, 0, 0 );



	-- ( in_종료이벤트, out_발생이벤트, 감시할공격, 이벤트를 전달받을 특정트리거 )
	ActorAttackCheck01			= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01, NI_ATTACK_1_MIND_ENERGY, "ATTACK_1_MIND_ENERGY", ScoreCheck01 );


	RegActorAttackCheck01	= TriggerPackage:GetObserverRegister( NI_Text_Welcom03_OFF, ActorAttackCheck01);

	RegScoreCheck02	= TriggerPackage:GetObserverRegister( NI_Text_SpwanNotify01_off, ScoreCheck02);

	


	-- 다이나믹 오브젝트 안보이게 처리

	BlastObject01 = TriggerPackage:GetDeployTutoBlastObject( "blast2_block100", "mapeffect_blast_box.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 500,5000,3,0 );
							TriggerPackage:SetupDeployTutoBlastObject( BlastObject01, 0, NI_null, NI_START, 0, 0 );

	BlastObject02 = TriggerPackage:GetDeployTutoBlastObject( "blast2_block100_2", "mapeffect_blast_box.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 500,5000,3,0 );
							TriggerPackage:SetupDeployTutoBlastObject( BlastObject01, 0, NI_null, NI_START, 0, 0 );
	
	
	InviBox								= TriggerPackage:GetDeployTutoBlastObject( "blast2_invibox", "eff_target_green.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 500,5000,3,0 );
												TriggerPackage:SetupDeployTutoBlastObject( InviBox, 0, NI_null, NI_START, 0, 0 );	
	BlastObject02AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_null, InviBox, 0 );

	InviBox02							= TriggerPackage:GetDeployTutoBlastObject( "blast2_invibox02", "eff_target_green.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 500,5000,3,0 );
												TriggerPackage:SetupDeployTutoBlastObject( InviBox02, 0, NI_null, NI_START, 0, 0 );
	BlastObject03AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_null, InviBox02, 0 );
	
	InviBox03							= TriggerPackage:GetDeployTutoBlastObject( "blast2_invibox03", "eff_target_green.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 500,5000,3,0 );
												TriggerPackage:SetupDeployTutoBlastObject( InviBox03, 0, NI_null, NI_START, 0, 0 );
	BlastObject04AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_null, InviBox03, 0 );
	
	InviBox04							= TriggerPackage:GetDeployTutoBlastObject( "blast2_invibox04", "eff_target_green.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 500,5000,3,0 );
												TriggerPackage:SetupDeployTutoBlastObject( InviBox04, 0, NI_null, NI_START, 0, 0 );
	BlastObject05AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_null, InviBox04, 0 );
	
	Arrow_Gate_off_01				= TriggerPackage:GetSceneVisible( true, "lc_arrow.scn", NI_START);
	Arrow_Gate_on_01				= TriggerPackage:GetSceneVisible( false, "lc_arrow.scn", NI_SCORE_COMPLETED02);
	
	GateOpen_Step01				= TriggerPackage:GetCollisionChecker("trg_arrive_01", NI_CONGRATULATION, false);
	RegGateOpen_Step01			= TriggerPackage:GetObserverRegister( NI_Text_CompleteTip02_off, GateOpen_Step01);

	Congraturation_Step01			= TriggerPackage:GetTutorialComplete( NI_CONGRATULATION );

	-- 튜토리얼 공통 종결 부분
	
	MessageBox_Step01			= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, 0, 11 );

			
	-- 등록

	MindEnergyLicense:Register(ActorSpawn);

	MindEnergyLicense:Register(MindEnergyLoad);

	MindEnergyLicense:Register(Timer_TextStart);
	MindEnergyLicense:Register(Timer_Text_Welcom01_Delay);
	MindEnergyLicense:Register(Timer_Text_Welcom02_Delay);
	MindEnergyLicense:Register(Timer_Text_Welcom03_Delay);
	
	MindEnergyLicense:Register(Timer_Text_CompleteTip01_on);
	MindEnergyLicense:Register(Timer_Text_CompleteTip01_off);

	MindEnergyLicense:Register(Timer_Text_SpwanNotify01_off);

	MindEnergyLicense:Register(Timer_Text_CompleteTip02_off);

	MindEnergyLicense:Register(KeyPermiter01);
	MindEnergyLicense:Register(KeyPermiter02);
	MindEnergyLicense:Register(KeyPermiter03);
	MindEnergyLicense:Register(KeyPermiter04);
	MindEnergyLicense:Register(KeyPermiter05);
	MindEnergyLicense:Register(KeyPermiter06);
	
	MindEnergyLicense:Register(Text_Welcom01);
	MindEnergyLicense:Register(Text_Welcom02);
	MindEnergyLicense:Register(Text_Welcom03);
	
	MindEnergyLicense:Register(Text_Guide01);
	MindEnergyLicense:Register(Text_Guide02);
	
	MindEnergyLicense:Register(Text_CompleteTip01);
	MindEnergyLicense:Register(Text_CompleteTip02);

	MindEnergyLicense:Register(Text_SpwanNotify01);
		
	MindEnergyLicense:Register(Text_TestSuccess);

--	MindEnergyLicense:Register(ScoreCheck01);	


	MindEnergyLicense:Register(Dummy_ScoreCheck01);
	MindEnergyLicense:Register(Dummy_ScoreCheck02);

	MindEnergyLicense:Register(NarOK01);
	MindEnergyLicense:Register(NarOK02);

	MindEnergyLicense:Register(DummyCharacterSpawn01);
	
	MindEnergyLicense:Register(RegActorAttackCheck01);
	MindEnergyLicense:Register(RegScoreCheck02);	

	MindEnergyLicense:Register(Arrow_Gate_off_01);
	MindEnergyLicense:Register(Arrow_Gate_on_01);

	MindEnergyLicense:Register(RegGateOpen_Step01);
	MindEnergyLicense:Register(Congraturation_Step01);
	
	MindEnergyLicense:Register(MessageBox_Step01);

	MindEnergyLicense:Register(BlastObject01);
	MindEnergyLicense:Register(BlastObject02);
	MindEnergyLicense:Register(InviBox);
	MindEnergyLicense:Register(BlastObject02AnimController);
	MindEnergyLicense:Register(InviBox02);
	MindEnergyLicense:Register(BlastObject03AnimController);
	MindEnergyLicense:Register(InviBox03);
	MindEnergyLicense:Register(BlastObject04AnimController);
	MindEnergyLicense:Register(InviBox04);
	MindEnergyLicense:Register(BlastObject05AnimController);


	TutorialSystem:AddStage( 0, MindEnergyLicense );


	
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
NI_HP_Full								= 212
NI_Rebirth01							= 213
NI_HP_Full01							= 214
NI_Rebirth02							= 215
NI_HP_Full02							= 216


function OnMindEnergyLicenseTestStep02()
	
	TestStage									= TutorialSystem:GetEmptyStage();

		-- 캐릭터및 마인드에너지 스폰
	-- ( 트리거 발동시점, 스폰타입, 스폰할트리거박스, 시작이벤트(SPAWN_NOTIFY 일때만 적용됨), 발생이벤트( SPAWN_FOCUS_ACTOR 가 아닐경우에만 적용됨 ) )
	ActorSpawn 								= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true );

	DummyChracterSpawn02				= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_ALLIANCE_FEMALE, "trg_dummy", 0, NI_HP_Full, 0, 0, true );
													TriggerPackage:SetSpawnHelperHP( DummyChracterSpawn02, 100, 10 );
													TriggerPackage:SetSpawnHelperSubTriger( DummyChracterSpawn02, NI_HP_Full, 0, 0 );
													TriggerPackage:SetTriggerID( DummyChracterSpawn02, 1004 );
	

	ActorMoveController01					= TriggerPackage:GetActorMoveController( 1004, NI_TestStart_Step02, 0, 0, true );
												TriggerPackage:SetActorMoveControllerWayPoint( ActorMoveController01, "trg_way01" )
												TriggerPackage:SetActorMoveControllerWayPoint( ActorMoveController01, "trg_way02" )
												TriggerPackage:SetActorMoveControllerWayPoint( ActorMoveController01, "trg_way03" )
												TriggerPackage:SetActorMoveControllerWayPoint( ActorMoveController01, "trg_way04" )

	DummyChracterSpawn03				= TriggerPackage:GetSpawnHelper( SPAWN_NOTIFY, SPAWN_ALLIANCE_FEMALE, "trg_dummy", NI_Rebirth01, NI_HP_Full01, 0, 0, true );
													TriggerPackage:SetSpawnHelperHP( DummyChracterSpawn03, 100, 10 );
													TriggerPackage:SetSpawnHelperSubTriger( DummyChracterSpawn03, NI_HP_Full01, 0, 0 );
														TriggerPackage:SetTriggerID( DummyChracterSpawn03, 1005 );
	
	ActorMoveController02					= TriggerPackage:GetActorMoveController( 1005, NI_Rebirth01, 0, 0, true );
											  TriggerPackage:SetActorMoveControllerWayPoint( ActorMoveController02, "trg_way01" )
											  TriggerPackage:SetActorMoveControllerWayPoint( ActorMoveController02, "trg_way02" )
											  TriggerPackage:SetActorMoveControllerWayPoint( ActorMoveController02, "trg_way03" )
											  TriggerPackage:SetActorMoveControllerWayPoint( ActorMoveController02, "trg_way04" )


	DummyChracterSpawn04				= TriggerPackage:GetSpawnHelper( SPAWN_NOTIFY, SPAWN_ALLIANCE_FEMALE, "trg_dummy", NI_Rebirth02, NI_HP_Full02, 0, 0, true );
												TriggerPackage:SetSpawnHelperHP( DummyChracterSpawn04, 100, 10 );
												TriggerPackage:SetSpawnHelperSubTriger( DummyChracterSpawn04, NI_HP_Full02, 0, 0 );
														TriggerPackage:SetTriggerID( DummyChracterSpawn04, 1006 );
	
	ActorMoveController03				= TriggerPackage:GetActorMoveController( 1006, NI_Rebirth02, 0, 0, true );
											  TriggerPackage:SetActorMoveControllerWayPoint( ActorMoveController03, "trg_way01" )
											  TriggerPackage:SetActorMoveControllerWayPoint( ActorMoveController03, "trg_way02" )
											  TriggerPackage:SetActorMoveControllerWayPoint( ActorMoveController03, "trg_way03" )
											  TriggerPackage:SetActorMoveControllerWayPoint( ActorMoveController03, "trg_way04" )


	Timer_Dummy_Rebirth				= TriggerPackage:GetEventAlram( NI_HP_Full, NI_Rebirth01, 5000, 0, false);
	Timer_Trans_Notify01				= TriggerPackage:GetEventAlram( NI_HP_Full01, NI_HP_Full, 2000, 0, false);
	Timer_Trans_Notify02				= TriggerPackage:GetEventAlram( NI_HP_Full01, NI_Rebirth02, 5000, 0, false);
	Timer_Trans_Notify03				= TriggerPackage:GetEventAlram( NI_HP_Full02, NI_HP_Full, 2000, 0, false);

	Arrow_Gate_off_02				= TriggerPackage:GetSceneVisible( true, "lc_arrow.scn", NI_Start_Step02);

	-- 아이템지급
	-- ( 장착할슬롯, 아이템아이디, in_시작이벤트 )
	MindEnergyLoad									= TriggerPackage:GetItemDuplicator( 0, 2060001, 0, 0 );
	

	Timer_StartStep02						= TriggerPackage:GetEventAlram( 0, NI_Start_Step02, 0, 0, false );
	Timer_Text_Step02Start					= TriggerPackage:GetEventAlram( NI_Start_Step02, NI_Text_Step02Start_off, 5000, 0, false );
	Timer_ReadyStep02						= TriggerPackage:GetEventAlram( NI_Text_Step02Start_off, NI_TestStart_Step02, 5000, 0, false );

	Timer_Text_TestStartStep02_off		= TriggerPackage:GetEventAlram( NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, 2000, 0, false );
	
	Timer_End									= TriggerPackage:GetEventAlram( NI_TestStart_Step02, NI_Fail, 60000, NI_Success, false);
														TriggerPackage:SetShowEventAlram(Timer_End, 470, 50, TXT_Weapon_MindEnergy_14, 1 );

	Timer_Text_TestFail_off				= TriggerPackage:GetEventAlram( NI_Fail, NI_Text_TestFail_OFF, 3000, 0, false);
	Timer_Text_TestSuccess_off			= TriggerPackage:GetEventAlram( NI_Success, NI_Text_TestSuccess_OFF, 10000, 0, false);

	Hold_Actor_Step02_01					= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Start_Step02, NI_Start_Step02, false );
	Realse_Actor_Step02_01				= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_TestStart_Step02, NI_TestStart_Step02, true );

	Text_Step02Start							= TriggerPackage:GetTextViewerExA( 512, 250, NI_Start_Step02, NI_Text_Step02Start_off, TXT_Weapon_MindEnergy_15, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_Step02Ready						= TriggerPackage:GetTextViewerExA( 512, 250, NI_Text_Step02Start_off, NI_TestStart_Step02, TXT_Weapon_MindEnergy_16, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_TestStartStep02					= TriggerPackage:GetTextViewerExA( 512, 250, NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, TXT_Weapon_MindEnergy_17, "Resources/GUI/New/TutorialImage_1.gui" , true, false );

	Text_Guide_Step02_01					= TriggerPackage:GetTextViewerEx(600, 500, NI_TestStart_Step02, NI_Text_TestSuccess_OFF, TXT_Weapon_MindEnergy_18, "Resources/GUI/New/TutorialImage_1.gui");
	
	Text_TestFail								= TriggerPackage:GetTextViewerExA( 512, 250, NI_Fail, NI_Text_TestFail_OFF, TXT_Weapon_MindEnergy_19, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_TestSuccess						= TriggerPackage:GetTextViewerExA( 512, 200, NI_Success, NI_Text_TestSuccess_OFF, TXT_Weapon_MindEnergy_20, "Resources/GUI/New/TutorialImage_1.gui" , true, false );

	
	-- ( 좌표X, 좌표Y, in_발생이벤트, out_완료이벤트, 글자포멧, 최종점수 )
	ScoreCheck01				= TriggerPackage:GetScoreObserver( 50, 200, NI_HP_Full, NI_Success, TXT_Weapon_MindEnergy_21, 3 );

	Dummy_ScoreCheck01	 	= TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED03, 0, TXT_Weapon_MindEnergy_22, "");

	
	
	
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
	InPutLicense								=	TriggerPackage:GetItemLicensed(NI_Success, 11);

	Hold_Actor_Fail							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Fail, NI_Fail, false );
	NarTimeIsUP								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\inter_timeover.ogg", "", NI_Fail, 0, 0, 0, 0 );
	NarLostGame								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_lost_the_match1.ogg", "", NI_Fail, 0, 0, 0, 0 );
	
	MessageBox_Step02					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, NI_Text_TestFail_OFF, 11 );
	MessageBox_Step03					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, 0, 11 );
	TestSuccessEnd						= TriggerPackage:GetTutorialComplete( NI_Text_TestSuccess_OFF );	

	-- 등록

	TestStage:Register(ActorSpawn);

	TestStage:Register(DummyChracterSpawn02);
	TestStage:Register(ActorMoveController01);

	TestStage:Register(DummyChracterSpawn03);
	TestStage:Register(ActorMoveController02);

	TestStage:Register(DummyChracterSpawn04);
	TestStage:Register(ActorMoveController03);

	TestStage:Register(Timer_Dummy_Rebirth);
	TestStage:Register(Timer_Trans_Notify01);
	TestStage:Register(Timer_Trans_Notify02);
	TestStage:Register(Timer_Trans_Notify03);

	TestStage:Register(Arrow_Gate_off_02);

	TestStage:Register(MindEnergyLoad);

	TestStage:Register(Timer_StartStep02);
	TestStage:Register(Timer_Text_Step02Start);
	TestStage:Register(Timer_ReadyStep02);

	TestStage:Register(Timer_Text_TestStartStep02_off);

	TestStage:Register(Timer_End);

	TestStage:Register(Timer_Text_TestFail_off);
	TestStage:Register(Timer_Text_TestSuccess_off);

	TestStage:Register(Hold_Actor_Step02_01);
	TestStage:Register(Realse_Actor_Step02_01);

	TestStage:Register(Text_Step02Start);
	TestStage:Register(Text_Step02Ready);
	TestStage:Register(Text_TestStartStep02);

	TestStage:Register(Text_Guide_Step02_01);

	TestStage:Register(Text_TestFail);
	TestStage:Register(Text_TestSuccess);

	TestStage:Register(ScoreCheck01);
	TestStage:Register(Dummy_ScoreCheck01);



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
