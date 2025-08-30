
-- GetSpawnHelper�� ���

SPAWN_FOCUS_ACTOR							= 0
SPAWN_ENERMY_SENTRYGUN				= 1
SPAWN_ENERMY_SENTYFORCE				= 2
SPAWN_TRIGGER_BEGIN							= 0
SPAWN_NOTIFY										= 1




-- <------------------- GUIViewType -------------------> --
-- TutorialGUISet.h ����� ����..

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


-- <----------------- Ʃ�丮�� �ʱ�ȭ -----------------> --
function OnSubMachineGunLicenseTest()

	TutorialSystem:SetTotalStage( 2 );	-- ������ step�� ������ ����
	
	OnSubMachineGunLicenseTestStep01		(); -- step1 ����
	OnSubMachineGunLicenseTestStep02		(); -- step2 ����


end
-- <---------------------------------------------------> --


-- Notify ID�̺�Ʈ �޼���
NI_START										= 101
NI_Text_Welcom01_OFF					= 102
NI_Text_Welcom02_OFF					= 103
NI_Text_Welcom03_OFF					= 104
NI_SCORE_COMPLETED01				= 105
NI_ATTACK_1_SUBMACHINE_GUN		= 106
NI_Text_CompleteTip01_on				= 107
NI_Text_CompleteTip01_off				= 108
NI_Text_CompleteTip02_on				= 109
NI_Text_CompleteTip02_off				= 110
NI_SCORE_COMPLETED02				= 111
NI_RELOAD_SUBMACHINE_GUN		= 112
NI_CONGRATULATION						= 113

-- �ؽ�Ʈ
LoadStringTable( "Language/Script/tutorial_string_table.x7" );

TXT_Weapon_SubMachineGun_01=GetString( "TXT_Weapon_SubMachineGun_01" );
TXT_Weapon_SubMachineGun_02=GetString( "TXT_Weapon_SubMachineGun_02" );
TXT_Weapon_SubMachineGun_03=GetString( "TXT_Weapon_SubMachineGun_03" );
TXT_Weapon_SubMachineGun_04=GetString( "TXT_Weapon_SubMachineGun_04" );
TXT_Weapon_SubMachineGun_05=GetString( "TXT_Weapon_SubMachineGun_05" );
TXT_Weapon_SubMachineGun_06=GetString( "TXT_Weapon_SubMachineGun_06" );
TXT_Weapon_SubMachineGun_07=GetString( "TXT_Weapon_SubMachineGun_07" );
TXT_Weapon_SubMachineGun_08=GetString( "TXT_Weapon_SubMachineGun_08" );
TXT_Weapon_SubMachineGun_09=GetString( "TXT_Weapon_SubMachineGun_09" );
TXT_Weapon_SubMachineGun_10=GetString( "TXT_Weapon_SubMachineGun_10" );
TXT_Weapon_SubMachineGun_11=GetString( "TXT_Weapon_SubMachineGun_11" );
TXT_Weapon_SubMachineGun_12=GetString( "TXT_Weapon_SubMachineGun_12" );
TXT_Weapon_SubMachineGun_13=GetString( "TXT_Weapon_SubMachineGun_13" );
TXT_Weapon_SubMachineGun_14=GetString( "TXT_Weapon_SubMachineGun_14" );
TXT_Weapon_SubMachineGun_15=GetString( "TXT_Weapon_SubMachineGun_15" );
TXT_Weapon_SubMachineGun_16=GetString( "TXT_Weapon_SubMachineGun_16" );
TXT_Weapon_SubMachineGun_17=GetString( "TXT_Weapon_SubMachineGun_17" );
TXT_Weapon_SubMachineGun_18=GetString( "TXT_Weapon_SubMachineGun_18" );
TXT_Weapon_SubMachineGun_19=GetString( "TXT_Weapon_SubMachineGun_19" );
TXT_Weapon_SubMachineGun_20=GetString( "TXT_Weapon_SubMachineGun_20" );
TXT_Weapon_SubMachineGun_21=GetString( "TXT_Weapon_SubMachineGun_21" );
TXT_Weapon_SubMachineGun_22=GetString( "TXT_Weapon_SubMachineGun_22" );
TXT_Weapon_SubMachineGun_23=GetString( "TXT_Weapon_SubMachineGun_23" );
TXT_Weapon_SubMachineGun_24=GetString( "TXT_Weapon_SubMachineGun_24" );

ClearStringTable();  
                                                                                                    
function OnSubMachineGunLicenseTestStep01()
	
	SubMachineGunLicense = TutorialSystem:GetEmptyStage();	
	
	-- ĳ���͹� ��Ʈ���� ����
	-- ( Ʈ���� �ߵ�����, ����Ÿ��, ������Ʈ���Źڽ�, �����̺�Ʈ(SPAWN_NOTIFY �϶��� �����), �߻��̺�Ʈ( SPAWN_FOCUS_ACTOR �� �ƴҰ�쿡�� ����� ) )
	ActorSpawn 			= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true );
	
	-- ����������
	-- ( �����ҽ���, �����۾��̵�, in_�����̺�Ʈ )
	SubMachineGunLoad				= TriggerPackage:GetItemDuplicator( 0, 2010001, 0, 0 );
	
	-- �ش�ð��� ������ �̺�Ʈ �߻�
	-- ( in_�����̺�Ʈ, out_�߻��̺�Ʈ, �ð�( ms ), in_�����̺�Ʈ, �ݺ����� ) �̺�Ʈ���� 0�ϰ�� �۵����� ����
	
	Timer_TextStart						= TriggerPackage:GetEventAlram( 0, NI_START, 0, 0, false );
	Timer_Text_Welcom01_Delay		= TriggerPackage:GetEventAlram( NI_START, NI_Text_Welcom01_OFF, 5000, 0, false );
	Timer_Text_Welcom02_Delay		= TriggerPackage:GetEventAlram( NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 3000, 0, false );
	Timer_Text_Welcom03_Delay		= TriggerPackage:GetEventAlram( NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false );
		
	Timer_Text_CompleteTip01_on	= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_on, 500, 0, false );
	Timer_Text_CompleteTip01_off	= TriggerPackage:GetEventAlram( NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, 4000, 0, false );

	Timer_Text_CompleteTip02_on	= TriggerPackage:GetEventAlram( NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_on, 500, 0, false );
	Timer_Text_CompleteTip02_off	= TriggerPackage:GetEventAlram( NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_off, 4000, 0, false );


	KeyPermiter01							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_START, NI_START, false );
	KeyPermiter02							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_Welcom03_OFF, NI_Text_Welcom03_OFF, true );

	KeyPermiter03							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_on, false );
	KeyPermiter04							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_off, NI_Text_CompleteTip01_off, true );

	KeyPermiter05							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_on, false );
	KeyPermiter06							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_off, NI_Text_CompleteTip02_off, true );

	-- �ؽ�Ʈ ���̰� ����
	-- ( ��ǥx, ��ǥy, in_�����̺�Ʈ, in_�������̺�Ʈ, ǥ�����ؽ�Ʈ )
	Text_Welcom01	= TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Weapon_SubMachineGun_01 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
	Text_Welcom02	= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Weapon_SubMachineGun_02 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
	Text_Welcom03	= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Weapon_SubMachineGun_03 , "Resources/GUI/New/TutorialImage_1.gui", true, false );
	
	Text_Guide01		= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_SCORE_COMPLETED01, TXT_Weapon_SubMachineGun_04 , "Resources/GUI/New/TutorialImage_1.gui");
	Text_Guide02		= TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_off, NI_SCORE_COMPLETED02, TXT_Weapon_SubMachineGun_05 , "Resources/GUI/New/TutorialImage_1.gui");
	
	Text_CompleteTip01		= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_off, TXT_Weapon_SubMachineGun_08 , "Resources/GUI/New/TutorialImage_0.gui", true, false );
	Text_CompleteTip02		= TriggerPackage:GetTextViewerExA( 512, 300, NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_off, TXT_Weapon_SubMachineGun_09 , "Resources/GUI/New/TutorialImage_0.gui", true, false );

	Text_ClearStep01		= TriggerPackage:GetTextViewerExA(512, 250, NI_Text_CompleteTip02_off, 0, TXT_Weapon_SubMachineGun_12, "Resources/GUI/New/TutorialImage_1.gui" , true, false );

	-- ( ��ǥX, ��ǥY, in_�߻��̺�Ʈ, out_�Ϸ��̺�Ʈ, ��������, �������� )
	ScoreCheck01		= TriggerPackage:GetScoreObserver( 50, 200, NI_ATTACK_1_SUBMACHINE_GUN, NI_SCORE_COMPLETED01, TXT_Weapon_SubMachineGun_06, 5 );
	ScoreCheck02		= TriggerPackage:GetScoreObserver( 50, 220, NI_RELOAD_SUBMACHINE_GUN, NI_SCORE_COMPLETED02, TXT_Weapon_SubMachineGun_10, 3 );

	Dummy_ScoreCheck01	 	= TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED01, 0, TXT_Weapon_SubMachineGun_07 , "");
	Dummy_ScoreCheck02	 	= TriggerPackage:GetTextViewerEx(50, 220, NI_SCORE_COMPLETED02, 0, TXT_Weapon_SubMachineGun_11 , "");

	-- ( in_�����̺�Ʈ, out_�߻��̺�Ʈ, �����Ұ���, �̺�Ʈ�� ���޹��� Ư��Ʈ���� )
	ActorAttackCheck01	 = TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED01, NI_ATTACK_1_SUBMACHINE_GUN, "ATTACK_1_SUBMACHINE_GUN", ScoreCheck01 );
	ActorAttackCheck02 = TriggerPackage:GetActorAttackObserver( NI_SCORE_COMPLETED02, NI_RELOAD_SUBMACHINE_GUN, "RELOAD_SUBMACHINE_GUN", ScoreCheck02 );

	RegActorAttackCheck01	= TriggerPackage:GetObserverRegister( NI_Text_Welcom03_OFF, ActorAttackCheck01);
	RegActorAttackCheck02	= TriggerPackage:GetObserverRegister( NI_SCORE_COMPLETED01, ActorAttackCheck02);
	
	NarOK01			= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0 );
	NarOK02			= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02, 0, 0, 0, 0 );

	GateOpen_Step01			= TriggerPackage:GetCollisionChecker("trg_arrive_01", NI_CONGRATULATION, false);
	RegGateOpen_Step01		= TriggerPackage:GetObserverRegister( NI_Text_CompleteTip02_off, GateOpen_Step01);

	Arrow_Gate_off_01			= TriggerPackage:GetSceneVisible( true, "lc_arrow.scn", NI_START);
	Arrow_Gate_on_01			= TriggerPackage:GetSceneVisible( false, "lc_arrow.scn", NI_Text_CompleteTip02_off);

	MessageBox_Step01		= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, 0, 3 );

	Congraturation_Step01	= TriggerPackage:GetTutorialComplete( NI_CONGRATULATION );
		
	
	-- ���

	SubMachineGunLicense:Register(ActorSpawn);

	SubMachineGunLicense:Register(SubMachineGunLoad);

	SubMachineGunLicense:Register(Timer_TextStart);
	SubMachineGunLicense:Register(Timer_Text_Welcom01_Delay);
	SubMachineGunLicense:Register(Timer_Text_Welcom02_Delay);
	SubMachineGunLicense:Register(Timer_Text_Welcom03_Delay);

	SubMachineGunLicense:Register(Timer_Text_CompleteTip01_on);
	SubMachineGunLicense:Register(Timer_Text_CompleteTip01_off);

	SubMachineGunLicense:Register(Timer_Text_CompleteTip02_on);
	SubMachineGunLicense:Register(Timer_Text_CompleteTip02_off);

	SubMachineGunLicense:Register(Text_ClearStep01);

	SubMachineGunLicense:Register(KeyPermiter01);
	SubMachineGunLicense:Register(KeyPermiter02);

	SubMachineGunLicense:Register(KeyPermiter03);
	SubMachineGunLicense:Register(KeyPermiter04);

	SubMachineGunLicense:Register(KeyPermiter05);
	SubMachineGunLicense:Register(KeyPermiter06);

	SubMachineGunLicense:Register(Text_Welcom01);
	SubMachineGunLicense:Register(Text_Welcom02);
	SubMachineGunLicense:Register(Text_Welcom03);

	SubMachineGunLicense:Register(Text_Guide01);
	SubMachineGunLicense:Register(Text_Guide02);

	SubMachineGunLicense:Register(Text_CompleteTip01);
	SubMachineGunLicense:Register(Text_CompleteTip02);

	SubMachineGunLicense:Register(Dummy_ScoreCheck01);
	SubMachineGunLicense:Register(Dummy_ScoreCheck02);


	SubMachineGunLicense:Register(RegActorAttackCheck01);
	SubMachineGunLicense:Register(RegActorAttackCheck02);

	SubMachineGunLicense:Register(NarOK01);
	SubMachineGunLicense:Register(NarOK02);

	--SubMachineGunLicense:Register(GateOpen_Step01);
	SubMachineGunLicense:Register(RegGateOpen_Step01);

	SubMachineGunLicense:Register(Arrow_Gate_off_01);
	SubMachineGunLicense:Register(Arrow_Gate_on_01);

	SubMachineGunLicense:Register(MessageBox_Step01);

	SubMachineGunLicense:Register(Congraturation_Step01);

	--SubMachineGunLicense:Register();

	TutorialSystem:AddStage( 0, SubMachineGunLicense );

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
NI_Text_Blast_02_off					= 213
NI_Text_Blast_03_off					= 214
NI_Phase2								= 215
NI_SayThree							= 216
NI_SayTwo								= 217
NI_SayOne								= 218
NI_Blast_03								= 219

function OnSubMachineGunLicenseTestStep02()

	TestStage						= TutorialSystem:GetEmptyStage();

	SpawnHelper01				= TriggerPackage:GetSpawnHelper( SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_02", 0, 0, 0, 0, true );
	SubMachineGunLoad		= TriggerPackage:GetItemDuplicator( 0, 2010001, 0, 0 );

	Timer_StartStep02			= TriggerPackage:GetEventAlram( 0, NI_Start_Step02, 0, 0, false );
	Timer_Text_Step02Start		= TriggerPackage:GetEventAlram( NI_Start_Step02, NI_Text_Step02Start_off, 5000, 0, false );
	Timer_ReadyStep02			= TriggerPackage:GetEventAlram( NI_Text_Step02Start_off, NI_TestStart_Step02, 5000, 0, false );
	
	Timer_Text_TestStartStep02_off	= TriggerPackage:GetEventAlram( NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, 2000, 0, false );

	Timer_End						= TriggerPackage:GetEventAlram( NI_TestStart_Step02, NI_Fail, 300000, NI_Success, false);
											TriggerPackage:SetShowEventAlram(Timer_End, 470, 50, TXT_Weapon_SubMachineGun_13, 1 );

	Timer_Text_TestFail_off			= TriggerPackage:GetEventAlram( NI_Fail, NI_Text_TestFail_OFF, 10000, 0, false);
	Timer_Text_TestSuccess_off		= TriggerPackage:GetEventAlram( NI_Success, NI_Text_TestSuccess_OFF, 10000, 0, false);

	Hold_Actor_Step02_01		= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Start_Step02, NI_Start_Step02, false );
	Realse_Actor_Step02_01	= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_TestStart_Step02, NI_TestStart_Step02, true );

	Timer_Blast_Msg_01		= TriggerPackage:GetEventAlram( NI_Blast, NI_Text_Blast_01_off, 1000, 0, false);
	Timer_Blast_Msg_02		= TriggerPackage:GetEventAlram( NI_Blast_01, NI_Text_Blast_02_off, 1000, 0, false);
	Timer_Blast_Msg_03		= TriggerPackage:GetEventAlram( NI_Blast_02, NI_Text_Blast_03_off, 1000, 0, false);
		
	Text_Step02Start				= TriggerPackage:GetTextViewerExA( 512, 250, NI_Start_Step02, NI_Text_Step02Start_off, TXT_Weapon_SubMachineGun_14, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_Step02Ready			= TriggerPackage:GetTextViewerExA( 512, 250, NI_Text_Step02Start_off, NI_TestStart_Step02, TXT_Weapon_SubMachineGun_15, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_TestStartStep02		= TriggerPackage:GetTextViewerExA( 512, 250, NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, TXT_Weapon_SubMachineGun_16, "Resources/GUI/New/TutorialImage_1.gui" , true, false );

	Test_TestGuide				= TriggerPackage:GetTextViewerEx(600, 500, NI_TestStart_Step02, NI_Success, TXT_Weapon_SubMachineGun_17,"Resources/GUI/New/TutorialImage_1.gui" );

	Text_TestFail					= TriggerPackage:GetTextViewerExA( 512, 250, NI_Fail, NI_Text_TestFail_OFF, TXT_Weapon_SubMachineGun_18, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_TestSuccess			= TriggerPackage:GetTextViewerExA( 512, 200, NI_Success, NI_Text_TestSuccess_OFF, TXT_Weapon_SubMachineGun_19, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
		
		
	-- ( ��ǥx, ��ǥy, in_�����̺�Ʈ, in_�������̺�Ʈ, ǥ�����ؽ�Ʈ )
	Text_Blast_01					= TriggerPackage:GetTextViewerExA( 512, 310, NI_Blast, NI_Text_Blast_01_off, TXT_Weapon_SubMachineGun_20, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_Blast_02					= TriggerPackage:GetTextViewerExA( 512, 310, NI_Blast_01, NI_Text_Blast_02_off, TXT_Weapon_SubMachineGun_21, "Resources/GUI/New/TutorialImage_1.gui" , true, false );
	Text_Blast_03					= TriggerPackage:GetTextViewerExA( 512, 310, NI_Blast_02, NI_Text_Blast_03_off, TXT_Weapon_SubMachineGun_22, "Resources/GUI/New/TutorialImage_1.gui" , true, false );

	TestFailEnd					= TriggerPackage:GetTutorialComplete( NI_Text_TestFail_OFF );

	NarBlast01						= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_Blast, 0, 0, 0, 0 );
	
	-- ���̳��ͺ���Ʈ������Ʈ ��ġ
	-- GetDeployTutoBlastObject( ������Ʈ�̸�, ��������Ʈ�̸�, ���߻����̸�, �����������̸�, ü��, ������Ÿ��, ����, ����ִ½ð� )
	--SetupDeployTutoBlastObject( GetDeployTutoBlastObject()�� ������Ʈ����, ���߽ý��ھ�, in_���������̺�Ʈ, in_��������̺�Ʈ, out_���߽��̺�Ʈ, ������Ƚ�� )
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



	 -- ( in_����Ʈ����, ��ġ�Ѻ���Ʈ������ƮƮ����, ����ƽ )
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

	ScoreMngBlast01	= TriggerPackage:GetScoreObserver( 50, 200, NI_Blast_03, NI_Success, TXT_Weapon_SubMachineGun_23, 30 );
	ScoreMngBlast02	= TriggerPackage:GetScoreObserver( 2000, 2000, NI_Blast_03, NI_Phase2, TXT_Weapon_SubMachineGun_24, 15 );


	Hold_Actor_Step02_02		= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Success, NI_Success, false );
	Hold_Actor_Step02_03		= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Fail, NI_Fail, false );
	--Realse_Actor_Step02_02	= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_TestStart_Step02, NI_TestStart_Step02, true );

	Arrow_Gate_off_02			= TriggerPackage:GetSceneVisible( false, "lc_arrow.scn", NI_Start_Step02);

	-- Ʃ�丮�� ���� ���� �κ�
	Timer_SayThree							= TriggerPackage:GetEventAlram( NI_Text_Step02Start_off, NI_SayThree, 2000, 0, false);
	Timer_SayTwo							= TriggerPackage:GetEventAlram( NI_SayThree, NI_SayTwo, 1000, 0, false);
	Timer_SayOne							= TriggerPackage:GetEventAlram( NI_SayTwo, NI_SayOne, 1000, 0, false);	
	
	NarThree									= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\3.ogg", "", NI_SayThree, 0, 0, 0, 0 );
	NarTwo										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\2.ogg", "", NI_SayTwo, 0, 0, 0, 0 );
	NarOne										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\1.ogg", "", NI_SayOne, 0, 0, 0, 0 );

	NarEnd										= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_Success, 0, 0, 0, 0 );
	NarWinGame								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_have_won_the_match.ogg", "", NI_Success, 0, 0, 0, 0 );
	InPutLicense								=	TriggerPackage:GetItemLicensed(NI_Success, 3);

	Hold_Actor_Fail							= TriggerPackage:GetKeyPermiter( TutorialSystem:GetInputSystem(), NI_Fail, NI_Fail, false );
	NarTimeIsUP								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\inter_timeover.ogg", "", NI_Fail, 0, 0, 0, 0 );
	NarLostGame								= TriggerPackage:GetNarrationPlayer( TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_lost_the_match1.ogg", "", NI_Fail, 0, 0, 0, 0 );
	
	MessageBox_Step02					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, NI_Text_TestFail_OFF, 3 );
	MessageBox_Step03					= TriggerPackage:GetStageChanger( TutorialSystem, 0, 1, 0, 3 );
	TestSuccessEnd						= TriggerPackage:GetTutorialComplete( NI_Text_TestSuccess_OFF );	


	-- ���
	TestStage:Register(SpawnHelper01);
	TestStage:Register(SubMachineGunLoad);

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
	SubMachineGunLicense:Register(Arrow_Gate_off_02);
	
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

end
