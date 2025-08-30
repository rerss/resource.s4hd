require "Resources/Script/KeyMacro.lua"

-- GetSpawnHelper용 상수

SPAWN_FOCUS_ACTOR							= 0
SPAWN_ENERMY_SENTRYGUN						= 1
SPAWN_ENERMY_SENTYFORCE						= 2
SPAWN_TRIGGER_BEGIN							= 0
SPAWN_NOTIFY								= 1

-- Notify ID이벤트 메세지
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

NI_Text_Welcom01_OFF_H							= 115
NI_Text_Welcom02_OFF_H							= 116
NI_Text_Welcom03_OFF_H							= 117
NI_SCORE_COMPLETED01_H							= 118
NI_ATTACK_1_HOMIG_RIFLE							= 119
NI_Text_CompleteTip01_on_H						= 120
NI_Text_CompleteTip01_off_H						= 121
NI_Text_CompleteTip02_on_H						= 122
NI_Text_CompleteTip02_off_H						= 123
NI_SCORE_COMPLETED02_H							= 124
NI_RELOAD_HOMIG_RIFLE							= 125

NI_Text_Welcom01_OFF_A							= 126
NI_Text_Welcom02_OFF_A							= 127
NI_Text_Welcom03_OFF_A							= 128
NI_SCORE_COMPLETED01_A							= 129
NI_ATTACK_1_AS_BOMBER							= 130
NI_Text_CompleteTip01_on_A						= 131
NI_Text_CompleteTip01_off_A						= 132
NI_Text_CompleteTip02_on_A						= 133
NI_Text_CompleteTip02_off_A						= 134
NI_SCORE_COMPLETED02_A							= 135
NI_RELOAD_AS_BOMBER								= 136

-- 텍스트
LoadStringTable( "Language/Script/challenge_string_table.x7" );

TXT_Weapon_SpyDagger_01=GetString( "TXT_Weapon_trainning_Basic" );
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
TXT_Weapon_SpyDagger_basic=GetString( "TXT_Weapon_SpyDagger_basic" );

TXT_Weapon_HOMIG_RIFLE_01=GetString( "TXT_Weapon_SubMachineGun_basic_01" );
TXT_Weapon_HOMIG_RIFLE_02=GetString( "TXT_Weapon_SubMachineGun_basic_02" );
TXT_Weapon_HOMIG_RIFLE_03=GetString( "TXT_Weapon_SubMachineGun_03" );
TXT_Weapon_HOMIG_RIFLE_04=GetString( "TXT_Weapon_SubMachineGun_04" );
TXT_Weapon_HOMIG_RIFLE_05=GetString( "TXT_Weapon_SubMachineGun_05" );
TXT_Weapon_HOMIG_RIFLE_06=GetString( "TXT_Weapon_SubMachineGun_06" );
TXT_Weapon_HOMIG_RIFLE_07=GetString( "TXT_Weapon_SubMachineGun_07" );
TXT_Weapon_HOMIG_RIFLE_08=GetString( "TXT_Weapon_SubMachineGun_08" );
TXT_Weapon_HOMIG_RIFLE_09=GetString( "TXT_Weapon_SubMachineGun_09" );
TXT_Weapon_HOMIG_RIFLE_10=GetString( "TXT_Weapon_SubMachineGun_10" );
TXT_Weapon_HOMIG_RIFLE_11=GetString( "TXT_Weapon_SubMachineGun_11" );
TXT_Weapon_HOMIG_basic=GetString( "TXT_Weapon_Homing_basic" );

TXT_Weapon_Bomber_01=GetString( "TXT_Weapon_Bomber_basic_01" );
TXT_Weapon_Bomber_02=GetString( "TXT_Weapon_Bomber_basic_02" );
TXT_Weapon_Bomber_03=GetString( "TXT_Weapon_Bomber_03" );
TXT_Weapon_Bomber_04=GetString( "TXT_Weapon_Bomber_04" );
TXT_Weapon_Bomber_06=GetString( "TXT_Weapon_Bomber_06" );
TXT_Weapon_Bomber_07=GetString( "TXT_Weapon_Bomber_07" );
TXT_Weapon_Bomber_08=GetString( "TXT_Weapon_Bomber_08" );
TXT_Weapon_Bomber_11=GetString( "TXT_Weapon_Bomber_11" );
TXT_Weapon_Bomber_12=GetString( "TXT_Weapon_Bomber_12" );
TXT_Weapon_Bomber_basic=GetString( "TXT_Weapon_Bomber_basic" );

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

-- <---------------프로그램에서 지정한 무기별 어택타입------------------------------------> --

--"ATTACK_1_SPYDAGGER" --일반, 점프공격
--"ATTACK_2_SPYDAGGER" --우클릭 찌르기
--"ATTACK_1_SUBMACHINE_GUN"
--"ATTACK_1_SMG2"
--"ATTACK_1_SMG3"


-- <----------------- PvE 초기화 -----------------> --
function InitPvETrigger()

	PvESystem:SetTotalStage( 1 );	-- 생성할 step의 갯수를 설정
	
	OnSpyDaggerLicenseTestStep01		(); -- step1 생성
	
end
-- <---------------------------------------------------> --

function OnSpyDaggerLicenseTestStep01()

	SpyDaggerLicense = PvESystem:GetEmptyStage();	
	
	-- 해당시간이 지나면 이벤트 발생
	-- ( in_시작이벤트, out_발생이벤트, 시간( ms ), in_종료이벤트, 반복여부 ) 이벤트값이 0일경우 작동하지 않음
	-- ( 드랍이벤트, 무기아이템키, X, Y, Z )
	
	--스파이대거 조작법--
		
	Timer_TextStart						= TriggerPackage:GetEventAlram( 0, NI_START, 0, 0, false );
	Timer_Text_Welcom01_Delay			= TriggerPackage:GetEventAlram( NI_START, NI_Text_Welcom01_OFF, 6000, 0, false );
	Timer_Text_Welcom02_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 3000, 0, false );
	Timer_Text_Welcom03_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false );
	
	Timer_Text_CompleteTip01_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_on, 500, 0, false );
	Timer_Text_CompleteTip01_off		= TriggerPackage:GetEventAlram( NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, 3000, 0, false );

	Timer_Text_CompleteTip02_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_on, 500, 0, false );
	Timer_Text_CompleteTip02_off		= TriggerPackage:GetEventAlram( NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_off, 3000, 0, false );
	
	-- ( 삭제 이벤트 )
	WeaponSlotRemoveAll					=  TriggerPackage:GetWeaponSlotRemoveAll( NI_START );
	Weapon_Drop_01 						= TriggerPackage:GetWeaponDrop( NI_Text_Welcom01_OFF, 2000006, 6, 671, -2199 );	
	
	-- 텍스트 보이게 설정
	-- ( 좌표x, 좌표y, in_시작이벤트, in_종료할이벤트, 표시할텍스트 )
	Text_Welcom01					= TriggerPackage:GetTextViewerExA(512, 200, NI_START, NI_Text_Welcom01_OFF, TXT_Weapon_SpyDagger_01 , "Resources/GUI/New/TutorialImage_1.gui", true, false);
	Text_Welcom02					= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Weapon_SpyDagger_02 , "Resources/GUI/New/TutorialImage_1.gui", true, false);
	Text_Welcom03					= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Weapon_SpyDagger_03 , "Resources/GUI/New/TutorialImage_1.gui", true, false);
	
	Text_Guide01					= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_SCORE_COMPLETED01, TXT_Weapon_SpyDagger_04 , "Resources/GUI/New/TutorialImage_1.gui");
	Text_Guide02					= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_off, NI_SCORE_COMPLETED02, TXT_Weapon_SpyDagger_05 , "Resources/GUI/New/TutorialImage_1.gui");
	
	Text_CompleteTip01			    = TriggerPackage:GetTextViewerExA(512, 300, NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_off, TXT_Weapon_SpyDagger_08 , "Resources/GUI/New/TutorialImage_0.gui", true, false);
	Text_CompleteTip02				= TriggerPackage:GetTextViewerExA(512, 300, NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_off, TXT_Weapon_SpyDagger_09 , "Resources/GUI/New/TutorialImage_0.gui", true, false);

	Text_ClearStep01				= TriggerPackage:GetTextViewerExA(600, 500, NI_Text_CompleteTip02_off, NI_Text_Welcom01_OFF_H, TXT_Weapon_SpyDagger_basic, "Resources/GUI/New/TutorialImage_1.gui");

	-- ( 좌표X, 좌표Y, in_발생이벤트, out_완료이벤트, 글자포멧, 최종점수 )
	ScoreCheck01					= TriggerPackage:GetScoreObserver(50, 200, NI_ATTACK_1_SPYDAGGER, NI_SCORE_COMPLETED01, TXT_Weapon_SpyDagger_06, 3 );
	ScoreCheck02					= TriggerPackage:GetScoreObserver(50, 220, NI_ATTACK_2_SPYDAGGER, NI_SCORE_COMPLETED02, TXT_Weapon_SpyDagger_10, 3 );
	
	-- ( in_종료이벤트, out_발생이벤트, 감시할공격, 이벤트를 전달받을 특정트리거 )
	ActorAttackCheck01	 			= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01, NI_ATTACK_1_SPYDAGGER, "ATTACK_1_SPYDAGGER", ScoreCheck01 );
	ActorAttackCheck02 				= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED02, NI_ATTACK_2_SPYDAGGER, "ATTACK_2_SPYDAGGER", ScoreCheck02 );

	RegActorAttackCheck01			= TriggerPackage:GetObserverRegister( NI_Text_Welcom03_OFF, ActorAttackCheck01);
	RegActorAttackCheck02			= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED01, ActorAttackCheck02);
	
	NarOK01							= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0 );
	NarOK02							= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02, 0, 0, 0, 0 );

	-- 호밍라이플 조작법--
	-- ( 드랍이벤트, 무기아이템키, X, Y, Z )
	Weapon_Drop_01_H 					= TriggerPackage:GetWeaponDrop( NI_Text_CompleteTip02_off, 2010015, 6, 671, -2199 );	

	Timer_TextStart_H					= TriggerPackage:GetEventAlram( 0, NI_Text_CompleteTip02_off, 0, 0, false );
	Timer_Text_Welcom01_Delay_H			= TriggerPackage:GetEventAlram( NI_Text_CompleteTip02_off, NI_Text_Welcom01_OFF_H, 3000, 0, false );
	Timer_Text_Welcom02_Delay_H			= TriggerPackage:GetEventAlram( NI_Text_Welcom01_OFF_H, NI_Text_Welcom02_OFF_H, 3000, 0, false );
	Timer_Text_Welcom03_Delay_H			= TriggerPackage:GetEventAlram( NI_Text_Welcom02_OFF_H, NI_Text_Welcom03_OFF_H, 3000, 0, false );
	
	Timer_Text_CompleteTip01_on_H		= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED01_H, NI_Text_CompleteTip01_on_H, 500, 0, false );
	Timer_Text_CompleteTip01_off_H		= TriggerPackage:GetEventAlram( NI_Text_CompleteTip01_on_H, NI_Text_CompleteTip01_off_H, 3000, 0, false );

	Timer_Text_CompleteTip02_on_H		= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED02_H, NI_Text_CompleteTip02_on_H, 500, 0, false );
	Timer_Text_CompleteTip02_off_H		= TriggerPackage:GetEventAlram( NI_Text_CompleteTip02_on_H, NI_Text_CompleteTip02_off_H, 3000, 0, false );
	
	-- 텍스트 보이게 설정
	-- ( 좌표x, 좌표y, in_시작이벤트, in_종료할이벤트, 표시할텍스트 )
--	Text_Welcom01_H						= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_CompleteTip02_off_H, NI_Text_Welcom01_OFF_H, TXT_Weapon_HOMIG_RIFLE_01 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
	Text_Welcom02_H						= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF_H, NI_Text_Welcom02_OFF_H, TXT_Weapon_HOMIG_RIFLE_02 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
	Text_Welcom03_H						= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF_H, NI_Text_Welcom03_OFF_H, TXT_Weapon_HOMIG_RIFLE_03 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
	
	Text_Guide01_H						= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF_H, NI_SCORE_COMPLETED01_H, TXT_Weapon_HOMIG_RIFLE_04 , "Resources/GUI/New/TutorialImage_1.gui");
	Text_Guide02_H						= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_off_H, NI_SCORE_COMPLETED02_H, TXT_Weapon_HOMIG_RIFLE_05 , "Resources/GUI/New/TutorialImage_1.gui");
	
	Text_CompleteTip01_H				= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED01_H, NI_Text_CompleteTip01_off_H, TXT_Weapon_HOMIG_RIFLE_08 , "Resources/GUI/New/TutorialImage_0.gui", true, false );
	Text_CompleteTip02_H				= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED02_H, NI_Text_CompleteTip02_off_H, TXT_Weapon_HOMIG_RIFLE_09 , "Resources/GUI/New/TutorialImage_0.gui", true, false );

	Text_ClearStep01_H					= TriggerPackage:GetTextViewerExA(600, 500, NI_Text_CompleteTip02_off_H, NI_Text_Welcom01_OFF_A, TXT_Weapon_HOMIG_basic, "Resources/GUI/New/TutorialImage_1.gui");

	-- ( 좌표X, 좌표Y, in_발생이벤트, out_완료이벤트, 글자포멧, 최종점수 )
	ScoreCheck01_H						= TriggerPackage:GetScoreObserver( 50, 200, NI_ATTACK_1_HOMIG_RIFLE, NI_SCORE_COMPLETED01_H, TXT_Weapon_HOMIG_RIFLE_06, 5 );
	ScoreCheck02_H						= TriggerPackage:GetScoreObserver( 50, 220, NI_RELOAD_HOMIG_RIFLE, NI_SCORE_COMPLETED02_H, TXT_Weapon_HOMIG_RIFLE_10, 3 );

	-- ( in_종료이벤트, out_발생이벤트, 감시할공격, 이벤트를 전달받을 특정트리거 )
	ActorAttackCheck01_H				 = TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01_H, NI_ATTACK_1_HOMIG_RIFLE, "ATTACK_1_SUBMACHINE_GUN", ScoreCheck01_H );
	ActorAttackCheck02_H				 = TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01_H, NI_ATTACK_1_HOMIG_RIFLE, "ATTACK_1_SMG2", ScoreCheck01_H );

	ActorAttackCheck05_H 				 = TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED02_H, NI_RELOAD_HOMIG_RIFLE, "RELOAD_SUBMACHINE_GUN", ScoreCheck02_H );
	ActorAttackCheck06_H 				 = TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED02_H, NI_RELOAD_HOMIG_RIFLE, "RELOAD_SMG2_HOMING", ScoreCheck02_H );
	
	RegActorAttackCheck01_H				 = TriggerPackage:GetObserverRegister( NI_Text_Welcom03_OFF_H, ActorAttackCheck01_H);
	RegActorAttackCheck02_H				 = TriggerPackage:GetObserverRegister( NI_Text_Welcom03_OFF_H, ActorAttackCheck02_H);
	
	RegActorAttackCheck05_H				 = TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED01_H, ActorAttackCheck05_H);
	RegActorAttackCheck06_H				 = TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED01_H, ActorAttackCheck06_H);
	
	NarOK01_H								 = TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01_H, 0, 0, 0, 0 );
	NarOK02_H			 					 = TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02_H, 0, 0, 0, 0 );
	
	--어스봄버 조작법--
	-- 해당시간이 지나면 이벤트 발생
	-- ( in_시작이벤트, out_발생이벤트, 시간( ms ), in_종료이벤트, 반복여부 ) 이벤트값이 0일경우 작동하지 않음
	
	Timer_TextStart_A					= TriggerPackage:GetEventAlram( 0, NI_Text_CompleteTip02_off_H, 0, 0, false );
	Timer_Text_Welcom01_Delay_A			= TriggerPackage:GetEventAlram( NI_Text_CompleteTip02_off_H, NI_Text_Welcom01_OFF_A, 3000, 0, false );
	Timer_Text_Welcom02_Delay_A			= TriggerPackage:GetEventAlram( NI_Text_Welcom01_OFF_A, NI_Text_Welcom02_OFF_A, 3000, 0, false );
	Timer_Text_Welcom03_Delay_A			= TriggerPackage:GetEventAlram( NI_Text_Welcom02_OFF_A, NI_Text_Welcom03_OFF_A, 3000, 0, false );
		
	Timer_Text_CompleteTip01_on_A		= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED01_A, NI_Text_CompleteTip01_on_A, 500, 0, false );
	Timer_Text_CompleteTip01_off_A		= TriggerPackage:GetEventAlram( NI_Text_CompleteTip01_on_A, NI_Text_CompleteTip01_off_A, 3000, 0, false );

	Timer_Text_CompleteTip02_on_A		= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED02_A, NI_Text_CompleteTip02_on_A, 500, 0, false );
	Timer_Text_CompleteTip02_off_A		= TriggerPackage:GetEventAlram( NI_Text_CompleteTip02_on_A, NI_Text_CompleteTip02_off_A, 3000, 0, false );

	-- ( 드랍이벤트, 무기아이템키, X, Y, Z )
	Weapon_Drop_01_A01 						= TriggerPackage:GetWeaponDrop( NI_Text_Welcom01_OFF_A, 2050002, 6, 671, -2199 );
	Weapon_Drop_01_A02 						= TriggerPackage:GetWeaponDrop( NI_Text_Welcom01_OFF_A, 2050002, -400, 671, -2199 );
	Weapon_Drop_01_A03 						= TriggerPackage:GetWeaponDrop( NI_Text_Welcom01_OFF_A, 2050002, 400, 671, -2199 );

	-- 텍스트 보이게 설정
	-- ( 좌표x, 좌표y, in_시작이벤트, in_종료할이벤트, 표시할텍스트 )
--	Text_Welcom01_A						= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_CompleteTip01_off_A, NI_Text_Welcom01_OFF_A, TXT_Weapon_Bomber_01 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
	Text_Welcom02_A						= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF_A, NI_Text_Welcom02_OFF_A, TXT_Weapon_Bomber_02 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
	Text_Welcom03_A						= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF_A, NI_Text_Welcom03_OFF_A, TXT_Weapon_Bomber_03 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
	
	Text_Guide01_A						= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF_A, NI_SCORE_COMPLETED01_A, TXT_Weapon_Bomber_04 , "Resources/GUI/New/TutorialImage_1.gui");

	Text_CompleteTip01_A				= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED01_A, NI_Text_CompleteTip01_off_A, TXT_Weapon_Bomber_08 , "Resources/GUI/New/TutorialImage_0.gui", true, false );

    Text_ClearStep01_A					= TriggerPackage:GetTextViewerExA(350, 150, NI_Text_CompleteTip01_off_A, 0, TXT_Weapon_Bomber_basic, "Resources/GUI/New/TutorialImage_1.gui");
	
	-- ( 좌표X, 좌표Y, in_발생이벤트, out_완료이벤트, 글자포멧, 최종점수 )
	ScoreCheck01						= TriggerPackage:GetScoreObserver( 50, 200, NI_ATTACK_1_AS_BOMBER, NI_SCORE_COMPLETED01_A, TXT_Weapon_Bomber_06, 1 );

	-- ( in_종료이벤트, out_발생이벤트, 감시할공격, 이벤트를 전달받을 특정트리거 )
	ActorAttackCheck01_A				 = TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01_A, NI_ATTACK_1_AS_BOMBER, "ATTACK_1_MINE_LAUNCHER", ScoreCheck01 );

	RegActorAttackCheck01_A				 = TriggerPackage:GetObserverRegister( NI_Text_Welcom03_OFF_A, ActorAttackCheck01_A);

	NarOK01_A							 = TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01_A, 0, 0, 0, 0 );

	PressEscChecker_A					 = TriggerPackage:GetKeyPressCheckerEx(NI_Text_CompleteTip01_off_A, NI_ESC_CHECK, IK_ESCAPE, NI_ESC_CHECK);
	Mission_Prize						 = TriggerPackage:GetChallengePrize	( NI_ESC_CHECK, NI_CONGRATULATION );
	Congraturation_Step01				 = TriggerPackage:GetChallengeComplete( NI_CONGRATULATION );	
	
	-- 등록		
	SpyDaggerLicense:Register( RegActorAttackCheck01 );
	SpyDaggerLicense:Register( RegActorAttackCheck02 );
	SpyDaggerLicense:Register( RegActorAttackCheck01_H );
	SpyDaggerLicense:Register( RegActorAttackCheck02_H );
	SpyDaggerLicense:Register( RegActorAttackCheck05_H );
	SpyDaggerLicense:Register( RegActorAttackCheck06_H );
	SpyDaggerLicense:Register( RegActorAttackCheck01_A );	
	
	SpyDaggerLicense:Register( NarOK01 );
	SpyDaggerLicense:Register( NarOK02 );
	SpyDaggerLicense:Register( NarOK01_H );
	SpyDaggerLicense:Register( NarOK02_H );
	SpyDaggerLicense:Register( NarOK01_A );

	SpyDaggerLicense:Register(Timer_Text_Welcom01_Delay);
	SpyDaggerLicense:Register(Timer_Text_Welcom02_Delay);
	SpyDaggerLicense:Register(Timer_Text_Welcom03_Delay);
	SpyDaggerLicense:Register(Timer_Text_CompleteTip01_on);
	SpyDaggerLicense:Register(Timer_Text_CompleteTip01_off);
	SpyDaggerLicense:Register(Timer_Text_CompleteTip02_on);
	SpyDaggerLicense:Register(Timer_Text_CompleteTip02_off);
	SpyDaggerLicense:Register(Timer_Text_Welcom01_Delay_H);
	SpyDaggerLicense:Register(Timer_Text_Welcom02_Delay_H);
	SpyDaggerLicense:Register(Timer_Text_Welcom03_Delay_H);
	SpyDaggerLicense:Register(Timer_Text_CompleteTip01_on_H);
	SpyDaggerLicense:Register(Timer_Text_CompleteTip01_off_H);
	SpyDaggerLicense:Register(Timer_Text_CompleteTip02_on_H);
	SpyDaggerLicense:Register(Timer_Text_CompleteTip02_off_H);
	SpyDaggerLicense:Register(Timer_Text_Welcom01_Delay_A);
	SpyDaggerLicense:Register(Timer_Text_Welcom02_Delay_A);
	SpyDaggerLicense:Register(Timer_Text_Welcom03_Delay_A);
	SpyDaggerLicense:Register(Timer_Text_CompleteTip01_on_A);
	SpyDaggerLicense:Register(Timer_Text_CompleteTip01_off_A);
	SpyDaggerLicense:Register(Timer_Text_CompleteTip02_on_A);
	SpyDaggerLicense:Register(Timer_Text_CompleteTip02_off_A);
	SpyDaggerLicense:Register(Timer_TextStart);
	
	SpyDaggerLicense:Register(WeaponSlotRemoveAll);
	SpyDaggerLicense:Register(Weapon_Drop_01);
	SpyDaggerLicense:Register(Weapon_Drop_01_H);
	SpyDaggerLicense:Register(Weapon_Drop_01_A01);
	SpyDaggerLicense:Register(Weapon_Drop_01_A02);
	SpyDaggerLicense:Register(Weapon_Drop_01_A03);
	
	SpyDaggerLicense:Register(Text_Welcom01);
	SpyDaggerLicense:Register(Text_Welcom02);
	SpyDaggerLicense:Register(Text_Welcom03);
	SpyDaggerLicense:Register(Text_Welcom02_H);
	SpyDaggerLicense:Register(Text_Welcom03_H);
	SpyDaggerLicense:Register(Text_Welcom02_A);
	SpyDaggerLicense:Register(Text_Welcom03_A);
	
	SpyDaggerLicense:Register(Text_Guide01);
	SpyDaggerLicense:Register(Text_Guide02);
	SpyDaggerLicense:Register(Text_Guide01_H);
	SpyDaggerLicense:Register(Text_Guide02_H);
	SpyDaggerLicense:Register(Text_Guide01_A);
	
	SpyDaggerLicense:Register(Text_ClearStep01);
	SpyDaggerLicense:Register(Text_ClearStep01_H);
	SpyDaggerLicense:Register(Text_ClearStep01_A);
	
	SpyDaggerLicense:Register(Text_CompleteTip01);
	SpyDaggerLicense:Register(Text_CompleteTip02);
	SpyDaggerLicense:Register(Text_CompleteTip01_H);
	SpyDaggerLicense:Register(Text_CompleteTip02_H);
	SpyDaggerLicense:Register(Text_CompleteTip01_A);
		
	SpyDaggerLicense:Register(PressEscChecker_A);	
	SpyDaggerLicense:Register(Mission_Prize);	
	SpyDaggerLicense:Register(Congraturation_Step01);

	PvESystem:AddStage( 0, SpyDaggerLicense );
end
