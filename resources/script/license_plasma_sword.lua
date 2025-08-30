
-- GetSpawnHelper�� ���

SPAWN_FOCUS_ACTOR							= 0
SPAWN_ENERMY_SENTRYGUN						= 1
SPAWN_ENERMY_SENTYFORCE						= 2
SPAWN_TRIGGER_BEGIN							= 0
SPAWN_NOTIFY								= 1

-- Notify ID�̺�Ʈ �޼���
NI_COOUNTERSWORD_LOAD						= 101
NI_UNLOCK_ACTOR								= 102
NI_ATTACK_WEAK_PLASM_SWORD					= 103
NI_SCORE_COMPLETED01						= 104
NI_SCORE_COMPLETED03						= 105
NI_ATTACK_2_PLASMA_SWORD					= 106
NI_Text_CompleteTip01_OFF					= 107
NI_Text_Welcom01_OFF						= 108
NI_Text_Welcom02_OFF						= 109
NI_START									= 110
NI_SCORE_COMPLETED04						= 111
NI_ATTACK_STRONG1_PLASMA_SWORD				= 112
NI_ATTACK_JUMP_PLASMA_SWORD					= 113
NI_Text_Welcom03_OFF						= 114
NI_SCORE_COMPLETED05						= 115
NI_SCORE_COMPLETED02						= 116
NI_ATTACK_STRONG_PLASMA_SWORD	 			= 117
NI_TXTON01									= 118
NI_Text_CompleteTip02_OFF					= 119
NI_TXTON02									= 120
NI_Text_CompleteTip03_OFF					= 121
NI_TXTON03									= 122
NI_CONGRATULATION							= 123
NI_Text_ClearStep01_OFF						= 124

-- �ؽ�Ʈ
LoadStringTable( "Language/Script/challenge_string_table.x7" );

TXT_Weapon_PlasmaSword_01=GetString( "TXT_Weapon_PlasmaSword_01" );
TXT_Weapon_PlasmaSword_02=GetString( "TXT_Weapon_PlasmaSword_02" );
TXT_Weapon_PlasmaSword_03=GetString( "TXT_Weapon_PlasmaSword_03" );
TXT_Weapon_PlasmaSword_04=GetString( "TXT_Weapon_PlasmaSword_04" );
TXT_Weapon_PlasmaSword_05=GetString( "TXT_Weapon_PlasmaSword_05" );
TXT_Weapon_PlasmaSword_06=GetString( "TXT_Weapon_PlasmaSword_06" );
TXT_Weapon_PlasmaSword_07=GetString( "TXT_Weapon_PlasmaSword_07" );
TXT_Weapon_PlasmaSword_08=GetString( "TXT_Weapon_PlasmaSword_08" );
TXT_Weapon_PlasmaSword_09=GetString( "TXT_Weapon_PlasmaSword_09" );
TXT_Weapon_PlasmaSword_10=GetString( "TXT_Weapon_PlasmaSword_10" );
TXT_Weapon_PlasmaSword_11=GetString( "TXT_Weapon_PlasmaSword_11" );
TXT_Weapon_PlasmaSword_12=GetString( "TXT_Weapon_PlasmaSword_12" );
TXT_Weapon_PlasmaSword_13=GetString( "TXT_Weapon_PlasmaSword_13" );
TXT_Weapon_PlasmaSword_14=GetString( "TXT_Weapon_PlasmaSword_14" );
TXT_Weapon_PlasmaSword_15=GetString( "TXT_Weapon_PlasmaSword_15" );
TXT_Weapon_PlasmaSword_16=GetString( "TXT_Weapon_PlasmaSword_16" );
TXT_Weapon_PlasmaSword_17=GetString( "TXT_Weapon_PlasmaSword_17" );
TXT_Weapon_PlasmaSword_18=GetString( "TXT_Weapon_PlasmaSword_18" );
TXT_Weapon_PlasmaSword_19=GetString( "TXT_Weapon_PlasmaSword_19" );
TXT_Weapon_PlasmaSword_20=GetString( "TXT_Weapon_PlasmaSword_20" );
TXT_Weapon_PlasmaSword_21=GetString( "TXT_Weapon_PlasmaSword_21" );
TXT_Weapon_PlasmaSword_22=GetString( "TXT_Weapon_PlasmaSword_22" );
TXT_Weapon_PlasmaSword_23=GetString( "TXT_Weapon_PlasmaSword_23" );
TXT_Weapon_PlasmaSword_24=GetString( "TXT_Weapon_PlasmaSword_24" );
TXT_Weapon_PlasmaSword_25=GetString( "TXT_Weapon_PlasmaSword_25" );
TXT_Weapon_PlasmaSword_26=GetString( "TXT_Weapon_PlasmaSword_26" );
TXT_Weapon_PlasmaSword_27=GetString( "TXT_Weapon_PlasmaSword_27" );
TXT_Weapon_PlasmaSword_28=GetString( "TXT_Weapon_PlasmaSword_28" );
TXT_Weapon_PlasmaSword_29=GetString( "TXT_Weapon_PlasmaSword_29" );
TXT_Weapon_PlasmaSword_30=GetString( "TXT_Weapon_PlasmaSword_30" );
TXT_Weapon_PlasmaSword_31=GetString( "TXT_Weapon_PlasmaSword_31" );
TXT_Weapon_PlasmaSword_32=GetString( "TXT_Weapon_PlasmaSword_32" );
TXT_Weapon_PlasmaSword_33=GetString( "TXT_Weapon_PlasmaSword_33" );

ClearStringTable();                                                                                          

-- <------------------- GUIViewType -------------------> --
-- TutorialGUISet.h ����� ����..

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
function OnPlasmaSwordLicenseTest()

	TutorialSystem:SetTotalStage( 2 );	-- ������ step�� ������ ����
	
	OnPlasmaSwordLicenseTestStep01		(); -- step1 ����
	OnPlasmaSwordLicenseTestStep02		(); -- step2 ����


end
-- <---------------------------------------------------> --



function OnPlasmaSwordLicenseTestStep01()
	
	PlasmaSwordLicense = TutorialSystem:GetEmptyStage();	
	
	-- ĳ���͹� ��Ʈ���� ����
	-- ( Ʈ���� �ߵ�����, ����Ÿ��, ������Ʈ���Źڽ�, �����̺�Ʈ(SPAWN_NOTIFY �϶��� �����), �߻��̺�Ʈ( SPAWN_FOCUS_ACTOR �� �ƴҰ�쿡�� ����� ) )
	ActorSpawn 			= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true );
	
	-- ����������
	-- ( �����ҽ���, �����۾��̵�, in_�����̺�Ʈ )
	PlasmaSwordLoad				= TriggerPackage:GetItemDuplicator( 0, 2000001, 0, 0 );
	
	-- �ش�ð��� ������ �̺�Ʈ �߻�
	-- ( in_�����̺�Ʈ, out_�߻��̺�Ʈ, �ð�( ms ), in_�����̺�Ʈ, �ݺ����� ) �̺�Ʈ���� 0�ϰ�� �۵����� ����
	
	Timer_TextStart						= TriggerPackage:GetEventAlram( 0, NI_START, 0, 0, false );
	Timer_Text_Welcom01_Delay		= TriggerPackage:GetEventAlram( NI_START, NI_Text_Welcom01_OFF, 5000, 0, false );
	Timer_Text_Welcom02_Delay		= TriggerPackage:GetEventAlram( NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 3000, 0, false );
	Timer_Text_Welcom03_Delay		= TriggerPackage:GetEventAlram( NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false );
	
	KeyPermiter01							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_Welcom03_OFF, NI_Text_Welcom03_OFF, true );
	
	Timer_Text_CompleteTip01_on	= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED03, NI_TXTON01, 1000, 0, false);
	Timer_Text_CompleteTip01		= TriggerPackage:GetEventAlram( NI_TXTON01, NI_Text_CompleteTip01_OFF, 6000, 0, false );

	KeyPermiter02							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_TXTON01, NI_TXTON01, false );
	KeyPermiter03							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_OFF, NI_Text_CompleteTip01_OFF, true );
	
	Timer_Text_CompleteTip02_on	= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED02, NI_TXTON02, 1000, 0, false);
	Timer_Text_CompleteTip02		= TriggerPackage:GetEventAlram( NI_TXTON02, NI_Text_CompleteTip02_OFF, 6000, 0, false );	
		
	KeyPermiter04							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_TXTON02, NI_TXTON02, false );
	KeyPermiter05							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_OFF, NI_Text_CompleteTip02_OFF, true );

	Timer_Text_CompleteTip03_on	= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED05, NI_TXTON03, 1000, 0, false);
	Timer_Text_CompleteTip03		= TriggerPackage:GetEventAlram( NI_TXTON03, NI_Text_CompleteTip03_OFF, 6000, 0, false );	
		
	KeyPermiter06							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_TXTON03, NI_TXTON03, false );
	KeyPermiter07							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_ClearStep01_OFF, NI_Text_ClearStep01_OFF, true );
	
	Timer_Text_ClearStep01_off		= TriggerPackage:GetEventAlram( NI_Text_CompleteTip03_OFF, NI_Text_ClearStep01_OFF, 6000, 0, true );

	-- ��������
	-- ( ��ǥX, ��ǥY, in_�߻��̺�Ʈ, out_�Ϸ��̺�Ʈ, ��������, �������� )
	ScoreMng01				= TriggerPackage:GetScoreObserver( 50, 200, NI_ATTACK_WEAK_PLASM_SWORD, NI_SCORE_COMPLETED01, TXT_Weapon_PlasmaSword_09, 3 );
	ScoreMng02				= TriggerPackage:GetScoreObserver( 50, 220, NI_ATTACK_STRONG_PLASMA_SWORD, NI_SCORE_COMPLETED02, TXT_Weapon_PlasmaSword_10, 3 );
	ScoreMng03				= TriggerPackage:GetScoreObserver( 50, 240, NI_ATTACK_2_PLASMA_SWORD, NI_SCORE_COMPLETED03, TXT_Weapon_PlasmaSword_11, 3 );
	ScoreMng04				= TriggerPackage:GetScoreObserver( 50, 260, NI_ATTACK_STRONG1_PLASMA_SWORD, NI_SCORE_COMPLETED04, TXT_Weapon_PlasmaSword_12, 3 );
	ScoreMng05				= TriggerPackage:GetScoreObserver( 50, 280, NI_ATTACK_JUMP_PLASMA_SWORD, NI_SCORE_COMPLETED05, TXT_Weapon_PlasmaSword_13, 3 );
	

	-- �ؽ�Ʈ ���̰� ����
	-- ( ��ǥx, ��ǥy, in_�����̺�Ʈ, in_�������̺�Ʈ, ǥ�����ؽ�Ʈ )
	Text_Welcom01 = TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Weapon_PlasmaSword_01 , "Resources/GUI/New/TutorialImage_1.gui" , true, false);
	Text_Welcom02 = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Weapon_PlasmaSword_02 , "Resources/GUI/New/TutorialImage_1.gui" , true, false);
	Text_Welcom03 = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Weapon_PlasmaSword_03 , "Resources/GUI/New/TutorialImage_1.gui" , true, false);
	
	Text_Guide_01	= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_SCORE_COMPLETED01, TXT_Weapon_PlasmaSword_04,"Resources/GUI/New/TutorialImage_1.gui" );
	Text_Guide_02	= TriggerPackage:GetTextViewerEx(600, 500, NI_SCORE_COMPLETED01, NI_SCORE_COMPLETED02, TXT_Weapon_PlasmaSword_05 , "Resources/GUI/New/TutorialImage_1.gui" );
	Text_Guide_03	= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip02_OFF, NI_SCORE_COMPLETED03, TXT_Weapon_PlasmaSword_06 , "Resources/GUI/New/TutorialImage_1.gui" );
	Text_Guide_04	= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_OFF, NI_SCORE_COMPLETED04, TXT_Weapon_PlasmaSword_07 , "Resources/GUI/New/TutorialImage_1.gui" );
	Text_Guide_05	= TriggerPackage:GetTextViewerEx(600, 500, NI_SCORE_COMPLETED04, NI_SCORE_COMPLETED05, TXT_Weapon_PlasmaSword_08 , "Resources/GUI/New/TutorialImage_1.gui" );

	Text_ClearStep01	= TriggerPackage:GetTextViewerEx(220, 250, NI_Text_CompleteTip03_OFF, 0, TXT_Weapon_PlasmaSword_19, "Resources/GUI/New/TutorialImage_1.gui" );

	Dummy_Score01	= TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED01, NI_ATTACK_WEAK_PLASM_SWORD, TXT_Weapon_PlasmaSword_14 , "" );
	Dummy_Score02	= TriggerPackage:GetTextViewerEx(50, 220, NI_SCORE_COMPLETED02, NI_ATTACK_STRONG_PLASMA_SWORD, TXT_Weapon_PlasmaSword_15 , "" );
	Dummy_Score03	= TriggerPackage:GetTextViewerEx(50, 240, NI_SCORE_COMPLETED03, NI_ATTACK_2_PLASMA_SWORD, TXT_Weapon_PlasmaSword_16 , "" );
	Dummy_Score04	= TriggerPackage:GetTextViewerEx(50, 260, NI_SCORE_COMPLETED04, NI_ATTACK_STRONG1_PLASMA_SWORD, TXT_Weapon_PlasmaSword_17 , "" );
	Dummy_Score05	= TriggerPackage:GetTextViewerEx(50, 280, NI_SCORE_COMPLETED05, NI_ATTACK_JUMP_PLASMA_SWORD, TXT_Weapon_PlasmaSword_18 , "" );

	Text_CompleteTip01 = TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED03, NI_Text_CompleteTip01_OFF, TXT_Weapon_PlasmaSword_20, "Resources/GUI/New/TutorialImage_0.gui" , true, false);
	Text_CompleteTip02	 = TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_OFF, TXT_Weapon_PlasmaSword_21, "Resources/GUI/New/TutorialImage_0.gui" , true, false);
	Text_CompleteTip03	 = TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED05, NI_Text_CompleteTip03_OFF, TXT_Weapon_PlasmaSword_22, "Resources/GUI/New/TutorialImage_0.gui" , true, false);

	-- ���� ���� ����
	-- ( in_�����̺�Ʈ, out_�߻��̺�Ʈ, �����Ұ���, �̺�Ʈ�� ���޹��� Ư��Ʈ���� )
		
	ActorAttackEvent01	= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01, NI_ATTACK_WEAK_PLASM_SWORD, "ATTACK_WEAK_PLASMA_SWORD", ScoreMng01 );
	ActorAttackEvent02	= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED02, NI_ATTACK_STRONG_PLASMA_SWORD, "ATTACK_STRONG_PLASMA_SWORD", ScoreMng02 );
	ActorAttackEnvet03	= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED03, NI_ATTACK_2_PLASMA_SWORD, "ATTACK_2_PLASMA_SWORD", ScoreMng03 );
	ActorAttackEnvet04	= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED04, NI_ATTACK_STRONG1_PLASMA_SWORD, "ATTACK_STRONG1_PLASMA_SWORD", ScoreMng04 );
	ActorAttackEnvet05	= TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED05, NI_ATTACK_JUMP_PLASMA_SWORD, "ATTACK_JUMP_PLASMA_SWORD", ScoreMng05 );

	RegActorAttackEvent01	= TriggerPackage:GetObserverRegister( NI_START, ActorAttackEvent01);
	RegActorAttackEvent02	= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED01, ActorAttackEvent02);
	RegActorAttackEvent03	= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED02, ActorAttackEnvet03);
	RegActorAttackEvent04	= TriggerPackage:GetObserverRegister( NI_Text_CompleteTip01_OFF, ActorAttackEnvet04);
	RegActorAttackEvent05	= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED04, ActorAttackEnvet05);

	GateOpen_Step01			= TriggerPackage:GetCollisionChecker("trg_arrive_01", NI_CONGRATULATION, false);
	RegGateOpen_Step01		= TriggerPackage:GetObserverRegister( NI_Text_ClearStep01_OFF, GateOpen_Step01);

	NarOK01			= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0 );
	NarOK02			= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02, 0, 0, 0, 0 );
	NarOK03			= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED03, 0, 0, 0, 0 );
	NarOK04			= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED04, 0, 0, 0, 0 );
	NarOK05			= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED05, 0, 0, 0, 0 );

	Hit_Box01_off				= TriggerPackage:GetSceneVisible( true, "lc_countersword_hit.scn", NI_START);

	Arrow_Gate_off_01		= TriggerPackage:GetSceneVisible( true, "lc_countersword_arrow.scn", NI_START);
	Arrow_Gate_on_01		= TriggerPackage:GetSceneVisible( false, "lc_countersword_arrow.scn", NI_Text_CompleteTip03_OFF);

	MessageBox_Step01					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, 0, 1 );
	
	Congraturation_Step01	= TriggerPackage:GetTutorialComplete( NI_CONGRATULATION );


-- ���	
	
	PlasmaSwordLicense:Register( ActorSpawn );
	PlasmaSwordLicense:Register( PlasmaSwordLoad );

	PlasmaSwordLicense:Register( KeyPermiter01 );
	PlasmaSwordLicense:Register( KeyPermiter02 );
	PlasmaSwordLicense:Register( KeyPermiter03);
	PlasmaSwordLicense:Register( KeyPermiter04);
	PlasmaSwordLicense:Register( KeyPermiter05);
	PlasmaSwordLicense:Register( KeyPermiter06);
	PlasmaSwordLicense:Register( KeyPermiter07);

	PlasmaSwordLicense:Register( RegActorAttackEvent01 );
	PlasmaSwordLicense:Register( RegActorAttackEvent02 );
	PlasmaSwordLicense:Register( RegActorAttackEvent03 );
	PlasmaSwordLicense:Register( RegActorAttackEvent04 );
	PlasmaSwordLicense:Register( RegActorAttackEvent05 );
	PlasmaSwordLicense:Register( RegGateOpen_Step01 );

	PlasmaSwordLicense:Register( NarOK01 );
	PlasmaSwordLicense:Register( NarOK02 );
	PlasmaSwordLicense:Register( NarOK03 );
	PlasmaSwordLicense:Register( NarOK04 );
	PlasmaSwordLicense:Register( NarOK05 );

	PlasmaSwordLicense:Register(Timer_Text_Welcom01_Delay);
	PlasmaSwordLicense:Register(Timer_Text_Welcom02_Delay);
	PlasmaSwordLicense:Register(Timer_Text_Welcom03_Delay);
	PlasmaSwordLicense:Register(Timer_Text_CompleteTip01_on);
	PlasmaSwordLicense:Register(Timer_Text_CompleteTip02_on);
	PlasmaSwordLicense:Register(Timer_Text_CompleteTip03_on);
	PlasmaSwordLicense:Register(Timer_Text_ClearStep01_off);

	PlasmaSwordLicense:Register(Text_Welcom01);
	PlasmaSwordLicense:Register(Text_Welcom02);
	PlasmaSwordLicense:Register(Text_Welcom03);

	PlasmaSwordLicense:Register(Text_Guide_01);
	PlasmaSwordLicense:Register(Text_Guide_02);
	PlasmaSwordLicense:Register(Text_Guide_03);
	PlasmaSwordLicense:Register(Text_Guide_04);
	PlasmaSwordLicense:Register(Text_Guide_05);

	PlasmaSwordLicense:Register(Text_ClearStep01);

	PlasmaSwordLicense:Register(Dummy_Score01);
	PlasmaSwordLicense:Register(Dummy_Score02);
	PlasmaSwordLicense:Register(Dummy_Score03);
	PlasmaSwordLicense:Register(Dummy_Score04);
	PlasmaSwordLicense:Register(Dummy_Score05);

	PlasmaSwordLicense:Register( Timer_Text_CompleteTip01 );
	PlasmaSwordLicense:Register( Timer_Text_CompleteTip02 );
	PlasmaSwordLicense:Register( Timer_Text_CompleteTip03 );
	PlasmaSwordLicense:Register( Text_CompleteTip01 );
	PlasmaSwordLicense:Register( Text_CompleteTip02 );
	PlasmaSwordLicense:Register( Text_CompleteTip03 );
	PlasmaSwordLicense:Register(Timer_TextStart);

	PlasmaSwordLicense:Register(Hit_Box01_off);

	PlasmaSwordLicense:Register(Arrow_Gate_off_01);
	PlasmaSwordLicense:Register(Arrow_Gate_on_01);

	--CounterSwordLicense:Register(GateOpen_Step01);

	PlasmaSwordLicense:Register(MessageBox_Step01);

	PlasmaSwordLicense:Register(Congraturation_Step01);
	
	TutorialSystem:AddStage( 0, PlasmaSwordLicense );


	
end



-- ����2


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


function OnPlasmaSwordLicenseTestStep02()

	TestStage						= TutorialSystem:GetEmptyStage();

	SpawnHelper01				= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_02", 0, 0, 0, 0, true );
	PlasmaSwordLoad				= TriggerPackage:GetItemDuplicator( 0, 2000001, 0, 0 );

	Timer_StartStep02			= TriggerPackage:GetEventAlram( 0, NI_Start_Step02, 0, 0, false );
	Timer_Text_Step02Start		= TriggerPackage:GetEventAlram( NI_Start_Step02, NI_Text_Step02Start_off, 6000, 0, false );
	Timer_ReadyStep02			= TriggerPackage:GetEventAlram( NI_Text_Step02Start_off, NI_TestStart_Step02, 5000, 0, false );
											TriggerPackage:SetShowEventAlram(Timer_ReadyStep02, 480, 330, "{F-2002_20}{A-C}{S-S}{CB-255,255,50,255}" ,1);
	
	Timer_Text_TestStartStep02_off	= TriggerPackage:GetEventAlram( NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, 2000, 0, false );

	Timer_End						= TriggerPackage:GetEventAlram( NI_TestStart_Step02, NI_Fail, 300000, NI_Success, false);
											TriggerPackage:SetShowEventAlram(Timer_End, 470, 50, TXT_Weapon_PlasmaSword_23, 1 );

	Timer_Text_TestFail_off			= TriggerPackage:GetEventAlram( NI_Fail, NI_Text_TestFail_OFF, 10000, 0, false);
	Timer_Text_TestSuccess_off		= TriggerPackage:GetEventAlram( NI_Success, NI_Text_TestSuccess_OFF, 10000, 0, false);

	Hold_Actor_Step02_01		= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Start_Step02, NI_Start_Step02, false );
	Realse_Actor_Step02_01	= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_TestStart_Step02, NI_TestStart_Step02, true );

	Timer_Blast_Msg_01		= TriggerPackage:GetEventAlram( NI_Blast, NI_Text_Blast_01_off, 1000, 0, false);
	Timer_Blast_Msg_02		= TriggerPackage:GetEventAlram( NI_Blast_01, NI_Text_Blast_02_off, 1000, 0, false);
	Timer_Blast_Msg_03		= TriggerPackage:GetEventAlram( NI_Blast_02, NI_Text_Blast_03_off, 1000, 0, false);
		
	Text_Step02Start				= TriggerPackage:GetTextViewerExA( 512, 250, NI_Start_Step02, NI_Text_Step02Start_off, TXT_Weapon_PlasmaSword_24, "Resources/GUI/New/TutorialImage_1.gui", true, false );
	Text_Step02Ready			= TriggerPackage:GetTextViewerExA( 512, 250, NI_Text_Step02Start_off, NI_TestStart_Step02, TXT_Weapon_PlasmaSword_25, "Resources/GUI/New/TutorialImage_1.gui", true, false );
	Text_TestStartStep02		= TriggerPackage:GetTextViewerExA( 512, 250, NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, TXT_Weapon_PlasmaSword_26, "Resources/GUI/New/TutorialImage_1.gui" , true, false );

	Test_TestGuide				= TriggerPackage:GetTextViewerEx(600, 500, NI_TestStart_Step02, NI_Success, TXT_Weapon_PlasmaSword_27,"Resources/GUI/New/TutorialImage_1.gui" );
	
	Hit_Box01_on				= TriggerPackage:GetSceneVisible( false, "lc_countersword_hit.scn", NI_Start_Step02);
	Arrow_Gate_off_02		= TriggerPackage:GetSceneVisible( false, "lc_countersword_arrow.scn", NI_Start_Step02);

	Text_TestFail					= TriggerPackage:GetTextViewerExA( 512, 250, NI_Fail, NI_Text_TestFail_OFF, TXT_Weapon_PlasmaSword_28, "Resources/GUI/New/TutorialImage_1.gui", true, false );
	Text_TestSuccess			= TriggerPackage:GetTextViewerExA( 512, 250, NI_Success, NI_Text_TestSuccess_OFF, TXT_Weapon_PlasmaSword_29, "Resources/GUI/New/TutorialImage_1.gui", true, false );

	Text_Blast_01					= TriggerPackage:GetTextViewerExA( 512, 310, NI_Blast, NI_Text_Blast_01_off, TXT_Weapon_PlasmaSword_30, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_Blast_02					= TriggerPackage:GetTextViewerExA( 512, 310, NI_Blast_01, NI_Text_Blast_02_off, TXT_Weapon_PlasmaSword_31, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_Blast_03					= TriggerPackage:GetTextViewerExA( 512, 310, NI_Blast_02, NI_Text_Blast_03_off, TXT_Weapon_PlasmaSword_32, "Resources/GUI/New/TutorialImage_1.gui" , true, false );

	TestFailEnd					= TriggerPackage:GetTutorialComplete( NI_Text_TestFail_OFF );
	TestSuccessEnd			= TriggerPackage:GetTutorialComplete( NI_Text_TestSuccess_OFF );				

	NarBlast01						= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_Blast_03, 0, 0, 0, 0 );
	
	-- ���̳��ͺ���Ʈ������Ʈ ��ġ
	-- GetDeployTutoBlastObject( ������Ʈ�̸�, ��������Ʈ�̸�, ���߻����̸�, �����������̸�, ü��, ������Ÿ��, ����, ����ִ½ð� )
	--SetupDeployTutoBlastObject( GetDeployTutoBlastObject()�� ������Ʈ����, ���߽ý��ھ�, in_���������̺�Ʈ, in_��������̺�Ʈ, out_���߽��̺�Ʈ, ������Ƚ�� )
	BlastObject01 = TriggerPackage:GetDeployTutoBlastObject( "blast2_box20", "eff_target_green.seq", "wall_destroy_steel.ogg", "wall_create.ogg",10,5000,3,0 );
							TriggerPackage:SetupDeployTutoBlastObject( BlastObject01, 0, NI_Text_TestStartStep02_OFF, 0, NI_Blast, 0 );

	BlastObject02 = TriggerPackage:GetDeployTutoBlastObject( "blast2_box30", "eff_target_yellow.seq", "wall_destroy_steel.ogg", "wall_create.ogg",20,5000,3,0 );
							TriggerPackage:SetupDeployTutoBlastObject( BlastObject02, 0, NI_Text_TestStartStep02_OFF, 0, NI_Blast_01, 0 );

	BlastObject03 = TriggerPackage:GetDeployTutoBlastObject( "blast2_box40", "eff_target_orange.seq", "wall_destroy_steel.ogg", "wall_create.ogg",40,5000,3,0 );
							TriggerPackage:SetupDeployTutoBlastObject( BlastObject03, 0, NI_Text_TestStartStep02_OFF, 0, NI_Blast_02, 0 );



	 -- ( in_����Ʈ����, ��ġ�Ѻ���Ʈ������ƮƮ����, ����ƽ )
 	--BlastObject02AnimControllerStop = TriggerPackage:GetTutoBlastObjectAnimControllerStop( TEST_ANIM_STOP, BlastObject02 );

	BlastObject01AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_TestStart_Step02, BlastObject01, 0 );
	BlastObject02AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_TestStart_Step02, BlastObject02, 0 );
	BlastObject03AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay( NI_TestStart_Step02, BlastObject03, 0 );

	Timer_Plus_00		= TriggerPackage:GetEventAlram( NI_Blast, NI_Blast_03, 0, 0, false);
	Timer_Plus_01		= TriggerPackage:GetEventAlram( NI_Blast_01, NI_Blast_03, 0, 0, false);
	Timer_Plus_02		= TriggerPackage:GetEventAlram( NI_Blast_01, NI_Blast_03, 0, 0, false);
	Timer_Plus_03		= TriggerPackage:GetEventAlram( NI_Blast_02, NI_Blast_03, 0, 0, false);
	Timer_Plus_04		= TriggerPackage:GetEventAlram( NI_Blast_02, NI_Blast_03, 0, 0, false);
	Timer_Plus_05		= TriggerPackage:GetEventAlram( NI_Blast_02, NI_Blast_03, 0, 0, false);


	ScoreMngBlast01	= TriggerPackage:GetScoreObserver( 50, 200, NI_Blast_03, NI_Success, TXT_Weapon_PlasmaSword_33, 45 );

	Hold_Actor_Step02_02		= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Success, NI_Success, false );
	Hold_Actor_Step02_03		= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Fail, NI_Fail, false );
	--Realse_Actor_Step02_02	= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_TestStart_Step02, NI_TestStart_Step02, true );

	-- Ʃ�丮�� ���� ���� �κ�
	Timer_SayThree							= TriggerPackage:GetEventAlram( NI_Text_Step02Start_off, NI_SayThree, 2000, 0, false);
	Timer_SayTwo							= TriggerPackage:GetEventAlram( NI_SayThree, NI_SayTwo, 1000, 0, false);
	Timer_SayOne							= TriggerPackage:GetEventAlram( NI_SayTwo, NI_SayOne, 1000, 0, false);	
	
	NarThree									= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\3.ogg", "", NI_SayThree, 0, 0, 0, 0 );
	NarTwo										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\2.ogg", "", NI_SayTwo, 0, 0, 0, 0 );
	NarOne										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\1.ogg", "", NI_SayOne, 0, 0, 0, 0 );

	NarEnd										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_Success, 0, 0, 0, 0 );
	NarWinGame								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_have_won_the_match.ogg", "", NI_Success, 0, 0, 0, 0 );
	InPutLicense								=	TriggerPackage:GetItemLicensed(NI_Success, 1);

	Hold_Actor_Fail							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Fail, NI_Fail, false );
	NarTimeIsUP								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\inter_timeover.ogg", "", NI_Fail, 0, 0, 0, 0 );
	NarLostGame								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_lost_the_match1.ogg", "", NI_Fail, 0, 0, 0, 0 );
	
	MessageBox_Step02					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, NI_Text_TestFail_OFF, 1 );
	MessageBox_Step03					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, 0, 1 );
	TestSuccessEnd						= TriggerPackage:GetTutorialComplete( NI_Text_TestSuccess_OFF );	


	-- ���
	TestStage:Register(SpawnHelper01);
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
	
	TestStage:Register(Timer_Blast_Msg_01);
	TestStage:Register(Timer_Blast_Msg_02);
	TestStage:Register(Timer_Blast_Msg_03);
	
	TestStage:Register(Text_Step02Start);
	TestStage:Register(Text_Step02Ready);
	TestStage:Register(Text_TestStartStep02);
	TestStage:Register(Test_TestGuide);

	TestStage:Register(Hit_Box01_on);
	TestStage:Register(Arrow_Gate_off_02);

	TestStage:Register(Text_TestFail);
	TestStage:Register(Text_TestSuccess);

	TestStage:Register(Text_Blast_01);
	TestStage:Register(Text_Blast_02);
	TestStage:Register(Text_Blast_03);

	TestStage:Register(TestFailEnd);
	TestStage:Register(TestSuccessEnd);

	TestStage:Register(NarBlast01);

	TestStage:Register(BlastObject01);
	TestStage:Register(BlastObject02);
	TestStage:Register(BlastObject03);

	TestStage:Register(Timer_Plus_00);
	TestStage:Register(Timer_Plus_01);
	TestStage:Register(Timer_Plus_02);
	TestStage:Register(Timer_Plus_03);
	TestStage:Register(Timer_Plus_04);
	TestStage:Register(Timer_Plus_05);

	TestStage:Register(BlastObject01AnimController);
	TestStage:Register(BlastObject02AnimController);
	TestStage:Register(BlastObject03AnimController);
	
	TestStage:Register(ScoreMngBlast01);
	TestStage:Register(Hold_Actor_Step02_02);
	TestStage:Register(Hold_Actor_Step02_03);

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

	TutorialSystem:AddStage(1, TestStage);

end