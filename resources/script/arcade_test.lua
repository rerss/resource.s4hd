function InitArcade()
	-- �����̵� ��� ���� 
	-- �Էº��� : GameMgr : CGameManager, ArcadeSystem : CArcadeSystem, Scene : CSceneController
	Scene:LoadHostScript( "Resources/Script/Arcade_Host.lua", 1 );
	Scene:LoadHostScript( "Resources/Script/Arcade_Host_2.lua", 100 );
	
	-- ��������1 ���� NPC
	Scene:LoadAIScript( "TR_A01", "Resources/Script/Arcade_AIType_TrainingRobot01.lua", 2 );
	Scene:LoadAIScript( "TR_B01", "Resources/Script/Arcade_AIType_TrainingRobot02.lua", 3 );
	Scene:LoadAIScript( "TR_C01", "Resources/Script/Arcade_AIType_TrainingRobot03.lua", 4 );
	Scene:LoadAIScript( "MASTERTR_A01", "Resources/Script/Arcade_AIType_MasterTrainingRobot.lua", 5 );
	
	-- ��������2 ���� NPC
	Scene:LoadAIScript( "TAEJO_HOT_FAN", "Resources/Script/Arcade_AIType_SMG_KeepDist.lua", 6 );  
	Scene:LoadAIScript( "TAEJO_CRAZY_FAN", "Resources/Script/Arcade_AIType_PlasmaSword_02.lua", 7 );
	Scene:LoadAIScript( "TAEJO_CHIEFSHOOT_FAN", "Resources/Script/Arcade_AIType_SMG_KeepDist.lua", 8 );
	Scene:LoadAIScript( "TAEJO_CHIEFSWORD_FAN", "Resources/Script/Arcade_AIType_PlasmaSword_02.lua", 9 );
	Scene:LoadAIScript( "TAEJO_CHIEFMH_FAN", "Resources/Script/Arcade_AIType_SMG_Hide_plus.lua", 10 );
	Scene:LoadAIScript( "TAEJO_BEHIND_SWORD", "Resources/Script/Arcade_AIType_CountSword_01.lua", 11 );
	Scene:LoadAIScript( "TAEJO", "Resources/Script/Arcade_AIType_Sword_Blind.lua", 12 );

	-- ��������3 ���� NPC
	Scene:LoadAIScript( "INFECTED_TR_A01", "Resources/Script/Arcade_AIType_RobotCloseAttack.lua", 13 );
	Scene:LoadAIScript( "INFECTED_TR_B01", "Resources/Script/Arcade_AIType_RobotRoundAttack.lua", 14 );

	-- ��������4 ���� NPC
	Scene:LoadAIScript( "INJURYED_TEAJO", "Resources/Script/Arcade_AIType_TeajoA.lua", 15 );
	Scene:LoadAIScript( "INFECTED_ESPER_P", "Resources/Script/Arcade_AIType_VirusClose.lua", 16 );
	Scene:LoadAIScript( "INFECTED_ESPER_S", "Resources/Script/Arcade_AIType_SMG_KeepDist.lua", 17 );
	Scene:LoadAIScript( "CAPTAIN_GUARD", "Resources/Script/Arcade_AIType_VirusGuard.lua", 18 );
	Scene:LoadAIScript( "VIRUS", "Resources/Script/Arcade_AIType_VirusCloseAttack.lua", 19 );

	-- ��������5 ���� NPC
	Scene:LoadAIScript( "MOONGK", "Resources/Script/Arcade_AIType_MoongK.lua", 20 );
	Scene:LoadAIScript( "MOONGK_BEHIND_SHOOT", "Resources/Script/Arcade_AIType_NinjaSMG.lua", 21 );

	-- ��������6 ���� NPC
	Scene:LoadAIScript( "BROKEN_FAM107", "Resources/Script/Arcade_AIType_BossShotaA.lua", 22 );
	Scene:LoadAIScript( "INFECTED_FAM107", "Resources/Script/Arcade_AIType_BossShota.lua", 23 );
	Scene:LoadAIScript( "INFECTED_ESPER_MS", "Resources/Script/Arcade_AIType_VirusEsperMS.lua", 24 );
	--Scene:LoadAIScript( "PARASITED_VIRUS", "Resources/Script/Arcade_AIType_VirusCloseAttack.lua", 25 );
	Scene:LoadAIScript( "INFECTED_ESPER_CN", "Resources/Script/Arcade_AIType_Canonade.lua", 26 );

	-- ��������7 ���� NPC
	Scene:LoadAIScript( "KICHI", "Resources/Script/Arcade_AIType_Kiki.lua", 27 );
	Scene:LoadAIScript( "INFECTED_ESPER_CC", "Resources/Script/Arcade_AIType_CountSword_01.lua", 28 );
	Scene:LoadAIScript( "INFECTED_ESPER_R", "Resources/Script/Arcade_AIType_R_KeepDist.lua", 29 );
	Scene:LoadAIScript( "INFECTED_ESPER_CU", "Resources/Script/Arcade_AIType_CountSword_02.lua", 30 );
	Scene:LoadAIScript( "INFECTED_ESPER_SNP", "Resources/Script/Arcade_AIType_sniper.lua", 31 );
	Scene:LoadAIScript( "INFECTED_ESPER_HMG", "Resources/Script/Arcade_AIType_VirusGuard.lua", 32 );
	Scene:LoadAIScript( "INFECTED_ESPER_SS", "Resources/Script/Arcade_AIType_SMG_Stand.lua", 33 );
	Scene:LoadAIScript( "INFECTED_ESPER_IV", "Resources/Script/Arcade_AIType_CountSword_Invi.lua", 34 );
	Scene:LoadAIScript( "INFECTED_TEAJO", "Resources/Script/Arcade_AIType_VirusTeajo.lua", 35 );
	Scene:LoadAIScript( "INFECTED_ESPER_B", "Resources/Script/Arcade_AIType_Robot_Bind.lua", 36 );
	Scene:LoadAIScript( "MASTERTR_A01", "Resources/Script/Arcade_AIType_MasterTrainingRobot_St07.lua", 37 );

	-- ��������8 ���� NPC
	Scene:LoadAIScript( "MOTHER_VIRUS", "Resources/Script/Arcade_AIType_BossVirus.lua", 38 );
	Scene:LoadAIScript( "INFECTED_HEALER", "Resources/Script/Arcade_AIType_VirusHelper.lua", 39 );
	
	-- �׽�Ʈ NPC
	Scene:LoadAIScript( "SUICIDE_ROBOT", "Resources/Script/Arcade_AIType_VirusSelfBoom.lua", 40 );
	Scene:LoadAIScript( "INFECTED_ESPER_SS2", "Resources/Script/Arcade_AIType_SMG_Stand_02.lua", 41 );
	
	--[[���� �̼� test NPC
	Scene:LoadAIScript( "�׽�Ʈ�κ�_01", "Resources/Script/Arcade_AIType_TrainingRobot01_test.lua", 42 );
	Scene:LoadAIScript( "�׽�Ʈ�κ�_02", "Resources/Script/Arcade_AIType_TrainingRobot01_test.lua", 43 );	
	Scene:LoadAIScript( "�׽�Ʈ�κ�_03", "Resources/Script/Arcade_AIType_TrainingRobot01_test.lua", 44 );
	Scene:LoadAIScript( "�׽�Ʈ�κ�_04", "Resources/Script/Arcade_AIType_TrainingRobot01_test.lua", 45 );	
	Scene:LoadAIScript( "��ȭ�κ�_01", "Resources/Script/Arcade_AIType_RobotCloseAttack_test.lua", 46 );
	Scene:LoadAIScript( "��ȭ�κ�_02", "Resources/Script/Arcade_AIType_RobotCloseAttack_test.lua", 47 );	
	Scene:LoadAIScript( "�����κ�", "Resources/Script/Arcade_AIType_VirusSelfBoom_test.lua", 48 );
	
	
	Scene:LoadAIScript( "���ֱ�������", "Resources/Script/Arcade_AIType_RobotRoundAttack_test.lua", 44 );
	Scene:LoadAIScript( "ü�¿���", "Resources/Script/Arcade_AIType_ItemOpen_test.lua", 45 );
	Scene:LoadAIScript( "���ǵ����", "Resources/Script/Arcade_AIType_ItemOpen_test.lua", 46 );
	Scene:LoadAIScript( "�Ŀ�����", "Resources/Script/Arcade_AIType_ItemOpen_test.lua", 47 );
	Scene:LoadAIScript( "����źâ����", "Resources/Script/Arcade_AIType_ItemOpen_test.lua", 48 );
	Scene:LoadAIScript( "ü��ȸ���ִ¾�", "Resources/Script/Arcade_AIType_TrainingRobot02_test.lua", 49 );
	Scene:LoadAIScript( "���������ִ¾�", "Resources/Script/Arcade_AIType_TrainingRobot02_test.lua", 50 );
	Scene:LoadAIScript( "������ִ¾�", "Resources/Script/Arcade_AIType_TrainingRobot02_test.lua", 51 );
	Scene:LoadAIScript( "źâ�ִ¾�", "Resources/Script/Arcade_AIType_GiveItem_Ammo.lua", 52 );
	Scene:LoadAIScript( "ù°����", "Resources/Script/Arcade_AIType_MasterTrainingRobot.lua", 53 );
	--�߰��ܰ�
	Scene:LoadAIScript( "��������Ʈ���ָ�", "Resources/Script/Arcade_AIType_VirusSelfBoom.lua", 56 );

--]]
	Scene:LoadTrigger( "Resources/Script/Arcade_Trigger.lua" ); 
end
