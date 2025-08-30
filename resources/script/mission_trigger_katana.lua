require "Resources/Script/KeyMacro.lua"

-- GetSpawnHelper용 상수

SPAWN_FOCUS_ACTOR							= 0
SPAWN_ENERMY_SENTRYGUN						= 1
SPAWN_ENERMY_SENTYFORCE						= 2
SPAWN_TRIGGER_BEGIN							= 0
SPAWN_NOTIFY								= 1

-- Notify ID이벤트 메세지
NI_START									= 101
NI_Text_Welcom01_OFF						= 102
NI_Text_Welcom02_OFF						= 103
NI_Text_Welcom03_OFF						= 104
-- NI_COOUNTERSWORD_LOAD					= 000 사용하지 않음
-- NI_UNLOCK_ACTOR							= 000 사용하지 않음
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
NI_Text_ClearStep01_OFF						= 122
NI_ESC_CHECK								= 123

-- 텍스트
LoadStringTable( "Language/Script/challenge_string_table.x7" );

TXT_Weapon_KATANA_01=GetString( "TXT_Weapon_KATANA_01" );
TXT_Weapon_KATANA_02=GetString( "TXT_Weapon_KATANA_02" );
TXT_Weapon_KATANA_03=GetString( "TXT_Weapon_KATANA_03" );
TXT_Weapon_KATANA_04=GetString( "TXT_Weapon_KATANA_04" );
TXT_Weapon_KATANA_05=GetString( "TXT_Weapon_KATANA_05" );
TXT_Weapon_KATANA_06=GetString( "TXT_Weapon_KATANA_06" );
TXT_Weapon_KATANA_07=GetString( "TXT_Weapon_KATANA_07" );
TXT_Weapon_KATANA_08=GetString( "TXT_Weapon_KATANA_08" );
TXT_Weapon_KATANA_09=GetString( "TXT_Weapon_KATANA_09" );
TXT_Weapon_KATANA_10=GetString( "TXT_Weapon_KATANA_10" );
TXT_Weapon_KATANA_11=GetString( "TXT_Weapon_KATANA_11" );
TXT_Weapon_KATANA_12=GetString( "TXT_Weapon_KATANA_12" );
TXT_Weapon_KATANA_13=GetString( "TXT_Weapon_KATANA_13" );
TXT_Weapon_KATANA_14=GetString( "TXT_Weapon_KATANA_14" );
TXT_Weapon_KATANA_15=GetString( "TXT_Weapon_KATANA_15" );
TXT_Weapon_KATANA_16=GetString( "TXT_Weapon_KATANA_16" );
TXT_Weapon_KATANA_17=GetString( "TXT_Weapon_KATANA_17" );
TXT_Weapon_KATANA_18=GetString( "TXT_Weapon_KATANA_18" );
TXT_Weapon_KATANA_19=GetString( "TXT_Weapon_KATANA_19" );
TXT_Weapon_KATANA_20=GetString( "TXT_Weapon_KATANA_20" );
TXT_Weapon_KATANA_21=GetString( "TXT_Weapon_KATANA_21" );
TXT_Weapon_KATANA_22=GetString( "TXT_Weapon_KATANA_22" );

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

--ATTACK_JUMP_KATANA_A_SWORD 			카타나 점프 공격
--ATTACK_AFTERDASH1_KATANA_A_SWORD		카타나 1 타
--ATTACK_AFTERDASH2_KATANA_A_SWORD		카타나 2 타
--ATTACK_AFTERDASH3_KATANA_A_SWORD		카타나 3 타
--ATTACK_STRONG_KATANA_A_SWORD			카타나 강타
--ATTACK2_BACKDASH_KATANA_A_SWORD		카타나 특수기 백대쉬
--ATTACK2_CHARGE_KATANA_A_SWORD			카타나 특수기 차지
--ATTACK2_CHARGEATTACK_KATANA_A_SWORD	카타나 특수기 대쉬

-- <----------------- PvE 초기화 -----------------> --
function InitPvETrigger()

	PvESystem:SetTotalStage( 1 );	-- 생성할 step의 갯수를 설정
	
	OnKatanaLicenseTestStep01		(); -- step1 생성

end
-- <---------------------------------------------------> --

function OnKatanaLicenseTestStep01()
	
	KatanaLicense = PvESystem:GetEmptyStage();	
	
	-- 해당시간이 지나면 이벤트 발생
	-- ( in_시작이벤트, out_발생이벤트, 시간( ms ), in_종료이벤트, 반복여부 ) 이벤트값이 0일경우 작동하지 않음
	
	Timer_TextStart						= TriggerPackage:GetEventAlram( 0, NI_START, 0, 0, false );
	Timer_Text_Welcom01_Delay			= TriggerPackage:GetEventAlram( NI_START, NI_Text_Welcom01_OFF, 5000, 0, false );
	Timer_Text_Welcom02_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 3000, 0, false );
	Timer_Text_Welcom03_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false );
	
	Timer_Text_CompleteTip01_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED03, NI_TXTON01, 500, 0, false);
	Timer_Text_CompleteTip01			= TriggerPackage:GetEventAlram( NI_TXTON01, NI_Text_CompleteTip01_OFF, 3000, 0, false );

	Timer_Text_CompleteTip02_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED02, NI_TXTON02, 500, 0, false);
	Timer_Text_CompleteTip02			= TriggerPackage:GetEventAlram( NI_TXTON02, NI_Text_CompleteTip02_OFF, 3000, 0, false );	

	Timer_Text_CompleteTip03_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED05, NI_TXTON03, 500, 0, false);
	Timer_Text_CompleteTip03			= TriggerPackage:GetEventAlram( NI_TXTON03, NI_Text_CompleteTip03_OFF, 3000, 0, false );	
	
	-- ( 삭제 이벤트 )
	WeaponSlotRemoveAll					=  TriggerPackage:GetWeaponSlotRemoveAll( NI_START );

	-- ( 드랍이벤트, 무기아이템키, X, Y, Z )
	Weapon_Drop_01 						= TriggerPackage:GetWeaponDrop( NI_Text_Welcom02_OFF, 2000018, 6, 671, -2199 );	

	Timer_Text_ClearStep01_off			= TriggerPackage:GetEventAlram( NI_Text_CompleteTip03_OFF, NI_Text_ClearStep01_OFF, 6000, 0, true );

	-- 점수관리
	-- ( 좌표X, 좌표Y, in_발생이벤트, out_완료이벤트, 글자포멧, 최종점수 )
	ScoreMng01							= TriggerPackage:GetScoreObserver( 50, 200, NI_ATTACK_WEAK_PLASM_SWORD, NI_SCORE_COMPLETED01, TXT_Weapon_KATANA_09, 5 );
	ScoreMng02							= TriggerPackage:GetScoreObserver( 50, 220, NI_ATTACK_STRONG_PLASMA_SWORD, NI_SCORE_COMPLETED02, TXT_Weapon_KATANA_10, 3 );
	ScoreMng03							= TriggerPackage:GetScoreObserver( 50, 240, NI_ATTACK_2_PLASMA_SWORD, NI_SCORE_COMPLETED03, TXT_Weapon_KATANA_11, 3 );
	ScoreMng04							= TriggerPackage:GetScoreObserver( 50, 260, NI_ATTACK_STRONG1_PLASMA_SWORD, NI_SCORE_COMPLETED04, TXT_Weapon_KATANA_12, 3 );
	ScoreMng05							= TriggerPackage:GetScoreObserver( 50, 280, NI_ATTACK_JUMP_PLASMA_SWORD, NI_SCORE_COMPLETED05, TXT_Weapon_KATANA_13, 3 );
	

	-- 텍스트 보이게 설정
	-- ( 좌표x, 좌표y, in_시작이벤트, in_종료할이벤트, 표시할텍스트 )
	Text_Welcom01 						= TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Weapon_KATANA_01 , "Resources/GUI/New/TutorialImage_1.gui" , true, false);
	Text_Welcom02						= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Weapon_KATANA_02 , "Resources/GUI/New/TutorialImage_1.gui" , true, false);
	Text_Welcom03						= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Weapon_KATANA_03 , "Resources/GUI/New/TutorialImage_1.gui" , true, false);
	
	Text_Guide_01						= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_SCORE_COMPLETED01, TXT_Weapon_KATANA_04,"Resources/GUI/New/TutorialImage_1.gui" );
	Text_Guide_02						= TriggerPackage:GetTextViewerEx(600, 500, NI_SCORE_COMPLETED01, NI_SCORE_COMPLETED02, TXT_Weapon_KATANA_05 , "Resources/GUI/New/TutorialImage_1.gui" );
	Text_Guide_03						= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip02_OFF, NI_SCORE_COMPLETED03, TXT_Weapon_KATANA_06 , "Resources/GUI/New/TutorialImage_1.gui" );
	Text_Guide_04						= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_OFF, NI_SCORE_COMPLETED04, TXT_Weapon_KATANA_07 , "Resources/GUI/New/TutorialImage_1.gui" );
	Text_Guide_05						= TriggerPackage:GetTextViewerEx(600, 500, NI_SCORE_COMPLETED04, NI_SCORE_COMPLETED05, TXT_Weapon_KATANA_08 , "Resources/GUI/New/TutorialImage_1.gui" );

	Text_ClearStep01					= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip03_OFF, 0, TXT_Weapon_KATANA_14, "Resources/GUI/New/TutorialImage_1.gui" );

	--Dummy_Score01	= TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED01, NI_ATTACK_WEAK_PLASM_SWORD, TXT_Weapon_KATANA_14 , "" );
	--Dummy_Score02	= TriggerPackage:GetTextViewerEx(50, 220, NI_SCORE_COMPLETED02, NI_ATTACK_STRONG_PLASMA_SWORD, TXT_Weapon_KATANA_15 , "" );
	--Dummy_Score03	= TriggerPackage:GetTextViewerEx(50, 240, NI_SCORE_COMPLETED03, NI_ATTACK_2_PLASMA_SWORD, TXT_Weapon_KATANA_16 , "" );
	--Dummy_Score04	= TriggerPackage:GetTextViewerEx(50, 260, NI_SCORE_COMPLETED04, NI_ATTACK_STRONG1_PLASMA_SWORD, TXT_Weapon_KATANA_17 , "" );
	--Dummy_Score05	= TriggerPackage:GetTextViewerEx(50, 280, NI_SCORE_COMPLETED05, NI_ATTACK_JUMP_PLASMA_SWORD, TXT_Weapon_KATANA_18 , "" );

	Text_CompleteTip01 					= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED03, NI_Text_CompleteTip01_OFF, TXT_Weapon_KATANA_15, "Resources/GUI/New/TutorialImage_0.gui" , true, false);
	Text_CompleteTip02	 				= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_OFF, TXT_Weapon_KATANA_16, "Resources/GUI/New/TutorialImage_0.gui" , true, false);
	Text_CompleteTip03	 				= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED05, NI_Text_CompleteTip03_OFF, TXT_Weapon_KATANA_17, "Resources/GUI/New/TutorialImage_0.gui" , true, false);

	-- 엑터 공격 감시
	-- ( in_종료이벤트, out_발생이벤트, 감시할공격, 이벤트를 전달받을 특정트리거 )
		
	ActorAttackEvent01					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01, NI_ATTACK_WEAK_PLASM_SWORD, "ATTACK_AFTERDASH1_KATANA_A_SWORD", ScoreMng01 );
	ActorAttackEvent02					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED02, NI_ATTACK_STRONG_PLASMA_SWORD, "ATTACK_AFTERDASH3_KATANA_A_SWORD", ScoreMng02 );
	ActorAttackEnvet03					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED03, NI_ATTACK_2_PLASMA_SWORD, "ATTACK_STRONG_KATANA_A_SWORD", ScoreMng03 );
	ActorAttackEnvet04					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED04, NI_ATTACK_STRONG1_PLASMA_SWORD, "ATTACK_JUMP_KATANA_A_SWORD", ScoreMng04 );
	ActorAttackEnvet05					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED05, NI_ATTACK_JUMP_PLASMA_SWORD, "ATTACK2_BACKDASH_KATANA_A_SWORD", ScoreMng05 );

	RegActorAttackEvent01				= TriggerPackage:GetObserverRegister( NI_Text_Welcom03_OFF, ActorAttackEvent01);
	RegActorAttackEvent02				= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED01, ActorAttackEvent02);
	RegActorAttackEvent03				= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED02, ActorAttackEnvet03);
	RegActorAttackEvent04				= TriggerPackage:GetObserverRegister( NI_Text_CompleteTip01_OFF, ActorAttackEnvet04);
	RegActorAttackEvent05				= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED04, ActorAttackEnvet05);

	GateOpen_Step01						= TriggerPackage:GetCollisionChecker("trg_arrive_01", NI_CONGRATULATION, false);
	RegGateOpen_Step01					= TriggerPackage:GetObserverRegister( NI_Text_ClearStep01_OFF, GateOpen_Step01);

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


-- 등록	

	KatanaLicense:Register( RegActorAttackEvent01 );
	KatanaLicense:Register( RegActorAttackEvent02 );
	KatanaLicense:Register( RegActorAttackEvent03 );
	KatanaLicense:Register( RegActorAttackEvent04 );
	KatanaLicense:Register( RegActorAttackEvent05 );
	KatanaLicense:Register( RegGateOpen_Step01 );

	KatanaLicense:Register( NarOK01 );
	KatanaLicense:Register( NarOK02 );
	KatanaLicense:Register( NarOK03 );
	KatanaLicense:Register( NarOK04 );
	KatanaLicense:Register( NarOK05 );

	KatanaLicense:Register(Timer_Text_Welcom01_Delay);
	KatanaLicense:Register(Timer_Text_Welcom02_Delay);
	KatanaLicense:Register(Timer_Text_Welcom03_Delay);
	KatanaLicense:Register(Timer_Text_CompleteTip01_on);
	KatanaLicense:Register(Timer_Text_CompleteTip02_on);
	KatanaLicense:Register(Timer_Text_CompleteTip03_on);
	KatanaLicense:Register(Timer_Text_ClearStep01_off);

	KatanaLicense:Register(WeaponSlotRemoveAll);
	KatanaLicense:Register(Weapon_Drop_01);
	
	KatanaLicense:Register(Text_Welcom01);
	KatanaLicense:Register(Text_Welcom02);
	KatanaLicense:Register(Text_Welcom03);

	KatanaLicense:Register(Text_Guide_01);
	KatanaLicense:Register(Text_Guide_02);
	KatanaLicense:Register(Text_Guide_03);
	KatanaLicense:Register(Text_Guide_04);
	KatanaLicense:Register(Text_Guide_05);

	KatanaLicense:Register(Text_ClearStep01);

	--KATANALicense:Register(Dummy_Score01);
	--KATANALicense:Register(Dummy_Score02);
	--KATANALicense:Register(Dummy_Score03);
	--KATANALicense:Register(Dummy_Score04);
	--KATANALicense:Register(Dummy_Score05);

	KatanaLicense:Register( Timer_Text_CompleteTip01 );
	KatanaLicense:Register( Timer_Text_CompleteTip02 );
	KatanaLicense:Register( Timer_Text_CompleteTip03 );
	KatanaLicense:Register( Text_CompleteTip01 );
	KatanaLicense:Register( Text_CompleteTip02 );
	KatanaLicense:Register( Text_CompleteTip03 );
	KatanaLicense:Register(Timer_TextStart);

	--KATANALicense:Register(Hit_Box01_off);

	--KATANALicense:Register(Arrow_Gate_off_01);
	--KATANALicense:Register(Arrow_Gate_on_01);

	--CounterSwordLicense:Register(GateOpen_Step01);

	--KATANALicense:Register(MessageBox_Step01);

	KatanaLicense:Register(PressEscChecker);	
	KatanaLicense:Register(Mission_Prize);
	KatanaLicense:Register(Congraturation_Step01);
	
	PvESystem:AddStage( 0, KatanaLicense );


	
end
