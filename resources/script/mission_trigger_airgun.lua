require "Resources/Script/KeyMacro.lua"

-- GetSpawnHelper용 상수

SPAWN_FOCUS_ACTOR					= 0
SPAWN_ENERMY_SENTRYGUN				= 1
SPAWN_ENERMY_SENTYFORCE				= 2
SPAWN_TRIGGER_BEGIN					= 0
SPAWN_NOTIFY						= 1

-- Notify ID이벤트 메세지
NI_START								= 101
NI_Text_Welcom01_OFF					= 102
NI_Text_Welcom02_OFF					= 103
NI_Text_Welcom03_OFF					= 104
NI_SCORE_COMPLETED01					= 105
NI_ATTACK_1_RailGun						= 106
NI_Text_CompleteTip01_on				= 107
NI_Text_CompleteTip01_off				= 108
NI_Text_CompleteTip02_on				= 109
NI_Text_CompleteTip02_off				= 110
NI_SCORE_COMPLETED02					= 111
NI_RELOAD_RailGun						= 112
NI_CONGRATULATION						= 113
NI_ESC_CHECK							= 114

-- 텍스트

LoadStringTable( "Language/Script/challenge_string_table.x7" );

TXT_Weapon_AirGun_01=GetString( "TXT_Weapon_AirGun_01" );
TXT_Weapon_AirGun_02=GetString( "TXT_Weapon_AirGun_02" );
TXT_Weapon_AirGun_03=GetString( "TXT_Weapon_AirGun_03" );
TXT_Weapon_AirGun_04=GetString( "TXT_Weapon_AirGun_04" );
TXT_Weapon_AirGun_05=GetString( "TXT_Weapon_AirGun_05" );
TXT_Weapon_AirGun_06=GetString( "TXT_Weapon_AirGun_06" );
TXT_Weapon_AirGun_07=GetString( "TXT_Weapon_AirGun_07" );
TXT_Weapon_AirGun_08=GetString( "TXT_Weapon_AirGun_08" );
TXT_Weapon_AirGun_09=GetString( "TXT_Weapon_AirGun_09" );
TXT_Weapon_AirGun_10=GetString( "TXT_Weapon_AirGun_10" );
TXT_Weapon_AirGun_11=GetString( "TXT_Weapon_AirGun_11" );
TXT_Weapon_AirGun_12=GetString( "TXT_Weapon_AirGun_12" );
TXT_Weapon_AirGun_13=GetString( "TXT_Weapon_AirGun_13" );
TXT_Weapon_AirGun_14=GetString( "TXT_Weapon_AirGun_14" );
TXT_Weapon_AirGun_15=GetString( "TXT_Weapon_AirGun_15" );
TXT_Weapon_AirGun_16=GetString( "TXT_Weapon_AirGun_16" );
TXT_Weapon_AirGun_17=GetString( "TXT_Weapon_AirGun_17" );
TXT_Weapon_AirGun_18=GetString( "TXT_Weapon_AirGun_18" );
TXT_Weapon_AirGun_19=GetString( "TXT_Weapon_AirGun_19" );
TXT_Weapon_AirGun_20=GetString( "TXT_Weapon_AirGun_20" );
TXT_Weapon_AirGun_21=GetString( "TXT_Weapon_AirGun_21" );
TXT_Weapon_AirGun_22=GetString( "TXT_Weapon_AirGun_22" );
TXT_Weapon_AirGun_23=GetString( "TXT_Weapon_AirGun_23" );
TXT_Weapon_AirGun_24=GetString( "TXT_Weapon_AirGun_24" );

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

--"ATTACK_1_AIRGUN"	

--"RELOAD_AIRGUN"		

-- <----------------- 튜토리얼 초기화 -----------------> --
function InitPvETrigger()

	PvESystem:SetTotalStage( 1 );	-- 생성할 step의 갯수를 설정
	
	OnAirGunLicenseTestStep01		(); -- step1 생성

end
-- <---------------------------------------------------> --

function OnAirGunLicenseTestStep01()
	
	AirGunLicense = PvESystem:GetEmptyStage();	
	
	-- 해당시간이 지나면 이벤트 발생
	-- ( in_시작이벤트, out_발생이벤트, 시간( ms ), in_종료이벤트, 반복여부 ) 이벤트값이 0일경우 작동하지 않음
	
	Timer_TextStart						= TriggerPackage:GetEventAlram( 0, NI_START, 0, 0, false );
	Timer_Text_Welcom01_Delay			= TriggerPackage:GetEventAlram( NI_START, NI_Text_Welcom01_OFF, 5000, 0, false );
	Timer_Text_Welcom02_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 3000, 0, false );
	Timer_Text_Welcom03_Delay			= TriggerPackage:GetEventAlram( NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false );
		
	Timer_Text_CompleteTip01_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_on, 500, 0, false );
	Timer_Text_CompleteTip01_off		= TriggerPackage:GetEventAlram( NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, 4000, 0, false );

	Timer_Text_CompleteTip02_on			= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_on, 500, 0, false );
	Timer_Text_CompleteTip02_off		= TriggerPackage:GetEventAlram( NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_off, 4000, 0, false );

	-- ( 삭제 이벤트 )
	WeaponSlotRemoveAll					= TriggerPackage:GetWeaponSlotRemoveAll( NI_START );

	-- ( 드랍이벤트, 무기아이템키, X, Y, Z )
	Weapon_Drop_01 						= TriggerPackage:GetWeaponDrop( NI_Text_Welcom01_OFF, 2010016, 6, 671, -2199 );	
	
	-- 텍스트 보이게 설정
	-- ( 좌표x, 좌표y, in_시작이벤트, in_종료할이벤트, 표시할텍스트 )
	Text_Welcom01						= TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Weapon_AirGun_01 , "Resources/GUI/New/TutorialImage_1.gui", true, false);
	Text_Welcom02						= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Weapon_AirGun_02 , "Resources/GUI/New/TutorialImage_1.gui", true, false);
	Text_Welcom03						= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Weapon_AirGun_03 , "Resources/GUI/New/TutorialImage_1.gui", true, false);
	
	Text_Guide01						= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_SCORE_COMPLETED01, TXT_Weapon_AirGun_04 , "Resources/GUI/New/TutorialImage_1.gui");
	Text_Guide02						= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_off, NI_SCORE_COMPLETED02, TXT_Weapon_AirGun_05 , "Resources/GUI/New/TutorialImage_1.gui");
	
	Text_CompleteTip01					= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_off, TXT_Weapon_AirGun_08 , "Resources/GUI/New/TutorialImage_0.gui", true, false);
	Text_CompleteTip02					= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_off, TXT_Weapon_AirGun_09 , "Resources/GUI/New/TutorialImage_0.gui", true, false);

	Text_ClearStep01					= TriggerPackage:GetTextViewerExA(600, 500, NI_Text_CompleteTip02_off, 0, TXT_Weapon_AirGun_12, "Resources/GUI/New/TutorialImage_1.gui" );

	-- ( 좌표X, 좌표Y, in_발생이벤트, out_완료이벤트, 글자포멧, 최종점수 )
	ScoreCheck01						= TriggerPackage:GetScoreObserver( 50, 200, NI_ATTACK_1_RailGun, NI_SCORE_COMPLETED01, TXT_Weapon_AirGun_06, 3 );
	ScoreCheck02						= TriggerPackage:GetScoreObserver( 50, 220, NI_RELOAD_RailGun, NI_SCORE_COMPLETED02, TXT_Weapon_AirGun_10, 3 );

	-- ( in_종료이벤트, out_발생이벤트, 감시할공격, 이벤트를 전달받을 특정트리거 )
	ActorAttackCheck01					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01, NI_ATTACK_1_RailGun, "ATTACK_1_AIRGUN", ScoreCheck01 );
	ActorAttackCheck02 					= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED02, NI_RELOAD_RailGun, "RELOAD_AIRGUN", ScoreCheck02 );
	
	RegActorAttackCheck01				= TriggerPackage:GetObserverRegister( NI_Text_Welcom03_OFF, ActorAttackCheck01);
	RegActorAttackCheck02				= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED01, ActorAttackCheck02);
	
	NarOK01								= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0 );
	NarOK02								= TriggerPackage:GetNarrationPlayer( PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02, 0, 0, 0, 0 );

	PressEscChecker						 = TriggerPackage:GetKeyPressCheckerEx(NI_Text_CompleteTip02_off, NI_ESC_CHECK, IK_ESCAPE, NI_ESC_CHECK);
	Mission_Prize						 = TriggerPackage:GetChallengePrize	( NI_ESC_CHECK, NI_CONGRATULATION );
	Congraturation_Step01				 = TriggerPackage:GetChallengeComplete( NI_CONGRATULATION );
		
	
	-- 등록
	AirGunLicense:Register(RegActorAttackCheck01);
	AirGunLicense:Register(RegActorAttackCheck02);
	
	AirGunLicense:Register(NarOK01);
	AirGunLicense:Register(NarOK02);
	
	--AirGunLicense:Register(Timer_TextStart);
	AirGunLicense:Register(Timer_Text_Welcom01_Delay);
	AirGunLicense:Register(Timer_Text_Welcom02_Delay);
	AirGunLicense:Register(Timer_Text_Welcom03_Delay);

	AirGunLicense:Register(Timer_Text_CompleteTip01_on);
	AirGunLicense:Register(Timer_Text_CompleteTip01_off);
	AirGunLicense:Register(Timer_Text_CompleteTip02_on);
	AirGunLicense:Register(Timer_Text_CompleteTip02_off);

	AirGunLicense:Register(WeaponSlotRemoveAll);
	AirGunLicense:Register(Weapon_Drop_01);

	AirGunLicense:Register(Text_Welcom01);
	AirGunLicense:Register(Text_Welcom02);
	AirGunLicense:Register(Text_Welcom03);

	AirGunLicense:Register(Text_Guide01);
	AirGunLicense:Register(Text_Guide02);
			
	AirGunLicense:Register(Text_ClearStep01);

	AirGunLicense:Register(Text_CompleteTip01);
	AirGunLicense:Register(Text_CompleteTip02);

	AirGunLicense:Register(PressEscChecker);
	AirGunLicense:Register(Mission_Prize);
	AirGunLicense:Register(Congraturation_Step01);

	--AirGunLicense:Register();

	PvESystem:AddStage( 0, AirGunLicense );

end