require "Resources/Script/KeyMacro.lua"

-- GetSpawnHelper용 상수

SPAWN_FOCUS_ACTOR								= 0
SPAWN_ENERMY_SENTRYGUN							= 1
SPAWN_ENERMY_SENTYFORCE							= 2
SPAWN_TRIGGER_BEGIN								= 0
SPAWN_NOTIFY									= 1

-- Notify ID이벤트 메세지
NI_START										= 101
NI_Text_Welcom01_OFF							= 102
NI_Text_Welcom02_OFF							= 103
NI_Text_Welcom03_OFF							= 104
-- NI_COOUNTERSWORD_LOAD						= 0 사용하는 곳이 없음
-- NI_UNLOCK_ACTOR								= 0 사용하는 곳이 없음
NI_SCORE_COMPLETED01							= 105
NI_ATTACK_WEAK_COUNTER_SWORD					= 106
NI_TXTON01										= 107
NI_Text_CompleteTip01_OFF						= 108
NI_TXTON02										= 109
NI_Text_CompleteTip02_OFF						= 110
NI_TXTON03										= 111
NI_Text_CompleteTip03_OFF						= 112
NI_SCORE_COMPLETED02							= 113
NI_ATTACK_AFTERDASH4_COUNTER_SWORD				= 114
NI_SCORE_COMPLETED03							= 115
NI_ATTACK_STRONG_COUNTER_SWORD					= 116
NI_SCORE_COMPLETED04							= 117
NI_ATTACK_JUMP_COUNTER_SWORD					= 118
NI_SCORE_COMPLETED05							= 119
NI_ATTACK_COUNTERATTACK_COUNTER_SWORD			= 120
NI_CONGRATULATION								= 121
NI_Text_ClearStep01_OFF							= 122
NI_ESC_CHECK									= 123

-- 텍스트
LoadStringTable( "Language/Script/challenge_string_table.x7" );

TXT_Weapon_CounterSword_01=GetString( "TXT_Weapon_CounterSword_01" );
TXT_Weapon_CounterSword_02=GetString( "TXT_Weapon_CounterSword_02" );
TXT_Weapon_CounterSword_03=GetString( "TXT_Weapon_CounterSword_03" );
TXT_Weapon_CounterSword_04=GetString( "TXT_Weapon_CounterSword_04" );
TXT_Weapon_CounterSword_05=GetString( "TXT_Weapon_CounterSword_05" );
TXT_Weapon_CounterSword_06=GetString( "TXT_Weapon_CounterSword_06" );
TXT_Weapon_CounterSword_07=GetString( "TXT_Weapon_CounterSword_07" );
TXT_Weapon_CounterSword_08=GetString( "TXT_Weapon_CounterSword_08" );
TXT_Weapon_CounterSword_09=GetString( "TXT_Weapon_CounterSword_09" );
TXT_Weapon_CounterSword_10=GetString( "TXT_Weapon_CounterSword_10" );
TXT_Weapon_CounterSword_11=GetString( "TXT_Weapon_CounterSword_11" );
TXT_Weapon_CounterSword_12=GetString( "TXT_Weapon_CounterSword_12" );
TXT_Weapon_CounterSword_13=GetString( "TXT_Weapon_CounterSword_13" );
TXT_Weapon_CounterSword_14=GetString( "TXT_Weapon_CounterSword_14" );
TXT_Weapon_CounterSword_15=GetString( "TXT_Weapon_CounterSword_15" );
TXT_Weapon_CounterSword_16=GetString( "TXT_Weapon_CounterSword_16" );
TXT_Weapon_CounterSword_17=GetString( "TXT_Weapon_CounterSword_17" );
TXT_Weapon_CounterSword_18=GetString( "TXT_Weapon_CounterSword_18" );
TXT_Weapon_CounterSword_19=GetString( "TXT_Weapon_CounterSword_19" );
TXT_Weapon_CounterSword_20=GetString( "TXT_Weapon_CounterSword_20" );
TXT_Weapon_CounterSword_21=GetString( "TXT_Weapon_CounterSword_21" );
TXT_Weapon_CounterSword_22=GetString( "TXT_Weapon_CounterSword_22" );
TXT_Weapon_CounterSword_23=GetString( "TXT_Weapon_CounterSword_23" );
TXT_Weapon_CounterSword_24=GetString( "TXT_Weapon_CounterSword_24" );
TXT_Weapon_CounterSword_25=GetString( "TXT_Weapon_CounterSword_25" );
TXT_Weapon_CounterSword_26=GetString( "TXT_Weapon_CounterSword_26" );
TXT_Weapon_CounterSword_27=GetString( "TXT_Weapon_CounterSword_27" );
TXT_Weapon_CounterSword_28=GetString( "TXT_Weapon_CounterSword_28" );
TXT_Weapon_CounterSword_29=GetString( "TXT_Weapon_CounterSword_29" );
TXT_Weapon_CounterSword_30=GetString( "TXT_Weapon_CounterSword_30" );
TXT_Weapon_CounterSword_31=GetString( "TXT_Weapon_CounterSword_31" );
TXT_Weapon_CounterSword_32=GetString( "TXT_Weapon_CounterSword_32" );
TXT_Weapon_CounterSword_33=GetString( "TXT_Weapon_CounterSword_33" );
                                                   
ClearStringTable();   

-- <------------------- GUIViewType -------------------> --
-- TutorialGUISet.h 내용과 같게..

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

--"ATTACK_2_COUNTER_SWORD"
--"ATTACK_COUNTERATTACK_COUNTER_SWORD"
--"ATTACK_WEAK_COUNTER_SWORD"
--"ATTACK_AFTERDASH2_COUNTER_SWORD"
--"ATTACK_AFTERDASH3_COUNTER_SWORD"
--"ATTACK_AFTERDASH4_COUNTER_SWORD"
--"ATTACK_JUMP_COUNTER_SWORD"

-- <----------------- 튜토리얼 초기화 -----------------> --
function InitPvETrigger()

	PvESystem:SetTotalStage( 1 );	-- 생성할 step의 갯수를 설정
	
	OnCounterSwordLicenseTestStep01		(); -- step1 생성

end
-- <---------------------------------------------------> --

function OnCounterSwordLicenseTestStep01()
	
	CounterSwordLicense = PvESystem:GetEmptyStage();	

	Timer_TextStart						= TriggerPackage:GetEventAlram( 0, NI_START, 0, 0, false );
	Timer_Text_Welcom01_Delay			= TriggerPackage:GetEventAlram( NI_START, NI_Text_Welcom01_OFF, 5000, 0, false );
	Timer_Text_Welcom02_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 3000, 0, false );
	Timer_Text_Welcom03_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false );
	
	Timer_Text_CompleteTip01_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED01, NI_TXTON01, 500, 0, false);
	Timer_Text_CompleteTip01			= TriggerPackage:GetEventAlram( NI_TXTON01, NI_Text_CompleteTip01_OFF, 3000, 0, false );
	
	Timer_Text_CompleteTip02_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED03, NI_TXTON02, 500, 0, false);
	Timer_Text_CompleteTip02			= TriggerPackage:GetEventAlram( NI_TXTON02, NI_Text_CompleteTip02_OFF, 3000, 0, false );	

	Timer_Text_CompleteTip03_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED05, NI_TXTON03, 500, 0, false);
	Timer_Text_CompleteTip03			= TriggerPackage:GetEventAlram( NI_TXTON03, NI_Text_CompleteTip03_OFF, 3000, 0, false );	
	
	-- ( 삭제 이벤트 )
	WeaponSlotRemoveAll					= TriggerPackage:GetWeaponSlotRemoveAll( NI_START );	
	
	-- ( 드랍이벤트, 무기아이템키, X, Y, Z )
	Weapon_Drop_01 						= TriggerPackage:GetWeaponDrop( NI_Text_Welcom02_OFF, 2000002, 6, 671, -2199 );	

	Timer_Text_ClearStep01_off			= TriggerPackage:GetEventAlram( NI_Text_CompleteTip03_OFF, NI_Text_ClearStep01_OFF, 6000, 0, true );

		-- 점수관리
	-- ( 좌표X, 좌표Y, in_발생이벤트, out_완료이벤트, 글자포멧, 최종점수 )
	ScoreMng01							= TriggerPackage:GetScoreObserver( 50, 200, NI_ATTACK_WEAK_COUNTER_SWORD, NI_SCORE_COMPLETED01, TXT_Weapon_CounterSword_02, 3 );
	ScoreMng02							= TriggerPackage:GetScoreObserver( 50, 220, NI_ATTACK_AFTERDASH4_COUNTER_SWORD, NI_SCORE_COMPLETED02, TXT_Weapon_CounterSword_04, 3 );
	ScoreMng03							= TriggerPackage:GetScoreObserver( 50, 240, NI_ATTACK_STRONG_COUNTER_SWORD, NI_SCORE_COMPLETED03, TXT_Weapon_CounterSword_06, 3 );
	ScoreMng04							= TriggerPackage:GetScoreObserver( 50, 260, NI_ATTACK_JUMP_COUNTER_SWORD, NI_SCORE_COMPLETED04, TXT_Weapon_CounterSword_08, 3 );
	ScoreMng05							= TriggerPackage:GetScoreObserver( 50, 280, NI_ATTACK_COUNTERATTACK_COUNTER_SWORD, NI_SCORE_COMPLETED05, TXT_Weapon_CounterSword_10, 3 );
		
	-- 텍스트 보이게 설정
	-- ( 좌표x, 좌표y, in_시작이벤트, in_종료할이벤트, 표시할텍스트 )
	Text_Welcom01						= TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Weapon_CounterSword_16, "Resources/GUI/New/TutorialImage_1.gui", true, false );
	Text_Welcom02						= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Weapon_CounterSword_17, "Resources/GUI/New/TutorialImage_1.gui", true, false );
	Text_Welcom03						= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Weapon_CounterSword_18, "Resources/GUI/New/TutorialImage_1.gui", true, false );
	
	Text_Guide_01						= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_SCORE_COMPLETED01, TXT_Weapon_CounterSword_01 , "Resources/GUI/New/TutorialImage_1.gui");
	Text_Guide_02						= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_OFF, NI_SCORE_COMPLETED02, TXT_Weapon_CounterSword_03 , "Resources/GUI/New/TutorialImage_1.gui");
	Text_Guide_03						= TriggerPackage:GetTextViewerEx(600, 500, NI_SCORE_COMPLETED02, NI_SCORE_COMPLETED03, TXT_Weapon_CounterSword_05 , "Resources/GUI/New/TutorialImage_1.gui");
	Text_Guide_04						= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip02_OFF, NI_SCORE_COMPLETED04, TXT_Weapon_CounterSword_07 , "Resources/GUI/New/TutorialImage_1.gui");
	Text_Guide_05						= TriggerPackage:GetTextViewerEx(600, 500, NI_SCORE_COMPLETED04, NI_SCORE_COMPLETED05, TXT_Weapon_CounterSword_09 , "Resources/GUI/New/TutorialImage_1.gui");

	Text_ClearStep01					= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip03_OFF, 0, TXT_Weapon_CounterSword_19, "Resources/GUI/New/TutorialImage_1.gui" );

	Text_CompleteTip01					= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_OFF, TXT_Weapon_CounterSword_20, "Resources/GUI/New/TutorialImage_0.gui", true, false );
	Text_CompleteTip02					= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED03, NI_Text_CompleteTip02_OFF, TXT_Weapon_CounterSword_21, "Resources/GUI/New/TutorialImage_0.gui", true, false );
	Text_CompleteTip03					= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED05, NI_Text_CompleteTip03_OFF, TXT_Weapon_CounterSword_22, "Resources/GUI/New/TutorialImage_0.gui", true, false );
	
	-- 엑터 공격 감시
	-- ( in_종료이벤트, out_발생이벤트, 감시할공격, 이벤트를 전달받을 특정트리거 )
		
	ActorAttackEvent01					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01, NI_ATTACK_WEAK_COUNTER_SWORD, "ATTACK_WEAK_COUNTER_SWORD", ScoreMng01 );
	ActorAttackEvent02					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED02, NI_ATTACK_AFTERDASH4_COUNTER_SWORD, "ATTACK_AFTERDASH4_COUNTER_SWORD", ScoreMng02 );
	ActorAttackEnvet03					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED03, NI_ATTACK_STRONG_COUNTER_SWORD, "ATTACK_COUNTERATTACK_COUNTER_SWORD", ScoreMng03 );
	ActorAttackEnvet04					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED04, NI_ATTACK_JUMP_COUNTER_SWORD, "ATTACK_JUMP_COUNTER_SWORD", ScoreMng04 );
	ActorAttackEnvet05					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED05, NI_ATTACK_COUNTERATTACK_COUNTER_SWORD, "ATTACK_2_COUNTER_SWORD", ScoreMng05 );

	RegActorAttackEvent01				= TriggerPackage:GetObserverRegister( NI_Text_Welcom03_OFF, ActorAttackEvent01);
	RegActorAttackEvent02				= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED01, ActorAttackEvent02);
	RegActorAttackEvent03				= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED02, ActorAttackEnvet03);
	RegActorAttackEvent04				= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED03, ActorAttackEnvet04);
	RegActorAttackEvent05				= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED04, ActorAttackEnvet05);
	
--	GateOpen_Step01						= TriggerPackage:GetCollisionChecker("trg_arrive_01", NI_CONGRATULATION, false);
--	RegGateOpen_Step01					= TriggerPackage:GetObserverRegister( NI_Text_ClearStep01_OFF, GateOpen_Step01);

	NarOK01								= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0 );
	NarOK02								= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02, 0, 0, 0, 0 );
	NarOK03								= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED03, 0, 0, 0, 0 );
	NarOK04								= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED04, 0, 0, 0, 0 );
	NarOK05								= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED05, 0, 0, 0, 0 );
	
--	Hit_Box01_off						= TriggerPackage:GetSceneVisible( true, "lc_countersword_hit.scn", NI_START);
	
--	Arrow_Gate_off_01					= TriggerPackage:GetSceneVisible( true, "lc_countersword_arrow.scn", NI_START);
--	Arrow_Gate_on_01					= TriggerPackage:GetSceneVisible( false, "lc_countersword_arrow.scn", NI_Text_CompleteTip03_OFF);

--	MessageBox_Step01					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, 0, 2 );

	PressEscChecker						= TriggerPackage:GetKeyPressCheckerEx(NI_Text_CompleteTip03_OFF, NI_ESC_CHECK, IK_ESCAPE, NI_ESC_CHECK);
	Mission_Prize						= TriggerPackage:GetChallengePrize	( NI_ESC_CHECK, NI_CONGRATULATION );
	Congraturation_Step01				= TriggerPackage:GetChallengeComplete( NI_CONGRATULATION );

	
	-- 트리거 등록	
	
--	CounterSwordLicense:Register( ActorSpawn );
--	CounterSwordLicense:Register( CounterSwordLoad );

--	CounterSwordLicense:Register( KeyPermiter01 );
--	CounterSwordLicense:Register( KeyPermiter02 );
--	CounterSwordLicense:Register( KeyPermiter03);
--	CounterSwordLicense:Register( KeyPermiter04);
--	CounterSwordLicense:Register( KeyPermiter05);
--	CounterSwordLicense:Register( KeyPermiter06);
--	CounterSwordLicense:Register( KeyPermiter07);

	CounterSwordLicense:Register( RegActorAttackEvent01 );
	CounterSwordLicense:Register( RegActorAttackEvent02 );
	CounterSwordLicense:Register( RegActorAttackEvent03 );
	CounterSwordLicense:Register( RegActorAttackEvent04 );
	CounterSwordLicense:Register( RegActorAttackEvent05 );
--	CounterSwordLicense:Register( RegGateOpen_Step01 );

	CounterSwordLicense:Register( NarOK01 );
	CounterSwordLicense:Register( NarOK02 );
	CounterSwordLicense:Register( NarOK03 );
	CounterSwordLicense:Register( NarOK04 );
	CounterSwordLicense:Register( NarOK05 );

	CounterSwordLicense:Register(Timer_Text_Welcom01_Delay);
	CounterSwordLicense:Register(Timer_Text_Welcom02_Delay);
	CounterSwordLicense:Register(Timer_Text_Welcom03_Delay);
	CounterSwordLicense:Register(Timer_Text_CompleteTip01_on);
	CounterSwordLicense:Register(Timer_Text_CompleteTip02_on);
	CounterSwordLicense:Register(Timer_Text_CompleteTip03_on);
	CounterSwordLicense:Register(Timer_Text_ClearStep01_off);

	CounterSwordLicense:Register(WeaponSlotRemoveAll);
	CounterSwordLicense:Register(Weapon_Drop_01);
	
	CounterSwordLicense:Register(Text_Welcom01);
	CounterSwordLicense:Register(Text_Welcom02);
	CounterSwordLicense:Register(Text_Welcom03);

	CounterSwordLicense:Register(Text_Guide_01);
	CounterSwordLicense:Register(Text_Guide_02);
	CounterSwordLicense:Register(Text_Guide_03);
	CounterSwordLicense:Register(Text_Guide_04);
	CounterSwordLicense:Register(Text_Guide_05);

	CounterSwordLicense:Register(Text_ClearStep01);

	CounterSwordLicense:Register( Timer_Text_CompleteTip01 );
	CounterSwordLicense:Register( Timer_Text_CompleteTip02 );
	CounterSwordLicense:Register( Timer_Text_CompleteTip03 );
	CounterSwordLicense:Register( Text_CompleteTip01 );
	CounterSwordLicense:Register( Text_CompleteTip02 );
	CounterSwordLicense:Register( Text_CompleteTip03 );
	CounterSwordLicense:Register(Timer_TextStart);

--	CounterSwordLicense:Register(Hit_Box01_off);
	
--	CounterSwordLicense:Register(Arrow_Gate_off_01);
--	CounterSwordLicense:Register(Arrow_Gate_on_01);
	
	--CounterSwordLicense:Register(GateOpen_Step01);
	--CounterSwordLicense:Register(MessageBox_Step01);
	CounterSwordLicense:Register(PressEscChecker);	
	CounterSwordLicense:Register(Mission_Prize);
	CounterSwordLicense:Register(Congraturation_Step01);
	
	PvESystem:AddStage( 0, CounterSwordLicense );


end

