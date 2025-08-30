require "Resources/Script/KeyMacro.lua"

-- < ----------------------------------------------- >
LoadStringTable( "Language/Script/tutorial_string_table.x7" );

STAND1_KEY_LABEL			= GetString( "STAND1_KEY_LABEL" );
STAND2_KEY_LABEL			= GetString( "STAND2_KEY_LABEL" );
STAND3_KEY_LABEL			= GetString( "STAND3_KEY_LABEL" );
STAND4_KEY_LABEL			= GetString( "STAND4_KEY_LABEL" );
STAND5_KEY_LABEL			= GetString( "STAND5_KEY_LABEL" );
STAND6_KEY_LABEL			= GetString( "STAND6_KEY_LABEL" );
STAND7_KEY_LABEL			= GetString( "STAND7_KEY_LABEL" );
STAND8_KEY_LABEL			= GetString( "STAND8_KEY_LABEL" );
STAND9_KEY_LABEL			= GetString( "STAND9_KEY_LABEL" );
STAND10_KEY_LABEL		= GetString( "STAND10_KEY_LABEL" );
STAND11_KEY_LABEL		= GetString( "STAND11_KEY_LABEL" );
STAND12_KEY_LABEL		= GetString( "STAND12_KEY_LABEL" );
STAND13_KEY_LABEL		= GetString( "STAND13_KEY_LABEL" );
STAND14_KEY_LABEL		= GetString( "STAND14_KEY_LABEL" );
STAND15_KEY_LABEL		= GetString( "STAND15_KEY_LABEL" );
STAND16_KEY_LABEL		= GetString( "STAND16_KEY_LABEL" );
STAND17_KEY_LABEL		= GetString( "STAND17_KEY_LABEL" );
STAND18_KEY_LABEL		= GetString( "STAND18_KEY_LABEL" );
STAND19_KEY_LABEL		= GetString( "STAND19_KEY_LABEL" );
STAND20_KEY_LABEL		= GetString( "STAND20_KEY_LABEL" );
STAND21_KEY_LABEL		= GetString( "STAND21_KEY_LABEL" );
STAND22_KEY_LABEL		= GetString( "STAND22_KEY_LABEL" );
STAND23_KEY_LABEL		= GetString( "STAND23_KEY_LABEL" );
STAND24_KEY_LABEL		= GetString( "STAND24_KEY_LABEL" );
STAND25_KEY_LABEL		= GetString( "STAND25_KEY_LABEL" );
STAND26_KEY_LABEL		= GetString( "STAND26_KEY_LABEL" );
STAND27_KEY_LABEL		= GetString( "STAND27_KEY_LABEL" );
STAND28_KEY_LABEL		= GetString( "STAND28_KEY_LABEL" );
STAND29_KEY_LABEL		= GetString( "STAND29_KEY_LABEL" );

ClearStringTable();
-- < ----------------------------------------------- >


-- <------------------ 이벤트 등록  -------------------> --

--이벤트 이름			= 이벤트 번호 ( 이름과 번호는 겹치지 않게! )

NULL_NOTIFY							= 0
KEY_PRESS_CHANGED				= 1
ESC_PRESSED							= 2
CONGRATULATION					= 3
SPAWN_FIRE								= 4		
AREA_SOUND_PLAY					= 5		
DESTRUCTION_BETA					= 6
SUBMACHINE_GUN_LOAD			= 7
DESTRUCTION_BLAST				= 8
DESTROY_BETA_SENTRYGUN	= 9
MOUSE_SLIDE_CHANGED			= 10
ENABLE_KEY							= 11
UN_ENABLE_KEY						= 12
TARGET_VIEW							= 13
MESSION_COMPLETED				= 14
PUMPY_GOAL							= 15
VIEW_MESSION_COMPLETE		= 16
MOVE_MESSION_COMPLETE		= 17
SPAWN_FIRE_ADD						= 18
SPAWN_FIRE_ADD3					= 19
SUCCESS_SLIDING					= 20
BALL_RESET								= 300
ACTOR_DIE								= 400
COMPLETED								= 9999

START_EVENT							= 1234
CAST_EVENT							= 1235

TURN_ON_EFF_00						= 10000
TURN_ON_EFF_01						= 10001
TURN_ON_EFF_02						= 10002
TURN_ON_EFF_03						= 10003
TURN_ON_EFF_04						= 10004
TURN_ON_EFF_05						= 10005
TURN_ON_EFF_06						= 10006
TURN_ON_EFF_07						= 10007
TURN_ON_EFF_08						= 10008
TURN_ON_EFF_09						= 10009
TURN_ON_EFF_10						= 10010
TURN_ON_EFF_11						= 10011
TURN_ON_EFF_12						= 10012
TURN_ON_EFF_13						= 10013
TURN_ON_EFF_14						= 10014
TURN_ON_EFF_15						= 10015
TURN_ON_EFF_16						= 10016
TURN_ON_EFF_17						= 10017
TURN_ON_EFF_18						= 10018
TURN_ON_EFF_19						= 10019
TURN_ON_EFF_20						= 10020
TURN_ON_EFF_21						= 10021

EVENT_ALRAM01						= 11000
EVENT_ALRAM02						= 11001
EVENT_ALRAM03						= 11002
EVENT_ALRAM04						= 11003
EVENT_ALRAM05						= 11004
EVENT_ALRAM06						= 11005
EVENT_ALRAM07						= 11006
EVENT_ALRAM08						= 11007
EVENT_ALRAM09						= 11008
EVENT_ALRAM10						= 11009
EVENT_ALRAM11						= 11010
EVENT_ALRAM12						= 11011
EVENT_ALRAM13						= 11012
EVENT_ALRAM14						= 11013
EVENT_ALRAM15						= 11014
EVENT_ALRAM16						= 11015
EVENT_ALRAM17						= 11016
EVENT_ALRAM18						= 11017
EVENT_ALRAM19						= 11018
EVENT_ALRAM20						= 11019
EVENT_ALRAM21						= 11020
EVENT_ALRAM22						= 11021
EVENT_ALRAM23						= 11022
EVENT_ALRAM24						= 11023
EVENT_ALRAM25						= 11024
EVENT_ALRAM26						= 11025
EVENT_ALRAM27						= 11026
EVENT_ALRAM28						= 11027
EVENT_ALRAM29						= 11028
EVENT_ALRAM30						= 11029
EVENT_ALRAM31						= 11030
EVENT_ALRAM32						= 11031
EVENT_ALRAM33						= 11032
EVENT_ALRAM34						= 11033
EVENT_ALRAM35						= 11034
EVENT_ALRAM36						= 11035
EVENT_ALRAM37						= 11036
EVENT_ALRAM38						= 11037
EVENT_ALRAM39						= 11038
EVENT_ALRAM40						= 11039
EVENT_ALRAM41						= 11040
EVENT_ALRAM42						= 11041
EVENT_ALRAM43						= 11042
EVENT_ALRAM44						= 11043
EVENT_ALRAM45						= 11044
EVENT_ALRAM46						= 11045
EVENT_ALRAM47						= 11046
EVENT_ALRAM48						= 11047
EVENT_ALRAM49						= 11048
EVENT_ALRAM50						= 11049
EVENT_ALRAM51						= 11050
EVENT_ALRAM52						= 11051
EVENT_ALRAM53						= 11052
EVENT_ALRAM54						= 11053
EVENT_ALRAM55						= 11054
EVENT_ALRAM56						= 11055

--NARRATION_PLAY01				= 11100
--ARRATION_PLAY02					= 11101

DESTROY_ENERMY01				= 11200

-- <------------------- GUIViewType -------------------> --
-- TutorialGUISet.h 내용과 같게..
GUI_NONE     							= 0
GUI_SEABOM_NAME_TEXT		= 1
GUI_SEABOM_IMAGE					= 2
GUI_SEABOM_EMOTION_IMAGE	= 4
GUI_RAY_NAME_TEXT				= 8
GUI_RAY_IMAGE						= 16
GUI_RAY_EMOTION_IMAGE		= 32
GUI_TEXT_VIEWER_BACK_1		= 64
GUI_TEXT_VIEWER_1					= 128
GUI_NEXT_BUTTON_1				= 256
GUI_TEXT_VIEWER_BACK_2		= 512
GUI_TEXT_VIEWER_2					= 1024
GUI_NEXT_BUTTON_2				= 2048
GUI_SP_ARROW							= 4096
GUI_SP_GUAGE    						= 8192
GUI_HP_GUAGE    						= 16384


index = 0;
KEYBOARD_STATE_NONE					= index; index = index + 1;
KEYBOARD_STATE_GUIDE					= index; index = index + 1;
KEYBOARD_STATE_MOVE_W				= index; index = index + 1;
KEYBOARD_STATE_MOVE_A				= index; index = index + 1;
KEYBOARD_STATE_MOVE_S				= index; index = index + 1;
KEYBOARD_STATE_MOVE_D				= index; index = index + 1;
KEYBOARD_STATE_GUIDE_JUMP		= index; index = index + 1;
KEYBOARD_STATE_JUMP					= index; index = index + 1;
KEYBOARD_STATE_FRONT_JUMP		= index; index = index + 1;
KEYBOARD_STATE_AVOID_LEFT			= index; index = index + 1;
KEYBOARD_STATE_AVOID_RIGHT		= index; index = index + 1;
KEYBOARD_STATE_BLOCK_JUMP		= index; index = index + 1;
KEYBOARD_STATE_RUN					= index; index = index + 1;

MOUSE_GUIDE									= index; index = index + 1;
MOUSE_STATE_ACTIVE						= index; index = index + 1;
MOUSE_STATE_NON							= index; index = index + 1;

-- <---------------------------------------------------> --


SPAWN_FOCUS_ACTOR						= 0
SPAWN_ENERMY_SENTRYGUN			= 1
SPAWN_ENERMY_SENTYFORCE			= 2

SPAWN_TRIGGER_BEGIN					= 0
SPAWN_NOTIFY									= 1

CURE_ACTOR									= 0
CURE_ENERMY									= 1
CURE_ALL											= 2

-- <---------------------------------------------------> --
-- MessionTextViewer.h -- TutorialMessionType

index = 0;

MESSION_STEP01_VIEW								= index; index = index + 1;
MESSION_STEP01_MOVE							= index; index = index + 1;
MESSION_STEP02_MOVE							= index; index = index + 1;
MESSION_STEP03_DESTROY_BLAST			= index; index = index + 1;
MESSION_STEP04_DESTROY_ENERMY01	= index; index = index + 1;
MESSION_STEP04_DESTROY_ENERMY02	= index; index = index + 1;
MESSION_STEP04_DODGE							= index; index = index + 1;
MESSION_STEP04_DESTROY_ENERMY03	= index; index = index + 1;
MESSION_STEP04_MOVE							= index; index = index + 1;
MESSION_STEP05_CATCH_BALL				= index; index = index + 1;
MESSION_STEP05_MOVE							= index; index = index + 1;
MESSION_STEP06_MOVE							= index; index = index + 1;

-- <---------------------------------------------------> --


-- <----------------- 튜토리얼 초기화 -----------------> --
function InitializeTutorialStage()

	TutorialSystem:SetTotalStage( 1 );	-- 생성할 step의 갯수를 설정
	
	InitEasyKeyControlStage			(); -- step1 생성
	--InitNormalKeyControlStage		(); -- step2 생성
	--InitHardKeyControlStage			(); -- step3 생성
	--InitEasyWeaponControlStage	(); -- step4 생성
	--InitNormalWeaponControlStage	(); -- step5 생성
	--InitSkillControl							(); -- step6 생성
	--InitTouchdown						(); -- step6 생성
	--InitTouchdown2						(); -- step7 생성

end
-- <---------------------------------------------------> --

-- <------------------- Step1 생성 --------------------> --
function InitEasyKeyControlStage()

	EasyKeyControlStage						= TutorialSystem:GetEmptyStage();

	FadeInEffect									= TriggerPackage:GetFadeInOutEffect							( 0, 3000, true );
	--[첫 진입 인사]--
	-- 튜토리얼 시작, 3초 후 새봄 이미지 스크립트 창 출력--
	GMImageController01						= TriggerPackage:GetGUIGMImageController			( 0, IMAGE_NONE, 0 ); -- 처음엔 이미지 출력 안됨
	EventAlram									= TriggerPackage:GetEventAlram							( 0, START_EVENT, 3000, START_EVENT, false );
	KeyPressChecker00						= TriggerPackage:GetKeyPressChecker				( 0, KEYBOARD_STATE_NONE, 0, 0); --입력 체크
	
	--첫번째 새봄 대사 출력, 새봄 이미지 스크립트 창 출력--
	GMImageController02						= TriggerPackage:GetGUIGMImageController			( START_EVENT, GUI_SEABOM_NAME_TEXT + GUI_SEABOM_EMOTION_IMAGE +GUI_SEABOM_IMAGE + GUI_TEXT_VIEWER_BACK_1 + GUI_NEXT_BUTTON_1 + GUI_TEXT_VIEWER_1, 8 ); -- NPC 기본 페이셜 셋팅
	
	STAND1_KEY_LABEL 						= string.format( STAND1_KEY_LABEL, TutorialSystem:GetFocusActorName() );
	
	SeabomGuideLabel01						= TriggerPackage:GetMessage1AniTextWriter		( START_EVENT, STAND1_KEY_LABEL, CAST_EVENT, 50 ); 
	PressNextEnterChecker01 				= TriggerPackage:GetKeyPressCheckerEx		   	( CAST_EVENT, EVENT_ALRAM01, IK_RETURN, EVENT_ALRAM01);
	PressNextEnterChecker01_1 			= TriggerPackage:GetKeyPressCheckerEx			( CAST_EVENT, EVENT_ALRAM01, IM_LBUTTON, EVENT_ALRAM01);
	
	--[텍스트 애니 스킵 시 노출]--
	SeabomGuideLabel01_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM01, STAND1_KEY_LABEL, EVENT_ALRAM02 ); 	
	PressNextEnterChecker01_skip 		= TriggerPackage:GetKeyPressCheckerEx		   	( EVENT_ALRAM02, EVENT_ALRAM03, IK_RETURN, EVENT_ALRAM03);
	PressNextEnterChecker01_1_skip 	= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM02, EVENT_ALRAM03, IM_LBUTTON, EVENT_ALRAM03);
	
	--첫번째 대사 출력 후 엔터 입력 시 두번째 새봄 대사 출력--
	SeabomGuideLabel02						= TriggerPackage:GetMessage1AniTextWriter		( EVENT_ALRAM03, STAND2_KEY_LABEL, EVENT_ALRAM04, 50 );
	PressNextEnterChecker02 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM04, EVENT_ALRAM05, IK_RETURN, EVENT_ALRAM05);
	PressNextEnterChecker02_1 			= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM04, EVENT_ALRAM05, IM_LBUTTON, EVENT_ALRAM05);
	
	--[텍스트 애니 스킵 시 노출]--
	SeabomGuideLabel02_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM05, STAND2_KEY_LABEL, EVENT_ALRAM06, 50 );
	PressNextEnterChecker02_skip 		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM06, EVENT_ALRAM07, IK_RETURN, EVENT_ALRAM07);
	PressNextEnterChecker02_1_skip 	= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM06, EVENT_ALRAM07, IM_LBUTTON, EVENT_ALRAM07);
	
	--두번째 대사 출력 후 엔터 입력 시 세번째 새봄 대사 출력--
	GMImageController03						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM07, GUI_SEABOM_NAME_TEXT + GUI_SEABOM_IMAGE + GUI_SEABOM_EMOTION_IMAGE + GUI_TEXT_VIEWER_BACK_1 + GUI_NEXT_BUTTON_1 + GUI_TEXT_VIEWER_1, 4 ); --새봄 웃음 셋팅
	SeabomGuideLabel03						= TriggerPackage:GetMessage1AniTextWriter		( EVENT_ALRAM07, STAND3_KEY_LABEL, EVENT_ALRAM08, 50 );
	PressNextEnterChecker03 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM08, EVENT_ALRAM09, IK_RETURN, EVENT_ALRAM09);
	PressNextEnterChecker03_1 			= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM08, EVENT_ALRAM09, IM_LBUTTON, EVENT_ALRAM09);

	--[텍스트 애니 스킵 시 노출]--
	SeabomGuideLabel03_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM09, STAND3_KEY_LABEL, EVENT_ALRAM10, 50 );
	PressNextEnterChecker03_skip 		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM10, EVENT_ALRAM11, IK_RETURN, EVENT_ALRAM11);
	PressNextEnterChecker03_1_skip 	= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM10, EVENT_ALRAM11, IM_LBUTTON, EVENT_ALRAM11);
	
		--[새봄 지시에 따른 WASD 입력]--
	--세번째 대사 출력 후 엔터 입력 시 네번째 새봄 대사 출력, 출력과 동시에 W,A,S,D 키보드 허드 연출--
	GMImageController04						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM11, GUI_SEABOM_NAME_TEXT + GUI_SEABOM_EMOTION_IMAGE +GUI_SEABOM_IMAGE + GUI_TEXT_VIEWER_BACK_1 + GUI_NEXT_BUTTON_1 + GUI_TEXT_VIEWER_1, 8 ); -- NPC 기본 페이셜 셋팅
	SeabomGuideLabel04						= TriggerPackage:GetMessage1AniTextWriter		( EVENT_ALRAM11, STAND4_KEY_LABEL, EVENT_ALRAM12, 50 );
	MoveKeyGuideViewer04					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_GUIDE, EVENT_ALRAM11, true, 0, 0 ); --디폴트 셋팅 키보드 허드 연출
	
	PressNextEnterChecker100 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM12, EVENT_ALRAM13, IK_RETURN, EVENT_ALRAM13);
	PressNextEnterChecker101 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM12, EVENT_ALRAM13, IM_LBUTTON, EVENT_ALRAM13);
	
	--[텍스트 애니 스킵 시 노출]--
	SeabomGuideLabel04_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM13, STAND4_KEY_LABEL, EVENT_ALRAM14, 50 );
	PressNextEnterChecker100_skip 		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM14, EVENT_ALRAM15, IK_RETURN, EVENT_ALRAM15);
	PressNextEnterChecker101_skip 		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM14, EVENT_ALRAM15, IM_LBUTTON, EVENT_ALRAM15);
	
	
	--MoveKeyGuideViewer01		= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_MOVE_W, EVENT_ALRAM06, true, 0, 0 ); --W 연출
	--EventAlram02						= TriggerPackage:GetEventAlram							( EVENT_ALRAM05, EVENT_ALRAM06, 1000, EVENT_ALRAM06, false );
	
	--MoveKeyGuideViewer02		= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_MOVE_S, EVENT_ALRAM07, true, 0, 0 ); --S 연출
	--EventAlram03						= TriggerPackage:GetEventAlram							( EVENT_ALRAM06, EVENT_ALRAM07, 1000, EVENT_ALRAM07, false );
	
	--MoveKeyGuideViewer03		= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_MOVE_A, EVENT_ALRAM08, true, 0, 0 ); --A 연출
	--EventAlram04						= TriggerPackage:GetEventAlram							( EVENT_ALRAM07, EVENT_ALRAM08, 1000, EVENT_ALRAM08, false );
	
	--MoveKeyGuideViewer04		= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_MOVE_D, EVENT_ALRAM09, true, 0, 0 ); --D 연출
	--EventAlram05						= TriggerPackage:GetEventAlram							( EVENT_ALRAM08, EVENT_ALRAM09, 1000, EVENT_ALRAM09, false );
	
	--MoveKeyGuideViewer05		= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_GUIDE, EVENT_ALRAM10, true, 0, 0 ); --디폴트 셋팅 키보드 허드 연출
	--EventAlram06						= TriggerPackage:GetEventAlram							( EVENT_ALRAM09, EVENT_ALRAM10, 1000, EVENT_ALRAM10, false );
	
	-- 키보드 W,A,S,D 연출 후 엔터 입력 시 다섯번째 새봄 대사 출력--
	--PressNextEnterChecker04 	= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM10, EVENT_ALRAM11, IK_RETURN, true, 0); 
		
	-- 새봄 다섯번째 대사 출력 후, W 입력 시, 다음 6번째 대사 이벤트 진행--
	GMImageController05						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM15, GUI_TEXT_VIEWER_BACK_2 + GUI_TEXT_VIEWER_2, 0 ); --텍스트 박스만 출력
	SeabomGuideLabel05						= TriggerPackage:GetMessage2TextWriter			( EVENT_ALRAM15, STAND5_KEY_LABEL, 0 );
	MoveKeyGuideViewer06					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_MOVE_W, EVENT_ALRAM15, true, 0, 0 ); --W 가이드 연출
	PressNextEnterChecker05 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM15, EVENT_ALRAM16, IK_W, EVENT_ALRAM16);
	
	-- 새봄 6번째 대사 출력 후, S 입력 시, 다음 7번째 대사 이벤트 진행--	
	SeabomGuideLabel06						= TriggerPackage:GetMessage2TextWriter			( EVENT_ALRAM16, STAND6_KEY_LABEL, 0 );
	MoveKeyGuideViewer07					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_MOVE_S, EVENT_ALRAM16, true, 0, 0 ); --S 가이드 연출
	PressNextEnterChecker06 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM16, EVENT_ALRAM17, IK_S, EVENT_ALRAM17);
		
	-- 새봄 7번째 대사 출력 후, A 입력 시, 다음 8번째 대사 이벤트 진행--	
	SeabomGuideLabel07						= TriggerPackage:GetMessage2TextWriter			( EVENT_ALRAM17, STAND7_KEY_LABEL, 0 );
	MoveKeyGuideViewer08					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_MOVE_A, EVENT_ALRAM17, true, 0, 0 ); --A 가이드 연출
	PressNextEnterChecker07 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM17, EVENT_ALRAM18, IK_A, EVENT_ALRAM18);
		
	-- 새봄 8번째 대사 출력 후, D 입력 시, 다음 9번째 대사 이벤트 진행--	
	SeabomGuideLabel08						= TriggerPackage:GetMessage2TextWriter			( EVENT_ALRAM18, STAND8_KEY_LABEL, 0 );
	MoveKeyGuideViewer09					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_MOVE_D, EVENT_ALRAM18, true, 0, 0 ); --D 가이드 연출
	PressNextEnterChecker08 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM18, EVENT_ALRAM19, IK_D, EVENT_ALRAM19);

	-- 새봄 9번째 대사 출력 후, Enter 입력 시, 다음 이벤트 진행--
	GMImageController06						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM19, GUI_SEABOM_NAME_TEXT + GUI_SEABOM_IMAGE + GUI_SEABOM_EMOTION_IMAGE + GUI_TEXT_VIEWER_BACK_1 + GUI_NEXT_BUTTON_1 + GUI_TEXT_VIEWER_1, 4 ); --새봄 웃음 셋팅
	
	SeabomGuideLabel09						= TriggerPackage:GetMessage1AniTextWriter		( EVENT_ALRAM19, STAND9_KEY_LABEL, 0, 50 );
	MoveKeyGuideViewer10					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_GUIDE, EVENT_ALRAM19, true, 0, 0 ); --디폴트 셋팅 키보드 허드 연출
	PressNextEnterChecker09 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM19, EVENT_ALRAM20, IK_RETURN, EVENT_ALRAM20);
	PressNextEnterChecker09_1 			= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM19, EVENT_ALRAM20, IM_LBUTTON, EVENT_ALRAM20);
	
	--[텍스트 애니 스킵 시 노출]--
	SeabomGuideLabel09_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM20, STAND9_KEY_LABEL, EVENT_ALRAM21, 50 );
	PressNextEnterChecker09_skip 		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM21, EVENT_ALRAM22, IK_RETURN, EVENT_ALRAM22);
	PressNextEnterChecker09_1_skip 	= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM21, EVENT_ALRAM22, IM_LBUTTON, EVENT_ALRAM22);
	
	-- [새봄 지시에 따른 SPACE(점프)입력]--
	GMImageController07						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM22, GUI_SEABOM_NAME_TEXT + GUI_SEABOM_IMAGE + GUI_SEABOM_EMOTION_IMAGE + GUI_TEXT_VIEWER_BACK_1 + GUI_NEXT_BUTTON_1 + GUI_TEXT_VIEWER_1, 8 ); --새봄 디폴트 셋팅
	
	SeabomGuideLabel10						= TriggerPackage:GetMessage1AniTextWriter		( EVENT_ALRAM22, STAND10_KEY_LABEL, 0, 50 );
	MoveKeyGuideViewer11					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_GUIDE_JUMP, EVENT_ALRAM22, true, 0, 0 ); --디폴트 SPACE 가이드 연출
	PressNextEnterChecker10 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM22, EVENT_ALRAM23, IK_RETURN, EVENT_ALRAM23); 
	PressNextEnterChecker10_1 			= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM22, EVENT_ALRAM23, IM_LBUTTON, EVENT_ALRAM23); 
	
	--[텍스트 애니 스킵 시 노출]--
	SeabomGuideLabel10_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM23, STAND10_KEY_LABEL, 0, 50 );
	PressNextEnterChecker10_skip 		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM23, EVENT_ALRAM24, IK_RETURN, EVENT_ALRAM24); 
	PressNextEnterChecker10_1_skip 	= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM23, EVENT_ALRAM24, IM_LBUTTON, EVENT_ALRAM24); 
	
	GMImageController07_text				= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM24, GUI_TEXT_VIEWER_BACK_2 + GUI_TEXT_VIEWER_2, 0 ); --텍스트 박스만 출력
	SeabomGuideLabel11						= TriggerPackage:GetMessage2TextWriter			( EVENT_ALRAM24, STAND11_KEY_LABEL, 0 );
	MoveKeyGuideViewer12					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_JUMP, EVENT_ALRAM24, true, 0, 0 ); --SPACE 가이드 연출
	PressNextEnterChecker11 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM24, EVENT_ALRAM25, IK_SPACE, EVENT_ALRAM25); 
	
	GMImageController08						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM25, GUI_SEABOM_NAME_TEXT + GUI_SEABOM_IMAGE + GUI_SEABOM_EMOTION_IMAGE + GUI_TEXT_VIEWER_BACK_1 + GUI_NEXT_BUTTON_1 + GUI_TEXT_VIEWER_1, 4 ); --새봄 웃음 셋팅
	
	SeabomGuideLabel12						= TriggerPackage:GetMessage1AniTextWriter		( EVENT_ALRAM25, STAND12_KEY_LABEL, 0, 50 );
	MoveKeyGuideViewer13					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_GUIDE_JUMP, EVENT_ALRAM22, true, 0, 0 ); --디폴트 SPACE 출력
	PressNextEnterChecker12 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM25, EVENT_ALRAM26, IK_RETURN, EVENT_ALRAM26); 
	PressNextEnterChecker12_1 			= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM25, EVENT_ALRAM26, IM_LBUTTON, EVENT_ALRAM26); 
	
	--[텍스트 애니 스킵 시 노출]--
	SeabomGuideLabel12_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM26, STAND12_KEY_LABEL, 0, 50 );
	PressNextEnterChecker12_skip 		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM26, EVENT_ALRAM27, IK_RETURN, EVENT_ALRAM27); 
	PressNextEnterChecker12_1_skip		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM26, EVENT_ALRAM27, IM_LBUTTON, EVENT_ALRAM27); 
	
	GMImageController09						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM27, GUI_SEABOM_NAME_TEXT + GUI_SEABOM_IMAGE + GUI_SEABOM_EMOTION_IMAGE + GUI_TEXT_VIEWER_BACK_1 + GUI_NEXT_BUTTON_1 + GUI_TEXT_VIEWER_1, 8 ); --새봄 디폴트 셋팅
	
	SeabomGuideLabel13						= TriggerPackage:GetMessage1AniTextWriter		( EVENT_ALRAM27, STAND13_KEY_LABEL, 0, 50 );
	MoveKeyGuideViewer14_1				= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_GUIDE_JUMP, EVENT_ALRAM27, true, 0, 0 ); --디폴트 SPACE 출력
	PressNextEnterChecker13				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM27, EVENT_ALRAM28, IK_RETURN, EVENT_ALRAM28); 
	PressNextEnterChecker13_1 			= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM27, EVENT_ALRAM28, IM_LBUTTON, EVENT_ALRAM28); 
	
	--[텍스트 애니 스킵 시 노출]--
	SeabomGuideLabel13_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM28, STAND13_KEY_LABEL, 0, 50 );
	PressNextEnterChecker13_skip		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM28, EVENT_ALRAM29, IK_RETURN, EVENT_ALRAM29); 
	PressNextEnterChecker13_1_skip		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM28, EVENT_ALRAM29, IM_LBUTTON, EVENT_ALRAM29); 
	
	GMImageController09_text				= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM29, GUI_TEXT_VIEWER_BACK_2 + GUI_TEXT_VIEWER_2, 0 ); --텍스트 박스만 출력	
	MoveKeyGuideViewer14					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_FRONT_JUMP, EVENT_ALRAM29, true, 0, 0 ); --W, SPACE 출력
	SeabomGuideLabel13_1					= TriggerPackage:GetMessage2TextWriter			( EVENT_ALRAM29, STAND14_KEY_LABEL, 0 );
	KeyPressChecker01						= TriggerPackage:GetKeyPressChecker				( EVENT_ALRAM29, KEYBOARD_STATE_FRONT_JUMP, EVENT_ALRAM30, EVENT_ALRAM30);--W+SPACE 체크 필요
	
	GMImageController10						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM30, GUI_SEABOM_NAME_TEXT + GUI_SEABOM_IMAGE + GUI_SEABOM_EMOTION_IMAGE + GUI_TEXT_VIEWER_BACK_1 + GUI_NEXT_BUTTON_1 + GUI_TEXT_VIEWER_1, 4 ); --새봄 웃음 셋팅
	
	SeabomGuideLabel14						= TriggerPackage:GetMessage1AniTextWriter		( EVENT_ALRAM30, STAND15_KEY_LABEL, 0, 50 );
	MoveKeyGuideViewer15					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_GUIDE_JUMP, EVENT_ALRAM30, true, 0, 0 ); --SPACE가 출력된 디폴트 키보드 허드 출력
	PressNextEnterChecker14 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM30, EVENT_ALRAM31, IK_RETURN, EVENT_ALRAM31); 
	PressNextEnterChecker14_1 			= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM30, EVENT_ALRAM31, IM_LBUTTON, EVENT_ALRAM31); 
	
	--[텍스트 애니 스킵 시 노출]--
	SeabomGuideLabel14_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM31, STAND15_KEY_LABEL, 0, 50 );
	PressNextEnterChecker14_skip		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM31, EVENT_ALRAM32, IK_RETURN, EVENT_ALRAM32); 
	PressNextEnterChecker14_1_skip		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM31, EVENT_ALRAM32, IM_LBUTTON, EVENT_ALRAM32); 
		
	GMImageController11						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM32, GUI_SEABOM_NAME_TEXT + GUI_SEABOM_IMAGE + GUI_SEABOM_EMOTION_IMAGE + GUI_TEXT_VIEWER_BACK_1 + GUI_NEXT_BUTTON_1 + GUI_TEXT_VIEWER_1, 8 ); --새봄 디폴트 셋팅
	
	SeabomGuideLabel15						= TriggerPackage:GetMessage1AniTextWriter		( EVENT_ALRAM32, STAND16_KEY_LABEL, 0, 50 );
	PressNextEnterChecker15 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM32, EVENT_ALRAM33, IK_RETURN, EVENT_ALRAM33); 
	PressNextEnterChecker15_1 			= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM32, EVENT_ALRAM33, IM_LBUTTON, EVENT_ALRAM33); 
	
	--[텍스트 애니 스킵 시 노출]--
	SeabomGuideLabel15_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM33, STAND16_KEY_LABEL, 0, 50 );
	PressNextEnterChecker15_skip		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM33, EVENT_ALRAM34, IK_RETURN, EVENT_ALRAM34); 
	PressNextEnterChecker15_1_skip		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM33, EVENT_ALRAM34, IM_LBUTTON, EVENT_ALRAM34); 

	--좌우 회피 가이드 허드 출력--
	--MoveKeyGuideViewer16		= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_AVOID_LEFT, EVENT_ALRAM21, true, 0, 0 ); --A+SPACE 연출
	--EventAlram07						= TriggerPackage:GetEventAlram							( EVENT_ALRAM20, EVENT_ALRAM21, 1000, EVENT_ALRAM21, false );
	
	--MoveKeyGuideViewer17		= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_AVOID_RIGHT, EVENT_ALRAM22, true, 0, 0 ); --D+SPACE 연출
	--EventAlram08						= TriggerPackage:GetEventAlram							( EVENT_ALRAM21, EVENT_ALRAM22, 1000, EVENT_ALRAM22, false );
		
	--MoveKeyGuideViewer18		= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_GUIDE_JUMP, EVENT_ALRAM23, true, 0, 0 ); -- 디폴트 키보드 출력
	--EventAlram09						= TriggerPackage:GetEventAlram							( EVENT_ALRAM22, EVENT_ALRAM23, 1000, EVENT_ALRAM23, false );

	-- [새봄 지시에 따른 A+SPACE, D+SPACE(회피)입력]--
	
	--GMImageController12			= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM22, GUI_SEABOM_NAME_TEXT + GUI_SEABOM_IMAGE + GUI_SEABOM_EMOTION_IMAGE + GUI_TEXT_VIEWER_BACK_1 + GUI_NEXT_BUTTON_1 + GUI_TEXT_VIEWER_1, 8 ); --새봄 디폴트 셋팅
	SeabomGuideLabel16						= TriggerPackage:GetMessage1AniTextWriter		( EVENT_ALRAM34, STAND17_KEY_LABEL, 0, 50 );
	PressNextEnterChecker16 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM34, EVENT_ALRAM35, IK_RETURN, EVENT_ALRAM35); 
	PressNextEnterChecker16_1 			= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM34, EVENT_ALRAM35, IM_LBUTTON, EVENT_ALRAM35); 
	
	--[텍스트 애니 스킵 시 노출]--
	SeabomGuideLabel16_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM35, STAND17_KEY_LABEL, 0, 50 );
	PressNextEnterChecker16_skip		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM35, EVENT_ALRAM36, IK_RETURN, EVENT_ALRAM36); 
	PressNextEnterChecker16_1_skip		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM35, EVENT_ALRAM36, IM_LBUTTON, EVENT_ALRAM36); 
		
	GMImageController11_text				= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM36, GUI_TEXT_VIEWER_BACK_2 + GUI_TEXT_VIEWER_2 + GUI_SP_GUAGE + GUI_HP_GUAGE, 0 ); --텍스트 박스만 출력		
	SeabomGuideLabel17						= TriggerPackage:GetMessage2TextWriter			( EVENT_ALRAM36, STAND18_KEY_LABEL, 0 );
	MoveKeyGuideViewer19					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_AVOID_LEFT, EVENT_ALRAM36, true, 0, 0 ); --A+SPACE 가이드연출
	KeyPressChecker02						= TriggerPackage:GetKeyPressChecker				( EVENT_ALRAM36, KEYBOARD_STATE_AVOID_LEFT, EVENT_ALRAM37, EVENT_ALRAM37);-- A+SPACE 체크 
	
	SeabomGuideLabel18						= TriggerPackage:GetMessage2TextWriter			( EVENT_ALRAM37, STAND19_KEY_LABEL, 0 );
	MoveKeyGuideViewer20					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_AVOID_RIGHT, EVENT_ALRAM37, true, 0, 0 ); --D+SPACE 가이드연출
	KeyPressChecker03						= TriggerPackage:GetKeyPressChecker				( EVENT_ALRAM37, KEYBOARD_STATE_AVOID_RIGHT, EVENT_ALRAM38, EVENT_ALRAM38);-- D+SPACE 체크 

	GMImageController13						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM38, GUI_SEABOM_NAME_TEXT + GUI_SEABOM_IMAGE + GUI_SEABOM_EMOTION_IMAGE + GUI_TEXT_VIEWER_BACK_1 + GUI_NEXT_BUTTON_1 + GUI_TEXT_VIEWER_1, 4 ); --새봄 웃음 셋팅
	
	SeabomGuideLabel19						= TriggerPackage:GetMessage1AniTextWriter		( EVENT_ALRAM38, STAND20_KEY_LABEL, 0, 50 );
	MoveKeyGuideViewer21					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_GUIDE_JUMP, EVENT_ALRAM38, true, 0, 0 ); -- 디폴트 키보드 출력
	PressNextEnterChecker17 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM38, EVENT_ALRAM39, IK_RETURN, EVENT_ALRAM39); 
	PressNextEnterChecker17_1 			= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM38, EVENT_ALRAM39, IM_LBUTTON, EVENT_ALRAM39); 
	
	--[텍스트 애니 스킵 시 노출]--
	SeabomGuideLabel19_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM39, STAND20_KEY_LABEL, 0, 50 );
	PressNextEnterChecker17_skip 		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM39, EVENT_ALRAM40, IK_RETURN, EVENT_ALRAM40); 
	PressNextEnterChecker17_1_skip 	= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM39, EVENT_ALRAM40, IM_LBUTTON, EVENT_ALRAM40); 
		
	GMImageController14						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM40, GUI_TEXT_VIEWER_BACK_2 + GUI_NEXT_BUTTON_2 + GUI_SP_ARROW + GUI_TEXT_VIEWER_2 + GUI_SP_GUAGE + GUI_HP_GUAGE, 0 ); --텍스트 박스 +에로우
	
	SeabomGuideLabel20						= TriggerPackage:GetMessage2TextWriter			( EVENT_ALRAM40, STAND21_KEY_LABEL, 0 );
	PressNextEnterChecker18 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM40, EVENT_ALRAM41, IK_RETURN, EVENT_ALRAM41); 
	PressNextEnterChecker18_1 			= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM40, EVENT_ALRAM41, IM_LBUTTON, EVENT_ALRAM41); 
	
	--벽점프용 블럭 생성--
	--Point_block_00						= TriggerPackage:GetSceneVisibleEx				( 0, false, "tuto_test_block.scn" );
	--Point_block_01						= TriggerPackage:GetSceneVisibleEx				( EVENT_ALRAM26, true, "tuto_test_block.scn" );
	
	GMImageController15						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM41, GUI_SEABOM_NAME_TEXT + GUI_SEABOM_IMAGE + GUI_SEABOM_EMOTION_IMAGE + GUI_TEXT_VIEWER_BACK_1 + GUI_NEXT_BUTTON_1 + GUI_TEXT_VIEWER_1, 8 ); --새봄 디폴트 셋팅
	SeabomGuideLabel21						= TriggerPackage:GetMessage1AniTextWriter		( EVENT_ALRAM41, STAND22_KEY_LABEL, 0, 50 );
	PressNextEnterChecker19 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM41, EVENT_ALRAM42, IK_RETURN, EVENT_ALRAM42); 
	PressNextEnterChecker19_1 			= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM41, EVENT_ALRAM42, IM_LBUTTON, EVENT_ALRAM42); 
	
	--[텍스트 애니 스킵 시 노출]--
	SeabomGuideLabel21_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM42, STAND22_KEY_LABEL, 0, 50 );
	PressNextEnterChecker19_skip		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM42, EVENT_ALRAM43, IK_RETURN, EVENT_ALRAM43); 
	PressNextEnterChecker19_1_skip 	= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM42, EVENT_ALRAM43, IM_LBUTTON, EVENT_ALRAM43); 
		
	GMImageController15_text				= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM43, GUI_TEXT_VIEWER_BACK_2 + GUI_TEXT_VIEWER_2 + GUI_SP_GUAGE + GUI_HP_GUAGE, 0 ); --텍스트 박스
	SeabomGuideLabel22						= TriggerPackage:GetMessage2TextWriter			( EVENT_ALRAM43, STAND23_KEY_LABEL, 0 );
	MoveKeyGuideViewer22					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_BLOCK_JUMP, EVENT_ALRAM43, true, 0, 0 ); --W+SPACE 가이드연출
	KeyPressChecker04						= TriggerPackage:GetKeyPressChecker				( EVENT_ALRAM43, KEYBOARD_STATE_BLOCK_JUMP, 0, EVENT_ALRAM44);-- 벽점프 상태 체크
	ActorAttackCheck01 						= TriggerPackage:GetActorAttackObserverEx			( EVENT_ALRAM43, EVENT_ALRAM44, "BOUNDJUMP", EVENT_ALRAM44 );	-- 벽점프 상태 체크
	
	GMImageController16						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM44, GUI_SEABOM_NAME_TEXT + GUI_SEABOM_IMAGE + GUI_SEABOM_EMOTION_IMAGE + GUI_TEXT_VIEWER_BACK_1 + GUI_NEXT_BUTTON_1 + GUI_TEXT_VIEWER_1, 4 ); --새봄 웃음 셋팅
	SeabomGuideLabel23						= TriggerPackage:GetMessage1AniTextWriter		( EVENT_ALRAM44, STAND24_KEY_LABEL, 0, 50 );
	MoveKeyGuideViewer23					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_GUIDE_JUMP, EVENT_ALRAM44, true, 0, 0 ); -- 디폴트 키보드 출력
	PressNextEnterChecker20 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM44, EVENT_ALRAM45, IK_RETURN, EVENT_ALRAM45); 
	PressNextEnterChecker20_1 			= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM44, EVENT_ALRAM45, IM_LBUTTON, EVENT_ALRAM45); 
	
	--[텍스트 애니 스킵 시 노출]--
	SeabomGuideLabel23_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM45, STAND24_KEY_LABEL, 0, 50 );
	PressNextEnterChecker20_skip 		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM45, EVENT_ALRAM46, IK_RETURN, EVENT_ALRAM46); 
	PressNextEnterChecker20_1_skip 	= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM45, EVENT_ALRAM46, IM_LBUTTON, EVENT_ALRAM46); 
		
	--Point_block_02						= TriggerPackage:GetSceneVisibleEx				( EVENT_ALRAM28, false, "tuto_test_block.scn" );
	
	GMImageController17						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM46, GUI_SEABOM_NAME_TEXT + GUI_SEABOM_IMAGE + GUI_SEABOM_EMOTION_IMAGE + GUI_TEXT_VIEWER_BACK_1 + GUI_NEXT_BUTTON_1 + GUI_TEXT_VIEWER_1, 8 ); --새봄 디폴트 셋팅
	SeabomGuideLabel24						= TriggerPackage:GetMessage1AniTextWriter		( EVENT_ALRAM46, STAND25_KEY_LABEL, 0, 50 ); -- 자유이동
	PressNextEnterChecker21 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM46, EVENT_ALRAM47, IK_RETURN, EVENT_ALRAM47); 
	PressNextEnterChecker21_1 			= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM46, EVENT_ALRAM47, IM_LBUTTON, EVENT_ALRAM47); 

	--[텍스트 애니 스킵 시 노출]--	
	SeabomGuideLabel24_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM47, STAND25_KEY_LABEL, 0, 50 ); -- 자유이동
	PressNextEnterChecker21_skip 		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM47, EVENT_ALRAM48, IK_RETURN, EVENT_ALRAM48); 
	PressNextEnterChecker21_1_skip 	= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM47, EVENT_ALRAM48, IM_LBUTTON, EVENT_ALRAM48); 
		
	GMImageController17_text				= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM48, GUI_TEXT_VIEWER_BACK_2 + GUI_TEXT_VIEWER_2 + GUI_SP_GUAGE + GUI_HP_GUAGE, 0 ); --텍스트 박스
	SeabomGuideLabel23_1					= TriggerPackage:GetMessage2TextWriter			( EVENT_ALRAM48, STAND26_KEY_LABEL, 0 ); -- 자유이동
------------------------------------------------------	
	Point_Arrow_00								= TriggerPackage:GetSceneVisibleEx					( 0, false, "lc_arrow_tuto_01.scn" );
	Point_Arrow_01								= TriggerPackage:GetSceneVisibleEx					( 0, false, "lc_arrow_tuto_02.scn" );
	
	Point_Arrow_02								= TriggerPackage:GetSceneVisibleEx					( EVENT_ALRAM48, true, "lc_arrow_tuto_01.scn" );
	Point_Arrow_03								= TriggerPackage:GetSceneVisibleEx					( EVENT_ALRAM48, false, "lc_arrow_tuto_02.scn" );
		
	-- 위치 ( "트리거 박스이름", 발생시킬 이벤트 ) --
	GateOpen_Step01							= TriggerPackage:GetCollisionChecker					( "trg_arrive_tuto_01", EVENT_ALRAM49, false );
	
	--( 등록시작 이벤트, 이벤트 컨트롤러 이름 ) 지정한 이벤트가 시작되면 이벤트 컨트롤러를 등록시킴-- 
	RegGateOpen_Step01						= TriggerPackage:GetObserverRegister					( EVENT_ALRAM46, GateOpen_Step01);
	
	Point_Arrow_04								= TriggerPackage:GetSceneVisibleEx					( EVENT_ALRAM46, false, "lc_arrow_tuto_01.scn");
	
	GMImageController18						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM49, GUI_SEABOM_NAME_TEXT + GUI_SEABOM_IMAGE + GUI_SEABOM_EMOTION_IMAGE + GUI_TEXT_VIEWER_BACK_1 + GUI_NEXT_BUTTON_1 + GUI_TEXT_VIEWER_1, 8 ); --새봄 디폴트 셋팅
	
	SeabomGuideLabel25						= TriggerPackage:GetMessage1AniTextWriter		( EVENT_ALRAM49, STAND27_KEY_LABEL, 0, 50 );
	PressNextEnterChecker22 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM49, EVENT_ALRAM50, IK_RETURN, EVENT_ALRAM50); 
	PressNextEnterChecker22_1 			= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM49, EVENT_ALRAM50, IM_LBUTTON, EVENT_ALRAM50); 
	
	--[텍스트 애니 스킵 시 노출]--	
	SeabomGuideLabel25_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM50, STAND27_KEY_LABEL, 0, 50 );
	PressNextEnterChecker22_skip 		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM50, EVENT_ALRAM51, IK_RETURN, EVENT_ALRAM51); 
	PressNextEnterChecker22_1_skip 	= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM50, EVENT_ALRAM51, IM_LBUTTON, EVENT_ALRAM51); 
	
	
	-- 게이트 닫아둠--
	Gate_Close_01_1							= TriggerPackage:GetBlastSceneVisible			( 0, true, "Object01" );
	Gate_Close_01_2							= TriggerPackage:GetBlastSceneVisible			( 0, true, "Object02" );
	--Gate_Close_01							= TriggerPackage:GetSceneVisibleEx				( 0, true, "tuto_test_door_close.scn" );
	Gate_Close_02								= TriggerPackage:GetSceneVisibleEx				( 0, false, "tuto_test_door_open.scn" );
	Gate_Close_03								= TriggerPackage:GetSceneVisibleEx				( 0, false, "tuto_test_door_ani.scn" );
		
	--( true 또는 false, "씬 이름", 이벤트이름 ) 지정한 이벤트가 발생하면 지정된 씬파일을 보이거나 보이지 않게 함) --
	Gate_Open_01_1								= TriggerPackage:GetBlastSceneVisible			( EVENT_ALRAM51, false, "Object01" );
	Gate_Open_01_2								= TriggerPackage:GetBlastSceneVisible			( EVENT_ALRAM51, false, "Object02" );
	--Gate_Open_01								= TriggerPackage:GetSceneVisibleEx				( EVENT_ALRAM32, false, "tuto_test_door_close.scn" );
	Gate_Open_02								= TriggerPackage:GetSceneVisibleEx				( EVENT_ALRAM51, false, "tuto_test_door_open.scn" );
	Gate_Open_03								= TriggerPackage:GetSceneVisibleEx				( EVENT_ALRAM51, true, "tuto_test_door_ani.scn" );
	
	--게이트 열리는 시간 체크하여 닫힌 게이트 씬 보여줌--
	EventAlram10									= TriggerPackage:GetEventAlram							( EVENT_ALRAM51, EVENT_ALRAM52, 900, EVENT_ALRAM52, false );
	
	--Gate_Stop_01								= TriggerPackage:GetSceneVisibleEx					( EVENT_ALRAM33, false, "tuto_test_door_close.scn" );
	Gate_Stop_02									= TriggerPackage:GetSceneVisibleEx					( EVENT_ALRAM52, true, "tuto_test_door_open.scn");
	Gate_Stop_03									= TriggerPackage:GetSceneVisibleEx					( EVENT_ALRAM52, false, "tuto_test_door_ani.scn");
	
	GMImageController19						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM52, GUI_SEABOM_NAME_TEXT + GUI_SEABOM_IMAGE + GUI_SEABOM_EMOTION_IMAGE + GUI_TEXT_VIEWER_BACK_1 + GUI_NEXT_BUTTON_1 + GUI_TEXT_VIEWER_1, 8 ); --새봄 디폴트 셋팅
	
	SeabomGuideLabel26						= TriggerPackage:GetMessage1AniTextWriter		( EVENT_ALRAM52, STAND28_KEY_LABEL, 0, 50 );
	MoveKeyGuideViewer24					= TriggerPackage:GetGUIViewer							( KEYBOARD_STATE_RUN, EVENT_ALRAM52, true, 0, 0 ); --W+SPACE 가이드연출 (디폴트로 둘지 결정해야함)
	PressNextEnterChecker23 				= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM52, EVENT_ALRAM53, IK_RETURN, EVENT_ALRAM53); 
	PressNextEnterChecker23_1 			= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM52, EVENT_ALRAM53, IM_LBUTTON, EVENT_ALRAM53); 
	
	--[텍스트 애니 스킵 시 노출]--	
	SeabomGuideLabel26_skip				= TriggerPackage:GetMessage1TextWriter			( EVENT_ALRAM53, STAND28_KEY_LABEL, 0, 50 );
	PressNextEnterChecker23_skip 		= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM53, EVENT_ALRAM54, IK_RETURN, EVENT_ALRAM54); 
	PressNextEnterChecker23_1_skip 	= TriggerPackage:GetKeyPressCheckerEx			( EVENT_ALRAM53, EVENT_ALRAM54, IM_LBUTTON, EVENT_ALRAM54); 
	
	GMImageController20						= TriggerPackage:GetGUIGMImageController			( EVENT_ALRAM54, GUI_TEXT_VIEWER_BACK_2 + GUI_TEXT_VIEWER_2 + GUI_SP_GUAGE + GUI_HP_GUAGE, 8 ); --새봄 디폴트 셋팅
	
	SeabomGuideLabel27						= TriggerPackage:GetMessage2TextWriter			( EVENT_ALRAM54, STAND29_KEY_LABEL, 0 );
	
	Point_Arrow_05								= TriggerPackage:GetSceneVisibleEx					( EVENT_ALRAM51, false, "lc_arrow_tuto_01.scn");
	Point_Arrow_06								= TriggerPackage:GetSceneVisibleEx					( EVENT_ALRAM51, true, "lc_arrow_tuto_02.scn");
	
	GateOpen_Step02							= TriggerPackage:GetCollisionChecker					( "trg_arrive_tuto_02", EVENT_ALRAM55, false );
	
	FadeInEffect_End							= TriggerPackage:GetFadeInOutEffect					( EVENT_ALRAM55, 1500, false );
	
	EventAlram_congra							= TriggerPackage:GetEventAlram							( EVENT_ALRAM55, EVENT_ALRAM56, 1000, EVENT_ALRAM56, false );
	TutorialPrize									= TriggerPackage:GetTutorialPrize					( EVENT_ALRAM56, CONGRATULATION );

	--FadeInEffect_End_01					= TriggerPackage:GetFadeInOutEffect					( CONGRATULATION, 4000, true );
	
	Complete										= TriggerPackage:GetTutorialComplete					( CONGRATULATION );
	
	--( 등록시작 이벤트, 이벤트 컨트롤러 이름 ) 지정한 이벤트가 시작되면 이벤트 컨트롤러를 등록시킴-- 
	RegGateOpen_Step02						= TriggerPackage:GetObserverRegister					( EVENT_ALRAM51, GateOpen_Step02);
	
	--해당 이벤트 동안 키 입력 제어--
	KeyPermiter01								= TriggerPackage:GetKeyPermiter						( TutorialSystem:GetInputSystem(), 0, 0, false ); -- 첫 인사 새봄 대사 출력동안 입력 불가
	KeyPermiter02								= TriggerPackage:GetKeyPermiter						( TutorialSystem:GetInputSystem(), EVENT_ALRAM15, EVENT_ALRAM15, true ); -- W,A,S,D 키보드 허드 연출 후 조작가능
	KeyPermiter03								= TriggerPackage:GetKeyPermiter						( TutorialSystem:GetInputSystem(), EVENT_ALRAM20, EVENT_ALRAM20, false ); -- 이동 조작 후 입력 불가
	KeyPermiter04								= TriggerPackage:GetKeyPermiter						( TutorialSystem:GetInputSystem(), EVENT_ALRAM24, EVENT_ALRAM24, true ); -- 점프 조작가능
	KeyPermiter05								= TriggerPackage:GetKeyPermiter						( TutorialSystem:GetInputSystem(), EVENT_ALRAM26, EVENT_ALRAM26, false ); -- 점프 후 입력불가
	KeyPermiter06								= TriggerPackage:GetKeyPermiter						( TutorialSystem:GetInputSystem(), EVENT_ALRAM29, EVENT_ALRAM29, true ); -- 앞으로 점프 조작가능
	KeyPermiter07								= TriggerPackage:GetKeyPermiter						( TutorialSystem:GetInputSystem(), EVENT_ALRAM30, EVENT_ALRAM30, false ); -- 앞으로 점프 후 입력불가
	KeyPermiter08								= TriggerPackage:GetKeyPermiter						( TutorialSystem:GetInputSystem(), EVENT_ALRAM36, EVENT_ALRAM36, true ); -- 회피조작 입력 가능
	KeyPermiter09								= TriggerPackage:GetKeyPermiter						( TutorialSystem:GetInputSystem(), EVENT_ALRAM38, EVENT_ALRAM38, false ); -- 회피조작후 입력불가 
	KeyPermiter10								= TriggerPackage:GetKeyPermiter						( TutorialSystem:GetInputSystem(), EVENT_ALRAM43, EVENT_ALRAM43, true ); -- 벽점프 입력 가능
	KeyPermiter11								= TriggerPackage:GetKeyPermiter						( TutorialSystem:GetInputSystem(), EVENT_ALRAM44, EVENT_ALRAM44, false ); -- 벽점프 후 입력불가
	KeyPermiter12								= TriggerPackage:GetKeyPermiter						( TutorialSystem:GetInputSystem(), EVENT_ALRAM48, EVENT_ALRAM48, true ); -- 자유조작 입력 가능
	KeyPermiter13								= TriggerPackage:GetKeyPermiter						( TutorialSystem:GetInputSystem(), EVENT_ALRAM49, 0, true ); -- 문 열리기전 입력불가
	KeyPermiter14								= TriggerPackage:GetKeyPermiter						( TutorialSystem:GetInputSystem(), EVENT_ALRAM54, EVENT_ALRAM53, true ); -- 빨리달리기 후 입력가능
	
	SpawnHelper									= TriggerPackage:GetSpawnHelper						( SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true );
	--KeyPressChecker				= TriggerPackage:GetKeyPressChecker				( KEY_PRESS_CHANGED, ESC_PRESSED );
	--KeyPressChecker				= TriggerPackage:GetKeyPressChecker				( 시작이벤트, 키 상태, 발생이벤트, 종료이벤트);
	--KeyPressChecker				= TriggerPackage:GetKeyPressChecker				( 0, KEYBOARD_STATE_GUIDE, 0, 0);

	EasyKeyControlStage:Register( FadeInEffect );
	EasyKeyControlStage:Register( FadeInEffect_End );
	--EasyKeyControlStage:Register( FadeInEffect_End_01 );

	EasyKeyControlStage:Register( GMImageController01 );
	EasyKeyControlStage:Register( GMImageController02 );
	EasyKeyControlStage:Register( GMImageController03 );
	EasyKeyControlStage:Register( GMImageController04 );
	EasyKeyControlStage:Register( GMImageController05 );
	EasyKeyControlStage:Register( GMImageController06 );
	EasyKeyControlStage:Register( GMImageController07 );
	EasyKeyControlStage:Register( GMImageController07_text );
	EasyKeyControlStage:Register( GMImageController08 );
	EasyKeyControlStage:Register( GMImageController09 );
	EasyKeyControlStage:Register( GMImageController09_text );
	EasyKeyControlStage:Register( GMImageController10 );
	EasyKeyControlStage:Register( GMImageController11 );
	EasyKeyControlStage:Register( GMImageController11_text );
	EasyKeyControlStage:Register( GMImageController13 );
	EasyKeyControlStage:Register( GMImageController14 );
	EasyKeyControlStage:Register( GMImageController15 );
	EasyKeyControlStage:Register( GMImageController15_text );
	EasyKeyControlStage:Register( GMImageController16 );
	EasyKeyControlStage:Register( GMImageController17 );
	EasyKeyControlStage:Register( GMImageController17_text );
	EasyKeyControlStage:Register( GMImageController18 );
	EasyKeyControlStage:Register( GMImageController19 );
	EasyKeyControlStage:Register( GMImageController20 );
				
	EasyKeyControlStage:Register( SeabomGuideLabel01 );
	EasyKeyControlStage:Register( SeabomGuideLabel02 );
	EasyKeyControlStage:Register( SeabomGuideLabel03 );
	EasyKeyControlStage:Register( SeabomGuideLabel04 );
	EasyKeyControlStage:Register( SeabomGuideLabel05 );
	EasyKeyControlStage:Register( SeabomGuideLabel06 );
	EasyKeyControlStage:Register( SeabomGuideLabel07 );
	EasyKeyControlStage:Register( SeabomGuideLabel08 );
	EasyKeyControlStage:Register( SeabomGuideLabel09 );
	EasyKeyControlStage:Register( SeabomGuideLabel10 );
	EasyKeyControlStage:Register( SeabomGuideLabel11 );
	EasyKeyControlStage:Register( SeabomGuideLabel12 );
	EasyKeyControlStage:Register( SeabomGuideLabel13 );
	EasyKeyControlStage:Register( SeabomGuideLabel13_1 );
	EasyKeyControlStage:Register( SeabomGuideLabel14 );
	EasyKeyControlStage:Register( SeabomGuideLabel15 );
	EasyKeyControlStage:Register( SeabomGuideLabel16 );
	EasyKeyControlStage:Register( SeabomGuideLabel17 );
	EasyKeyControlStage:Register( SeabomGuideLabel18 );
	EasyKeyControlStage:Register( SeabomGuideLabel19 );
	EasyKeyControlStage:Register( SeabomGuideLabel20 );
	EasyKeyControlStage:Register( SeabomGuideLabel21 );
	EasyKeyControlStage:Register( SeabomGuideLabel22 );
	EasyKeyControlStage:Register( SeabomGuideLabel23 );
	EasyKeyControlStage:Register( SeabomGuideLabel23_1 );
	EasyKeyControlStage:Register( SeabomGuideLabel24 );
	EasyKeyControlStage:Register( SeabomGuideLabel25 );
	EasyKeyControlStage:Register( SeabomGuideLabel26 );
	EasyKeyControlStage:Register( SeabomGuideLabel27 );
	
	EasyKeyControlStage:Register( SeabomGuideLabel01_skip);
	EasyKeyControlStage:Register( SeabomGuideLabel02_skip);
	EasyKeyControlStage:Register( SeabomGuideLabel03_skip);
	EasyKeyControlStage:Register( SeabomGuideLabel04_skip);
	EasyKeyControlStage:Register( SeabomGuideLabel09_skip);
	EasyKeyControlStage:Register( SeabomGuideLabel10_skip);
	EasyKeyControlStage:Register( SeabomGuideLabel12_skip);
	EasyKeyControlStage:Register( SeabomGuideLabel13_skip);
	EasyKeyControlStage:Register( SeabomGuideLabel14_skip);
	EasyKeyControlStage:Register( SeabomGuideLabel15_skip);
	EasyKeyControlStage:Register( SeabomGuideLabel16_skip);
	EasyKeyControlStage:Register( SeabomGuideLabel19_skip);
	EasyKeyControlStage:Register( SeabomGuideLabel21_skip);
	EasyKeyControlStage:Register( SeabomGuideLabel23_skip);
	EasyKeyControlStage:Register( SeabomGuideLabel24_skip);
	EasyKeyControlStage:Register( SeabomGuideLabel25_skip);
	EasyKeyControlStage:Register( SeabomGuideLabel26_skip);
	
	EasyKeyControlStage:Register( PressNextEnterChecker01 );
	EasyKeyControlStage:Register( PressNextEnterChecker01_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker02 );
	EasyKeyControlStage:Register( PressNextEnterChecker02_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker03 );
	EasyKeyControlStage:Register( PressNextEnterChecker03_skip );
	--EasyKeyControlStage:Register( PressNextEnterChecker04 );
	EasyKeyControlStage:Register( PressNextEnterChecker05 );
	EasyKeyControlStage:Register( PressNextEnterChecker06 );
	EasyKeyControlStage:Register( PressNextEnterChecker07 );
	EasyKeyControlStage:Register( PressNextEnterChecker08 );
	EasyKeyControlStage:Register( PressNextEnterChecker09 );
	EasyKeyControlStage:Register( PressNextEnterChecker09_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker10 );
	EasyKeyControlStage:Register( PressNextEnterChecker10_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker11 );	
	EasyKeyControlStage:Register( PressNextEnterChecker12 );	
	EasyKeyControlStage:Register( PressNextEnterChecker12_skip );	
	EasyKeyControlStage:Register( PressNextEnterChecker13 );	
	EasyKeyControlStage:Register( PressNextEnterChecker13_skip );	
	EasyKeyControlStage:Register( PressNextEnterChecker14 );	
	EasyKeyControlStage:Register( PressNextEnterChecker14_skip );	
	EasyKeyControlStage:Register( PressNextEnterChecker15 );	
	EasyKeyControlStage:Register( PressNextEnterChecker15_skip );	
	EasyKeyControlStage:Register( PressNextEnterChecker16 );	
	EasyKeyControlStage:Register( PressNextEnterChecker16_skip );	
	EasyKeyControlStage:Register( PressNextEnterChecker17 );	
	EasyKeyControlStage:Register( PressNextEnterChecker17_skip );	
	EasyKeyControlStage:Register( PressNextEnterChecker18 );	
	EasyKeyControlStage:Register( PressNextEnterChecker19 );	
	EasyKeyControlStage:Register( PressNextEnterChecker19_skip );	
	EasyKeyControlStage:Register( PressNextEnterChecker20 );
	EasyKeyControlStage:Register( PressNextEnterChecker20_skip );		
	EasyKeyControlStage:Register( PressNextEnterChecker21 );
	EasyKeyControlStage:Register( PressNextEnterChecker21_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker22 );
	EasyKeyControlStage:Register( PressNextEnterChecker22_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker23 );
	EasyKeyControlStage:Register( PressNextEnterChecker23_skip );
	
	EasyKeyControlStage:Register( PressNextEnterChecker01_1 );
	EasyKeyControlStage:Register( PressNextEnterChecker01_1_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker02_1 );
	EasyKeyControlStage:Register( PressNextEnterChecker02_1_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker03_1 );
	EasyKeyControlStage:Register( PressNextEnterChecker03_1_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker09_1 );
	EasyKeyControlStage:Register( PressNextEnterChecker09_1_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker10_1 );
	EasyKeyControlStage:Register( PressNextEnterChecker10_1_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker12_1 );
	EasyKeyControlStage:Register( PressNextEnterChecker12_1_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker13_1 );
	EasyKeyControlStage:Register( PressNextEnterChecker13_1_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker14_1 );
	EasyKeyControlStage:Register( PressNextEnterChecker14_1_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker15_1 );	
	EasyKeyControlStage:Register( PressNextEnterChecker15_1_skip );	
	EasyKeyControlStage:Register( PressNextEnterChecker16_1 );
	EasyKeyControlStage:Register( PressNextEnterChecker16_1_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker17_1 );
	EasyKeyControlStage:Register( PressNextEnterChecker17_1_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker18_1 );
	EasyKeyControlStage:Register( PressNextEnterChecker19_1 );
	EasyKeyControlStage:Register( PressNextEnterChecker19_1_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker20_1 );
	EasyKeyControlStage:Register( PressNextEnterChecker20_1_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker21_1 );
	EasyKeyControlStage:Register( PressNextEnterChecker21_1_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker22_1 );
	EasyKeyControlStage:Register( PressNextEnterChecker22_1_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker23_1 );
	EasyKeyControlStage:Register( PressNextEnterChecker23_1_skip );
	
	EasyKeyControlStage:Register( PressNextEnterChecker100 );
	EasyKeyControlStage:Register( PressNextEnterChecker100_skip );
	EasyKeyControlStage:Register( PressNextEnterChecker101 );
	EasyKeyControlStage:Register( PressNextEnterChecker101_skip );
			
	--EasyKeyControlStage:Register( MoveKeyGuideViewer01 );
	--EasyKeyControlStage:Register( MoveKeyGuideViewer02 );
	--EasyKeyControlStage:Register( MoveKeyGuideViewer03 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer04 );
	--EasyKeyControlStage:Register( MoveKeyGuideViewer05 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer06 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer07 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer08 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer09 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer10 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer11 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer12 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer13 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer14 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer14_1 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer15 );
	--EasyKeyControlStage:Register( MoveKeyGuideViewer16 );
	--EasyKeyControlStage:Register( MoveKeyGuideViewer17 );
	--EasyKeyControlStage:Register( MoveKeyGuideViewer18 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer19 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer20 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer21 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer22 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer23 );
	EasyKeyControlStage:Register( MoveKeyGuideViewer24 );
		
	EasyKeyControlStage:Register( EventAlram );
	--EasyKeyControlStage:Register( EventAlram02 );
	--EasyKeyControlStage:Register( EventAlram03 );
	--EasyKeyControlStage:Register( EventAlram04 );
	--EasyKeyControlStage:Register( EventAlram05 );
	--EasyKeyControlStage:Register( EventAlram06 );
	--EasyKeyControlStage:Register( EventAlram07 );
	--EasyKeyControlStage:Register( EventAlram08 );
	--EasyKeyControlStage:Register( EventAlram09 );
	EasyKeyControlStage:Register( EventAlram10 );
	EasyKeyControlStage:Register( EventAlram_congra );
		
	EasyKeyControlStage:Register( KeyPermiter01 );
	EasyKeyControlStage:Register( KeyPermiter02 );
	EasyKeyControlStage:Register( KeyPermiter03 );
	EasyKeyControlStage:Register( KeyPermiter04 );
	EasyKeyControlStage:Register( KeyPermiter05 );
	EasyKeyControlStage:Register( KeyPermiter06 );
	EasyKeyControlStage:Register( KeyPermiter07 );
	EasyKeyControlStage:Register( KeyPermiter08 );
	EasyKeyControlStage:Register( KeyPermiter09 );
	EasyKeyControlStage:Register( KeyPermiter10 );
	EasyKeyControlStage:Register( KeyPermiter11 );
	EasyKeyControlStage:Register( KeyPermiter12 );
	EasyKeyControlStage:Register( KeyPermiter13 );
	EasyKeyControlStage:Register( KeyPermiter14 );
						
	EasyKeyControlStage:Register( KeyPressChecker00 );
	EasyKeyControlStage:Register( KeyPressChecker01 );
	EasyKeyControlStage:Register( KeyPressChecker02 );
	EasyKeyControlStage:Register( KeyPressChecker03 );
	EasyKeyControlStage:Register( KeyPressChecker04 );
	
	EasyKeyControlStage:Register( ActorAttackCheck01 );
	
	--EasyKeyControlStage:Register( GateOpen_Step01 );
	--EasyKeyControlStage:Register( GateOpen_Step02 );
	EasyKeyControlStage:Register( RegGateOpen_Step01 );
	EasyKeyControlStage:Register( RegGateOpen_Step02 );
	
	EasyKeyControlStage:Register( Gate_Open_01_1 );
	EasyKeyControlStage:Register( Gate_Open_01_2 );
	--EasyKeyControlStage:Register( Gate_Open_01 );
	EasyKeyControlStage:Register( Gate_Open_02 );
	EasyKeyControlStage:Register( Gate_Open_03 );
	
	EasyKeyControlStage:Register( Gate_Close_01_1 );
	EasyKeyControlStage:Register( Gate_Close_01_2 );
	--EasyKeyControlStage:Register( Gate_Close_01 );
	EasyKeyControlStage:Register( Gate_Close_02 );
	EasyKeyControlStage:Register( Gate_Close_03 );
	
	--EasyKeyControlStage:Register( Gate_Stop_01 );
	EasyKeyControlStage:Register( Gate_Stop_02 );
	EasyKeyControlStage:Register( Gate_Stop_03 );
	
	EasyKeyControlStage:Register( Point_Arrow_00);
	EasyKeyControlStage:Register( Point_Arrow_01);
	EasyKeyControlStage:Register( Point_Arrow_02);
	EasyKeyControlStage:Register( Point_Arrow_03);
	EasyKeyControlStage:Register( Point_Arrow_04);
	EasyKeyControlStage:Register( Point_Arrow_05);
	EasyKeyControlStage:Register( Point_Arrow_06);
		
	--EasyKeyControlStage:Register( Point_block_00 );
	--EasyKeyControlStage:Register( Point_block_01 );
	--EasyKeyControlStage:Register( Point_block_02 );
				
	EasyKeyControlStage:Register( SpawnHelper );
	--EasyKeyControlStage:Register( KeyPressChecker );
	EasyKeyControlStage:Register( TutorialPrize );
	EasyKeyControlStage:Register( Complete );
	
	TutorialSystem:AddStage( 0, EasyKeyControlStage );
	
end
-- <---------------------------------------------------> --
	
	
	