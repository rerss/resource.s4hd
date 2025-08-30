require "Resources/Script/Constants.lua"
require "Resources/Script/SentryGunAttrib_Constants.lua"
require "Resources/Script/Arcade_Util.lua"
require "Resources/Script/Arcade_Trigger_NotifyID.lua"


-- ��������
-- Arcade : CArcadeSystem.

-- ��������1 ���� ����Ʈ
gSpawnNod_St01 = {}
gSpawnNod_St01[1] = "arcade_spawn_stage03_01"
gSpawnNod_St01[2] = "arcade_spawn_stage03_02"
gSpawnNod_St01[3] = "arcade_spawn_stage03_03"
gSpawnNod_St01[4] = "arcade_spawn_stage03_04"
gSpawnNod_St01[5] = "arcade_spawn_stage03_05"
gSpawnNod_St01[6] = "arcade_spawn_stage03_06"
gSpawnNod_St01[7] = "arcade_spawn_stage03_07"
gSpawnNod_St01[8] = "arcade_spawn_stage03_08"
gSpawnNod_St01[9] = "arcade_spawn_stage03_09"
gSpawnNod_St01[10] = "arcade_spawn_stage03_10"
gSpawnNod_St01[11] = "arcade_spawn_stage03_11"
gSpawnNod_St01[12] = "arcade_spawn_stage03_12"
gSpawnNod_St01[13] = "arcade_spawn_stage03_13"
gSpawnNod_St01[14] = "arcade_spawn_stage03_14"
gSpawnNod_St01[15] = "arcade_spawn_stage03_15"
gSpawnNod_St01[16] = "arcade_spawn_stage03_16"
gSpawnNod_St01[17] = "arcade_spawn_stage03_17"
gSpawnNod_St01[18] = "arcade_spawn_stage03_18"
gSpawnNod_St01[19] = "arcade_spawn_stage03_19"
gSpawnNod_St01[20] = "arcade_spawn_stage03_20"
gSpawnNod_St01[21] = "arcade_spawn_stage03_21"
gSpawnNod_St01[22] = "arcade_spawn_stage03_22"
gSpawnNod_St01[23] = "arcade_spawn_stage03_23"
gSpawnNod_St01[24] = "arcade_spawn_stage03_24"
gSpawnNod_St01[25] = "arcade_spawn_stage03_25"

-- ��������3 ��������Ʈ
gSpawnNod_St03 = {}
gSpawnNod_St03[1] = "arcade_spawn_stage03_14"
gSpawnNod_St03[2] = "arcade_spawn_stage03_15"
gSpawnNod_St03[3] = "arcade_spawn_stage03_16"
gSpawnNod_St03[4] = "arcade_spawn_stage03_17"
gSpawnNod_St03[5] = "arcade_spawn_stage03_21"
gSpawnNod_St03[6] = "arcade_spawn_stage03_22"
gSpawnNod_St03[7] = "arcade_spawn_stage03_23"

-- ��������4 ���� ����Ʈ
gSpawnNod_St04 = {}
gSpawnNod_St04[1] = "arcade_spawn_stage05_a01"
gSpawnNod_St04[2] = "arcade_spawn_stage05_a02"
gSpawnNod_St04[3] = "arcade_spawn_stage05_a03"
gSpawnNod_St04[4] = "arcade_spawn_stage05_a04"
gSpawnNod_St04[5] = "arcade_spawn_stage05_a05"
gSpawnNod_St04[6] = "arcade_spawn_stage05_a06"
gSpawnNod_St04[7] = "arcade_spawn_stage05_a07"
gSpawnNod_St04[8] = "arcade_spawn_stage05_a08"
gSpawnNod_St04[9] = "arcade_spawn_stage05_b01"
gSpawnNod_St04[10] = "arcade_spawn_stage05_b02"
gSpawnNod_St04[11] = "arcade_spawn_stage05_b03"
gSpawnNod_St04[12] = "arcade_spawn_stage05_b04"

-- ��������5 5���� ����Ʈ
gSpawnNod_St05 = {}
gSpawnNod_St05[1] = "arcade_spawn_stage05_01"
gSpawnNod_St05[2] = "arcade_spawn_stage05_02"
gSpawnNod_St05[3] = "arcade_spawn_stage05_03"
gSpawnNod_St05[4] = "arcade_spawn_stage05_04"
gSpawnNod_St05[5] = "arcade_spawn_stage05_05"
gSpawnNod_St05[6] = "arcade_spawn_stage05_06"
gSpawnNod_St05[7] = "arcade_spawn_stage05_07"
gSpawnNod_St05[8] = "arcade_spawn_stage05_08"
gSpawnNod_St05[9] = "arcade_spawn_stage05_09"

--�������� 6 ���� ����Ʈ
gSpawnNod_St06 = {}
gSpawnNod_St06[1] = "arcade_spawn_stage06_a01"
gSpawnNod_St06[2] = "arcade_spawn_stage06_a02"
gSpawnNod_St06[3] = "arcade_spawn_stage06_a03"
gSpawnNod_St06[4] = "arcade_spawn_stage06_b01"
gSpawnNod_St06[5] = "arcade_spawn_stage06_b02"
gSpawnNod_St06[6] = "arcade_spawn_stage06_b03"
gSpawnNod_St06[7] = "arcade_spawn_stage06_b04"
gSpawnNod_St06[8] = "arcade_spawn_stage06_d01"
gSpawnNod_St06[9] = "arcade_spawn_stage06_d02"
gSpawnNod_St06[10] = "arcade_spawn_stage06_d03"
gSpawnNod_St06[11] = "arcade_spawn_stage06_d04"
gSpawnNod_St06[12] = "arcade_spawn_stage06_c01"
gSpawnNod_St06[13] = "arcade_spawn_stage06_c02"
gSpawnNod_St06[14] = "arcade_spawn_stage06_c03"
gSpawnNod_St06[15] = "arcade_spawn_stage06_c04"
gSpawnNod_St06[16] = "arcade_spawn_stage06_c05"
gSpawnNod_St06[17] = "arcade_spawn_stage06_c06"
gSpawnNod_St06[18] = "arcade_spawn_stage06_c07"
gSpawnNod_St06[19] = "arcade_spawn_stage06_c08"
gSpawnNod_St06[20] = "arcade_spawn_stage06_c09"
gSpawnNod_St06[21] = "arcade_spawn_stage06_e01"
gSpawnNod_St06[22] = "arcade_spawn_stage06_h01"
gSpawnNod_St06[23] = "arcade_spawn_stage06_h02"
gSpawnNod_St06[24] = "arcade_spawn_stage06_h03"
gSpawnNod_St06[25] = "arcade_spawn_stage06_h04"
gSpawnNod_St06[26] = "arcade_spawn_stage06_h05"
gSpawnNod_St06[27] = "arcade_spawn_stage06_h06"

-- ��������7 ���� ����Ʈ
gSpawnNod_St07 = {}
gSpawnNod_St07[1] = "arcade_spawn_stage08_a01"
gSpawnNod_St07[2] = "arcade_spawn_stage08_a02"
gSpawnNod_St07[3] = "arcade_spawn_stage08_a03"
gSpawnNod_St07[4] = "arcade_spawn_stage08_b01"
gSpawnNod_St07[5] = "arcade_spawn_stage08_b02"
gSpawnNod_St07[6] = "arcade_spawn_stage08_b03"
gSpawnNod_St07[7] = "arcade_spawn_stage08_b04"
gSpawnNod_St07[8] = "arcade_spawn_stage08_d01"
gSpawnNod_St07[9] = "arcade_spawn_stage08_d02"
gSpawnNod_St07[10] = "arcade_spawn_stage08_d03"
gSpawnNod_St07[11] = "arcade_spawn_stage08_d04"
gSpawnNod_St07[12] = "arcade_spawn_stage08_c01"
gSpawnNod_St07[13] = "arcade_spawn_stage08_c02"
gSpawnNod_St07[14] = "arcade_spawn_stage08_c03"
gSpawnNod_St07[15] = "arcade_spawn_stage08_e01"
gSpawnNod_St07[16] = "arcade_spawn_stage08_e02"
gSpawnNod_St07[17] = "arcade_spawn_stage08_e03"
gSpawnNod_St07[18] = "arcade_spawn_stage08_f01"
gSpawnNod_St07[19] = "arcade_spawn_stage08_f02"
gSpawnNod_St07[20] = "arcade_spawn_stage08_f03"
gSpawnNod_St07[21] = "arcade_spawn_stage08_f04"
gSpawnNod_St07[22] = "arcade_spawn_stage08_d02"
gSpawnNod_St07[23] = "arcade_spawn_stage08_d03"
gSpawnNod_St07[24] = "arcade_spawn_stage08_c01"
gSpawnNod_St07[25] = "arcade_spawn_stage08_g01"
gSpawnNod_St07[26] = "arcade_spawn_stage08_g02"
gSpawnNod_St07[27] = "arcade_spawn_stage08_g03"
gSpawnNod_St07[28] = "arcade_spawn_stage08_g04"
gSpawnNod_St07[29] = "arcade_spawn_stage08_g05"
gSpawnNod_St07[30] = "arcade_spawn_stage08_g06"
gSpawnNod_St07[31] = "arcade_spawn_stage08_g07"
gSpawnNod_St07[32] = "arcade_spawn_stage08_g08"
gSpawnNod_St07[33] = "arcade_spawn_stage08_g09"
gSpawnNod_St07[34] = "arcade_spawn_stage08_g10"
gSpawnNod_St07[35] = "arcade_spawn_stage08_g11"
gSpawnNod_St07[36] = "arcade_spawn_stage08_g12"

gSpawnNod_St07[37] = "arcade_spawn_stage07_b01"
gSpawnNod_St07[38] = "arcade_spawn_stage07_b02"
gSpawnNod_St07[39] = "arcade_spawn_stage07_b03"
gSpawnNod_St07[40] = "arcade_spawn_stage07_b04"
gSpawnNod_St07[41] = "arcade_spawn_stage07_b05"
gSpawnNod_St07[42] = "arcade_spawn_stage07_b06"
gSpawnNod_St07[43] = "arcade_spawn_stage07_b07"
gSpawnNod_St07[44] = "arcade_spawn_stage07_b08"
gSpawnNod_St07[45] = "arcade_spawn_stage07_b09"
gSpawnNod_St07[46] = "arcade_spawn_stage07_b10"
gSpawnNod_St07[47] = "arcade_spawn_stage07_b11"
gSpawnNod_St07[48] = "arcade_spawn_stage07_b12"
gSpawnNod_St07[49] = "arcade_spawn_stage07_b13"
gSpawnNod_St07[50] = "arcade_spawn_stage07_b14"
gSpawnNod_St07[51] = "arcade_spawn_stage07_b15"
gSpawnNod_St07[52] = "arcade_spawn_stage07_b16"
gSpawnNod_St07[53] = "arcade_spawn_stage07_b17"
gSpawnNod_St07[54] = "arcade_spawn_stage07_b18"
gSpawnNod_St07[55] = "arcade_spawn_stage07_b19"
gSpawnNod_St07[56] = "arcade_spawn_stage07_b20"

gCount = 0;
gCountA = 0;
-------------------------------------------------------------------------------------------------------------------
-- Host�� �ʱ�ȭ, Arcade�� ��Ÿ�Ͽ� �°� Host�� ����� ������ ����
-- �Էº��� : Host : CScriptHostController
-------------------------------------------------------------------------------------------------------------------
function Init()

	Arcade:Print( string.format( "�١١� Init ���� �١١�") ); 

	Arg = Host:GetArg();
	
	--�ʱ�ȭ
	Arg:ResetArg();	

	-- AI ����
	Arg:PushLU32( "NUM_AI_ACTOR", 0 ); 

	-- �������� ���̵� ( 1~8 : ��������1~8 - �������� ���� ������ 1���Ұ� )
	Arg:PushLU32( "NOW_STAGE_ID", 1 );  

	-- ������ ���̵�
	Arg:PushLU32( "PHASE_ID", 0 );

	-- ������ Ÿ�̸� �Լ��� ���Ǵ� üĿ
	Arg:PushLU32( "PAST_TIME", 0 );

	-- ��������1 ���� NPC
	Arg:PushLU32( "TR_A01", 0 );
	Arg:PushLU32( "TR_B01", 0 );
	Arg:PushLU32( "TR_C01", 0 );
	Arg:PushLU32( "MASTERTR_A01", 0 );

	-- ��������2 ���� NPC
	Arg:PushLU32( "TAEJO_HOT_FAN", 0 );
	Arg:PushLU32( "TAEJO_CRAZY_FAN", 0 );
	Arg:PushLU32( "TAEJO_CHIEFSHOOT_FAN", 0 );
	Arg:PushLU32( "TAEJO_CHIEFSWORD_FAN", 0 );
	Arg:PushLU32( "TAEJO_CHIEFMH_FAN", 0 );
	Arg:PushLU32( "TAEJO_BEHIND_SWORD", 0 );
	Arg:PushLU32( "TAEJO", 0 );

	-- ��������3 ���� NPC
	Arg:PushLU32( "INFECTED_TR_A01", 0 );
	Arg:PushLU32( "INFECTED_TR_B01", 0 );

	-- ��������4 ���� NPC
	Arg:PushLU32( "INJURYED_TEAJO", 0 );
	Arg:PushLU32( "INFECTED_ESPER_P", 0 );
	Arg:PushLU32( "INFECTED_ESPER_S", 0 );
	Arg:PushLU32( "CAPTAIN_GUARD", 0 );
	Arg:PushLU32( "VIRUS", 0 );

	-- ��������5 ���� NPC
	Arg:PushLU32( "MOONGK", 0 );
	Arg:PushLU32( "MOONGK_BEHIND_SHOOT", 0 );

	-- �������� 6���� NPC
	Arg:PushLU32( "INFECTED_FAM107", 0 );
	Arg:PushLU32( "BROKEN_FAM107", 0 );
	Arg:PushLU32( "INFECTED_ESPER_MS", 0 );
	--Arg:PushLU32( "PARASITED_VIRUS", 0 );
	Arg:PushLU32( "INFECTED_ESPER_CN", 0 );
	
	-- �������� 7���� NPC
	Arg:PushLU32( "KICHI", 0 );
	Arg:PushLU32( "INFECTED_ESPER_CC", 0 );
	Arg:PushLU32( "INFECTED_ESPER_R", 0 );
	Arg:PushLU32( "INFECTED_ESPER_CU", 0 );
	Arg:PushLU32( "INFECTED_ESPER_SNP", 0 );
	Arg:PushLU32( "INFECTED_ESPER_HMG", 0 );
	Arg:PushLU32( "INFECTED_ESPER_SS", 0 );
	Arg:PushLU32( "INFECTED_ESPER_IV", 0 );
	Arg:PushLU32( "INFECTED_TEAJO", 0 );
	Arg:PushLU32( "INFECTED_ESPER_B", 0 );
	Arg:PushLU32( "INFECTED_ESPER_SS2", 0 );
	Arg:PushLU32( "SUICIDE_ROBOT", 0 );
	
	-- �������� 8���� NPC	
	Arg:PushLU32( "MOTHER_VIRUS", 0 );
	Arg:PushLU32( "INFECTED_HEALER", 0 );
	
	-- ������ ���� ī��Ʈ
	Arg:PushLU32( "ITEMSPAWNCOUNT", 0 );

	--�� �������� �����Ѵ�.
	--LuaTotalStage( Arcade, Host, 8 );		
	--monsterTime = 0;

end
--[[
function MonsterTimeCheck( callcnt, monstertime, u32DeltaTime )
	
	if callcnt == 0	then
		monstertime = 0;
	end
	monstertime = monstertime + u32DeltaTime;
end
]]--
-------------------------------------------------------------------------------------------------------------------
-- �����ð����� ������ �Լ�. 
-- �Էº��� : UpdateArg( "DELTA_TIME", "ACCUMULATE_TIME", "HOST_CONTROLLER" )
-------------------------------------------------------------------------------------------------------------------
function Update()    
	
	
	-- ������ �ð��� Ȯ���ϱ� ���� �����ð��� ������ �´�.
	u32AccumulateTime = UpdateArg:GetLU32( "ACCUMULATE_TIME" );

	-- �ð���ȭ�� Ȯ���ϱ� ���� ��ȭ�� �ð��� ������ �´�.
	u32DeltaTime = UpdateArg:GetLU32( "DELTA_TIME" );
	
	Host = UpdateArg:GetHostController( "HOST_CONTROLLER" );
	HostArg = Host:GetArg();

	-- �������� �Ǵ��� ���ؼ� ���� ���������� ���̵� ������ �´�.
	u32StageID = HostArg:GetLU32( "NOW_STAGE_ID" );

	-- �������� �Ǵ��� ���ؼ� ���� �������� ���̵� ������ �´�.
	u32PhaseCheck = HostArg:GetLU32( "PHASE_ID" );

	--Print( string.format( "\n �ڡڡھ�����Ʈ���� time = %d Phase = %d�ڡڡ�",u32AccumulateTime, u32PhaseCheck ) );

	-- �׽�Ʈ�ڵ�
	--Arcade:Print( string.format( "\n �ڡڡھ�����Ʈ���� CS=%d/CP=%d�ڡڡ�",u32StageID,u32PhaseCheck ) );
	
	-- ��������1 Wave ���� ����
	if u32StageID == 1 then
		Stage01();
	-- ��������2 Wave ���� ����
	elseif u32StageID == 2 then
		Stage02();
	-- ��������3 ���̺� ���� ����
	elseif u32StageID == 3 then	
		Stage03();
	-- ��������4 ���̺� ����
	elseif u32StageID == 4 then
		Stage04();
	-- ��������5 ����
	elseif u32StageID == 5 then
		Stage05();
	--  ��������6 ����
	elseif u32StageID == 6 then
		Stage06();
	-- ��������7 ���̺� ����
	elseif u32StageID == 7 then
		Stage07();
	-- ��������8 ���̺� ����
	elseif u32StageID == 8 then
		Stage08();		
	end

end

-------------------------------------------------------------------------------------------------------------------
-- Stage�� Actor ���
-- �Էº��� : UpdateArg( "DELTA_TIME", "ACCUMULATE_TIME", "HOST_CONTROLLER" )
function AiRegister( stageID )
-- ��������1 Actor ���
	if u32StageID == 1 then
		LuaRegistArcadeActor( Arcade, Host, "TR_A01", "TypeTRA", 10 );		
		LuaRegistArcadeActor( Arcade, Host, "TR_B01", "TypeTRB", 6 );
		LuaRegistArcadeActor( Arcade, Host, "MASTERTR_A01", "TypeTRB_Big", 2 );
	-- ��������2 Actor ���
	elseif u32StageID == 2 then
		LuaRegistArcadeActor( Arcade, Host, "TAEJO_CRAZY_FAN", "TypeB", 4 );		
		LuaRegistArcadeActor( Arcade, Host, "TAEJO_HOT_FAN", "TypeA", 2 );
		LuaRegistArcadeActor( Arcade, Host, "TAEJO_CHIEFSHOOT_FAN", "TypeChiefFan", 1 );
		LuaRegistArcadeActor( Arcade, Host, "TAEJO_CHIEFSWORD_FAN", "TypeChiefSword", 1 );		
		LuaRegistArcadeActor( Arcade, Host, "TAEJO_CHIEFMH_FAN", "TypeChiefSMH", 1 );
		LuaRegistArcadeActor( Arcade, Host, "TAEJO", "TypeTeajo", 1 );
		LuaRegistArcadeActor( Arcade, Host, "TAEJO_BEHIND_SWORD", "TypeTeajoSword", 2 );
	-- ��������3 Actor ���
	elseif u32StageID == 3 then	
		LuaRegistArcadeActor( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", 12 );
		LuaRegistArcadeActor( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", 4 );
		LuaRegistArcadeActor( Arcade, Host, "VIRUS", "TypeVirus", 16	);
	-- ��������4 Actor ���
	elseif u32StageID == 4 then
		LuaRegistArcadeActor( Arcade, Host, "INFECTED_ESPER_P", "TypeVirusClose", 5 );
		LuaRegistArcadeActor( Arcade, Host, "INFECTED_ESPER_S", "TypeVirusEsperS", 5 );
		LuaRegistArcadeActor( Arcade, Host, "INFECTED_ESPER_SS", "TypeVirusEsperSS", 3	);
		LuaRegistArcadeActor( Arcade, Host, "VIRUS", "TypeVirus", 10	);
		LuaRegistArcadeActor( Arcade, Host, "INJURYED_TEAJO", "TypeTeajoA", 1	);
		LuaRegistArcadeActor( Arcade, Host, "CAPTAIN_GUARD", "TypeHMG_Captain", 1	);
	-- ��������5 Actor ���
	elseif u32StageID == 5 then
		LuaRegistArcadeActor( Arcade, Host, "MOONGK_BEHIND_SHOOT", "TypeD", 4 );
		LuaRegistArcadeActor( Arcade, Host, "MOONGK", "TypeMoongK", 1 );
	--  ��������6 Actor ���
	elseif u32StageID == 6 then
		LuaRegistArcadeActor( Arcade, Host, "INFECTED_ESPER_MS", "TypeMindShock", 4 );
		LuaRegistArcadeActor( Arcade, Host, "VIRUS", "TypeVirus", 10 );
		LuaRegistArcadeActor( Arcade, Host, "BROKEN_FAM107", "TypeBossShotaA", 4 );
		LuaRegistArcadeActor( Arcade, Host, "INFECTED_ESPER_CN", "TypeCannonade", 3 );
		LuaRegistArcadeActor( Arcade, Host, "KICHI", "TypeKiki", 3 );
		LuaRegistArcadeActor( Arcade, Host, "INFECTED_FAM107", "TypeBossShota", 1 );
	-- ��������7 Actor ���
	elseif u32StageID == 7 then
		LuaRegistArcadeActor( Arcade, Host, "INFECTED_ESPER_CC", "TypeCounterSwordCombo", 4 );
		LuaRegistArcadeActor( Arcade, Host, "INFECTED_ESPER_CU", "TypeVirusEsperCU", 2 );
		LuaRegistArcadeActor( Arcade, Host, "INFECTED_ESPER_SS2", "TypeVirusEsperSS2", 3 );
		LuaRegistArcadeActor( Arcade, Host, "SUICIDE_ROBOT", "TypeTRA_Big", 3 );
		LuaRegistArcadeActor( Arcade, Host, "INFECTED_ESPER_SNP", "TypeRailgun", 4 );
		LuaRegistArcadeActor( Arcade, Host, "MASTERTR_A01", "TypeTRB_Big", 2 );
		LuaRegistArcadeActor( Arcade, Host, "INFECTED_TEAJO", "TypeVirusTeajo", 1 );
		LuaRegistArcadeActor( Arcade, Host, "INFECTED_ESPER_B", "TypeBind", 2 );
		LuaRegistArcadeActor( Arcade, Host, "KICHI", "TypeKiki", 1 );
	-- ��������8 Actor ���
	elseif u32StageID == 8 then
		LuaRegistArcadeActor( Arcade, Host, "VIRUS", "TypeVirus", 16 );
		LuaRegistArcadeActor( Arcade, Host, "INFECTED_HEALER", "TypeVirusHelper", 3 );
		LuaRegistArcadeActor( Arcade, Host, "MOTHER_VIRUS", "TypeBossVirus", 1 );		
	end
end
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- PlayMovie()  �ϸ� ������ �Լ�, �� Movie���� �����Ұ͵��� �ϸ� ����. �ֵ� ��ġ, ���� ����, hp���� ���.
-- �Էº��� : MovieStartArg( "MOVIESYSTEM_ID", "HOST_CONTROLLER" )
-------------------------------------------------------------------------------------------------------------------
function MovieStart()
	
	Arcade:Print( string.format( "����ŸƮ����ȴ�." ) );

    MovieID = MovieStartArg:GetLU32( "MOVIESYSTEM_ID" );
	Host = MovieStartArg:GetHostController( "HOST_CONTROLLER" );
    u32StageID = HostArg:GetLU32( "NOW_STAGE_ID" );

end

-------------------------------------------------------------------------------------------------------------------
-- PlayMovie() ����Ǹ� ������ �Լ�
-- �Էº��� : MovieEndArg( "MOVIESYSTEM_ID", "HOST_CONTROLLER" )
-------------------------------------------------------------------------------------------------------------------
function MovieEnd()
	
	Arcade:Print( string.format( "���񿣵����ȴ�." ) );

    MovieID = MovieEndArg:GetLU32( "MOVIESYSTEM_ID" );
    Host = MovieEndArg:GetHostController( "HOST_CONTROLLER" );
    HostArg = Host:GetArg();

	Host:ResetTimer();

	Print( string.format( "���� ������ �ð��� �ʱ�ȭ ���״�!" ) );
	
	u32StageID = HostArg:GetLU32( "NOW_STAGE_ID" );
    
			
	if u32StageID == 1 then
		-- ������ ���̵� �ʱ�ȭ
		HostArg:SetLU32( "PHASE_ID", 0 );
		LuaSyncHostData( Arcade, Host, "PHASE_ID" );

		-- ��������1 �÷��̾� ����
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_01" );

    elseif u32StageID == 2 then

		if u32PhaseCheck == 100 then
			HostArg:SetLU32( "PHASE_ID", 0 );
			LuaSyncHostData( Arcade, Host, "PHASE_ID" );
		elseif u32PhaseCheck == 6 then
			-- ������10��
			LuaViewMissionInfo( Arcade, Host, 3, 0, 0, 0, 0.5, 4000 );
			PhaseAdd();
		elseif u32PhaseCheck == 11 then
			-- ������15��
			LuaViewMissionInfo( Arcade, Host, 4, 0, 0, 0, 0.5, 4000 );
			PhaseAdd();
		end

		-- ��������2�� ���� ��ġ�� �̵� ���� ��
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_01" );
		
		if u32PhaseCheck == 100 then
		elseif u32PhaseCheck == 6 then
			-- ������10��
			LuaViewMissionInfo( Arcade, Host, 3, 0, 0, 0, 0.5, 4000 );
		elseif u32PhaseCheck == 11 then
			-- ������15��
			LuaViewMissionInfo( Arcade, Host, 4, 0, 0, 0, 0.5, 4000 );
		end

	
    elseif u32StageID == 3 then
    
		if u32PhaseCheck == 100 then
			HostArg:SetLU32( "PHASE_ID", 0 );
			LuaSyncHostData( Arcade, Host, "PHASE_ID" );
		elseif u32PhaseCheck == 13 then
			LuaViewMissionInfo( Arcade, Host, 6, 0, 0, 0, 0.5, 4000 );
			 -- ������16��
			 PhaseAdd();
		end

		-- ��������2 ���� �� 3�������� ���� ��ġ�� �̵� ���� ��
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_01" );
		
		if u32PhaseCheck == 100 then
		elseif u32PhaseCheck == 15 then
			 LuaViewMissionInfo( Arcade, Host, 6, 0, 0, 0, 0.5, 4000 );
		end

	
	elseif u32StageID == 4 then
		
		if u32PhaseCheck == 100 then
			HostArg:SetLU32( "PHASE_ID", 0 );
			LuaSyncHostData( Arcade, Host, "PHASE_ID" );
			
			-- ��������4 ���۹��� ���� �� 4�������� ���� ��ġ�� �̵� ���� ��
			LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_stage5" );

		elseif u32PhaseCheck == 15 then
			-- ������19��
			
			-- ��������4 ���۹��� ���� �� 4�������� ���� ��ġ�� �̵� ���� ��
			LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_stage5" );

			LuaViewMissionInfo( Arcade, Host, 8, 0, 0, 0, 0.5, 4000 );
			
			PhaseAdd();
		elseif u32PhaseCheck == 19 then
			-- ������23��
			PhaseAdd();
		end	

	elseif u32StageID == 5 then
		
		if u32PhaseCheck == 100 then
			HostArg:SetLU32( "PHASE_ID", 0 );
			LuaSyncHostData( Arcade, Host, "PHASE_ID" );
			LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_05_01" );
		elseif u32PhaseCheck == 3 then
			LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_05_01" );
			-- ������4��
			PhaseAdd();
		elseif u32PhaseCheck == 7 then
			-- ������8��
			PhaseAdd();
		end
					
	elseif u32StageID == 6 then
		
		if u32PhaseCheck == 100 then
			HostArg:SetLU32( "PHASE_ID", 0 );
			LuaSyncHostData( Arcade, Host, "PHASE_ID" );
			LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_stage06" );
		elseif u32PhaseCheck == 30 then
			LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_stage06_02" );
			LuaViewMissionInfo( Arcade, Host, 11, 0, 0, 0, 0.5, 4000 );
			-- ������31��
			PhaseAdd();
		elseif u32PhaseCheck == 34 then
			LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_stage06_02" );
			-- ������35��
			PhaseAdd();
		end
			
	elseif u32StageID == 7 then

		if u32PhaseCheck == 100 then
			HostArg:SetLU32( "PHASE_ID", 0 );
			LuaSyncHostData( Arcade, Host, "PHASE_ID" );
			
			-- ��������6 ���� �� 7�������� ���� ��ġ�� �̵� ���� ��
			LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_stage08" );
		elseif u32PhaseCheck == 41 then
			-- ������51��
			PhaseAdd();
			-- ��������6 ���� �� 7�������� ���� ��ġ�� �̵� ���� ��
			LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_m15" );
			LuaViewMissionInfo( Arcade, Host, 13, 0, 0, 0, 0.5, 4000 );
		end

	elseif u32StageID == 8 then

		if u32PhaseCheck == 100 then
			HostArg:SetLU32( "PHASE_ID", 0 );
			LuaSyncHostData( Arcade, Host, "PHASE_ID" );
			-- ��������7 ���� �� 8�������� ������ġ�� �̵����� ��
			LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_stage09" );
		elseif u32PhaseCheck == 4 then
			-- �����û
			LuaRequestStageClear( Arcade, Host );
		end

	end

end

-------------------------------------------------------------------------------------------------------------------
--AIActor�� ������ ������ �Լ�
--�Էº��� : DeathAIActorArg( "AI_ACTOR", "AI_TYPE", "HOST_CONTROLLER" )
-------------------------------------------------------------------------------------------------------------------
function DeathAIActor()
	Arcade:Print( string.format( "����üĿ����ȴ�." ) );
end

-------------------------------------------------------------------------------------------------------------------
--AIActor�� �������� ������ �Լ�
--�Էº��� : RemoveAIActorArg( "AI_ACTOR", "AI_TYPE", "HOST_CONTROLLER" )
--�����ڵ带 ����� �� ����ī��Ʈ�� ����������� ������ �� �Լ� �ȿ��� �ذ�
-------------------------------------------------------------------------------------------------------------------

function RemoveAIActor()

	Arcade:Print( string.format( "������üĿ����ȴ�." ) );

	Host = RemoveAIActorArg:GetHostController( "HOST_CONTROLLER" );
	HostArg = Host:GetArg();
       
	AIActor = RemoveAIActorArg:GetAIActor( "AI_ACTOR" ); 
	szAiType = RemoveAIActorArg:GetLStr( "AI_TYPE" );--szAiType == TAEJO_HOT_FAN
    
    --������
	--��������1
	local myTRobotA = 0
	local myTRobotB = 0
	local myTRobotC = 0
	
	if szAiType == "TR_A01" then
		myTRobotA = myTRobotA +1;
	elseif szAiType == "TR_B01" then
		myTRobotB = myTRobotB +1;
	elseif szAiType == "TR_C01" then
		myTRobotC = myTRobotC +1;
	end

	--��������2
	local myTeajoFanA = 0
	local myTeajoFanB = 0

	if szAiType == "TAEJO_HOT_FAN" then
		myTeajoFanA = myTeajoFanA +1;
	elseif szAiType == "TAEJO_CRAZY_FAN" then
		myTeajoFanB = myTeajoFanB +1;
	end

	-- ��������3
	local myVirusT02 = 0
	local myVirusT04 = 0
	local myVirus = 0

	if szAiType == "INFECTED_TR_A01" then
		myVirusT02 = myVirusT02 +1;
	elseif szAiType == "INFECTED_TR_B01" then
		myVirusT04 = myVirusT04 +1;
	elseif szAiType == "VIRUS" then
		myVirus = myVirus + 1;
	end

	-- ��������4
	local myVirusEsperP = 0
	local myVirusEsperS = 0
	local myVirusEsperSS = 0

	if szAiType == "INFECTED_ESPER_P" then
		myVirusEsperP = myVirusEsperP +1;
	elseif szAiType == "INFECTED_ESPER_S" then
		myVirusEsperS = myVirusEsperS +1;
	elseif szAiType == "INFECTED_ESPER_SS" then
		myVirusEsperSS = myVirusEsperSS +1;
	end

	-- ��������5	
	local myNinjaSMG = 0

	if szAiType == "MOONGK_BEHIND_SHOOT" then
		myNinjaSMG = myNinjaSMG +1;
	end

	-- ��������6
	local myVirusEsperMS = 0
	
	if szAiType == "INFECTED_ESPER_MS" then
		myVirusEsperMS = myVirusEsperMS +1;
	end

	-- ��������7
	local myVirusEsperCC = 0
	local myVirusEsperCU = 0
	local myVirusEsperIV = 0
	local myVirusEsperR = 0
	local mySelfBoomRobot = 0
	local myVirusEsperSS_02 = 0
	local myVirusEsperSnp = 0
	local myVirusEsperB = 0

	if szAiType == "INFECTED_ESPER_CC" then
		myVirusEsperCC = myVirusEsperCC +1;
	elseif szAiType == "INFECTED_ESPER_CU" then
		myVirusEsperCU = myVirusEsperCU +1;
	elseif szAiType == "INFECTED_ESPER_IV" then
		myVirusEsperIV = myVirusEsperIV +1;
	elseif szAiType == "INFECTED_ESPER_R" then
		VirusEsperR = VirusEsperR +1;
	elseif szAiType == "SUICIDE_ROBOT" then
		mySelfBoomRobot = mySelfBoomRobot + 1;
	elseif szAiType == "INFECTED_ESPER_SS2" then
		myVirusEsperSS_02 = myVirusEsperSS_02 + 1;
	elseif szAiType == "INFECTED_ESPER_SNP" then
		myVirusEsperSnp = myVirusEsperSnp + 1;	
	elseif szAiType == "INFECTED_ESPER_B" then
		myVirusEsperB = myVirusEsperB + 1;
	end

	-- ��������8
	local myVirusEsperH = 0

	if szAiType == "INFECTED_HEALER" then
		myVirusEsperH = myVirusEsperH + 1;
	end

	local MonsterRespawnCalcu = 0
	local MonsterRespawnCalcu1 = 0

	if u32StageID >= 1 then
		u32AITypeDeathCount = HostArg:GetLU32( szAiType );
		u32AITypeDeathCount = u32AITypeDeathCount + 1;
		HostArg:SetLU32( szAiType, u32AITypeDeathCount );		
		LuaSyncHostData( Arcade, Host, szAiType );

		u32TeajoKwangFan = HostArg:GetLU32( "TAEJO_CRAZY_FAN" );
		u32TeajoYeolsungFan = HostArg:GetLU32( "TAEJO_HOT_FAN" );
		u32TeajoHongboFan = HostArg:GetLU32( "TAEJO_CHIEFSHOOT_FAN");
		u32TeajoHeangsaFan = HostArg:GetLU32( "TAEJO_CHIEFSWORD_FAN");
		u32TeajoLeaderFan = HostArg:GetLU32( "TAEJO_CHIEFMH_FAN");
		u32Teajosmen = HostArg:GetLU32( "TAEJO_BEHIND_SWORD");
		u32Teajo = HostArg:GetLU32( "TAEJO");
		u32VirusT02 = HostArg:GetLU32( "INFECTED_TR_A01"); 
		u32VirusT04 = HostArg:GetLU32( "INFECTED_TR_B01"); 
		u32TeajoInjured = HostArg:GetLU32( "INJURYED_TEAJO");
		u32VirusEsperP = HostArg:GetLU32( "INFECTED_ESPER_P");
		u32VirusEsperS = HostArg:GetLU32( "INFECTED_ESPER_S");
		u32CaptainGuard = HostArg:GetLU32( "CAPTAIN_GUARD");
		u32VirusEsperCC = HostArg:GetLU32( "INFECTED_ESPER_CC");
		accVirusEsperR = HostArg:GetLU32( "INFECTED_ESPER_R");
		u32VirusEsperCU = HostArg:GetLU32( "INFECTED_ESPER_CU");
		u32VirusGuard = HostArg:GetLU32( "INFECTED_ESPER_HMG" );
		u32VirusEsperSS = HostArg:GetLU32( "INFECTED_ESPER_SS");
		u32NinjaSMG = HostArg:GetLU32( "INFECTED_ESPER_SS");
		u32MoongK = HostArg:GetLU32( "MOONGK");
		u32TRobotA = HostArg:GetLU32( "TR_A01");
		u32TRobotB = HostArg:GetLU32( "TR_B01");
		u32TRobotC = HostArg:GetLU32( "TR_C01");
		u32VirusEsperIV = HostArg:GetLU32( "INFECTED_ESPER_IV" );
		u32VirusTeajo = HostArg:GetLU32( "INFECTED_TEAJO" );
		u32Virus = HostArg:GetLU32( "VIRUS" );
		u32MotherVirus = HostArg:GetLU32("MOTHER_VIRUS" );
		u32Kichi = HostArg:GetLU32( "KICHI" )
		
		u32VirusEsperMS = HostArg:GetLU32( "INFECTED_ESPER_MS" );
		u32VirusEsperCN = HostArg:GetLU32( "INFECTED_ESPER_CN" );
		u32BossShota = HostArg:GetLU32( "INFECTED_FAM107" );
		u32BossShotaA = HostArg:GetLU32( "BROKEN_FAM107" );
		--u32VirusA = HostArg:GetLU32( "PARASITED_VIRUS" );
		
		u32VirusEsperB = HostArg:GetLU32( "INFECTED_ESPER_B" );
		
		u32MasterTraningRobot = HostArg:GetLU32( "MASTERTR_A01" );
		
		u32SelfBoomRobot = HostArg:GetLU32( "SUICIDE_ROBOT" );
		u32VirusEsperSS_02 = HostArg:GetLU32( "INFECTED_ESPER_SS2" );
		u32VirusEsperSnp = HostArg:GetLU32( "INFECTED_ESPER_SNP" );

		Arcade:Print( string.format( "\n���������� %s�� %d�� ���� ����������\n", szAiType, u32AITypeDeathCount ) );
		
		-- ��������1 ����
		if u32StageID == 1 then
		
			-- �������� �ʵ忡 ������ �Ѹ���
			--�Էº��� AIActorName(���� AI ���� �̸�), SpawnRate(�������� ������ Ȯ��), bRandom(�������� ������ũ�� �������� ����), minRandomList(���� �ٸ����̼��� �ּҰ�), maxRandomList(���� �ٸ����̼��� �ִ밪), bMustGive(������ ���� ��� ������� �ִ� ���������� ����)
			--RandomItemSpawn( "TR_A01", 100, false, 3, 3, 0.5, 0.25, false );
				RandomItemSpawn( "TR_A01", 30, false, 3, 6, 0.05, 0.2, false );	
				RandomItemSpawn( "TR_B01", 30, false, 8, 13, 0.05, 0.2, false );
			--RandomItemSpawn( "TR_B01", 100, false, 3, 3, 0.5, 0.25, false );
				RandomItemSpawn( "MASTERTR_A01", 200, false, 9, 9, 0.05, 0.2, true );
				
			-- ����
			MonsterRespawnCalcu = Arcade:CalcuAiMonsterRespawn( 15 );
			
			Print( string.format( "��������1 15���� �߰��� %d ���� �� ",  MonsterRespawnCalcu ) );

			
			if ( u32PhaseCheck >= 5 ) and ( u32PhaseCheck <= 5 ) and ( myTRobotA > 0 ) and ( u32TRobotA <= 15 + MonsterRespawnCalcu ) then
				for indx = 1, myTRobotA do
					LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(14,16)] );
				end
				myTRobotA = 0;
			end
			
			-- AI ų���� ���� ������ �÷���
			if ( u32PhaseCheck == 5 ) and ( u32TRobotA == 25 + MonsterRespawnCalcu ) then
				-- ���� ų�� �ʱ�ȭ
				HostArg:SetLU32( "TR_A01", 0);
				-- ������6��
				PhaseAdd();
			end

			MonsterRespawnCalcu = Arcade:CalcuAiMonsterRespawn( 4 );

			--Print( string.format( "��������1 4���� �߰��� %d ���� �� ",  MonsterRespawnCalcu ) );

			-- ����
			if ( u32PhaseCheck >= 8 ) and ( u32PhaseCheck <= 8 ) and ( myTRobotB > 0 ) and ( u32TRobotB <= 4 + MonsterRespawnCalcu ) then
				for indx = 1, myTRobotB do
					LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(14,16)] );
				end
				myTRobotB = 0;
			end

			if ( u32PhaseCheck == 8 ) and ( u32TRobotB == 10 + MonsterRespawnCalcu ) then
				-- ���� ų �� �ʱ�ȭ
				HostArg:SetLU32( "TR_B01", 0);
				-- ������9��
				PhaseAdd();
			end

			MonsterRespawnCalcu = Arcade:CalcuAiMonsterRespawn( 5 );
			MonsterRespawnCalcu1 = Arcade:CalcuAiMonsterRespawn( 5 );

			--Print( string.format( "��������1 13���� �߰��� %d ���� �� ",  MonsterRespawnCalcu ) );
			--Print( string.format( "��������1 6���� �߰��� %d ���� �� ",  MonsterRespawnCalcu1 ) );


			-- ����
			if ( u32PhaseCheck >= 11 ) and ( u32PhaseCheck <= 11 ) and ( myTRobotA > 0 ) and ( u32TRobotA <= 5 + MonsterRespawnCalcu ) then
				for indx = 1, myTRobotA do
					LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random( 14, 16 )] );
				end
				myTRobotA = 0;
			end
			
			if ( u32PhaseCheck >= 11 ) and ( u32PhaseCheck <= 11 ) and ( myTRobotB > 0 ) and ( u32TRobotB <= 5 + MonsterRespawnCalcu1 ) then
				for indx = 1, myTRobotB do
					LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random( 14, 16 )] );
				end
				myTRobotB = 0;
			end
--[[
			-- AI ų���� ���� ������ �÷���
			if ( u32PhaseCheck == 11 ) and ( u32TRobotA == 18 + MonsterRespawnCalcu ) and ( u32TRobotB == 12 + MonsterRespawnCalcu1 ) then
				-- ������12��
				PhaseAdd();
			end
			]]--
			if ( u32PhaseCheck == 11 ) and ( u32TRobotA + u32TRobotB == 20 + MonsterRespawnCalcu + MonsterRespawnCalcu1 ) then
			--if ( u32PhaseCheck == 11 ) and ( u32TRobotA == 10 + MonsterRespawnCalcu) and ( u32TRobotB == 10 + MonsterRespawnCalcu1 ) then
				-- ������12��
				HostArg:SetLU32( "TR_A01", 0);
				HostArg:SetLU32( "TR_B01", 0);
				PhaseAdd();
			end
			
			-- �����ڵ�
			if ( u32PhaseCheck >= 13 ) and ( u32PhaseCheck <= 14 ) and ( myTRobotA > 0 ) and ( u32TRobotA > 0 ) then
				
				RandomItemSpawn( "TR_A01", 30, false, 3, 6, 0.05, 0.2, true );
				
				for indx = 1, myTRobotA do
					Arcade:Print( string.format( "\n����������������������\n") );
					LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(14,16)] );
				end
				myTRobotA = 0;
			end	
			
			-- AI ų���� ���� ������ �÷���
			if ( u32PhaseCheck >= 13 ) and ( u32PhaseCheck <= 14 ) and ( u32MasterTraningRobot == 2 ) then
				-- ������14��
				PhaseAdd();
			end

		end


		-- ��������2 ����
		
		if u32StageID == 2 then
		
			-- ���������� ����
			RandomItemSpawn( "TAEJO_CRAZY_FAN", 30, false, 3, 9, 0.05, 0.2, true );
			RandomItemSpawn( "TAEJO_HOT_FAN", 30, false, 3, 9, 0.05, 0.2, true );
			RandomItemSpawn( "TAEJO_CHIEFSHOOT_FAN", 200, false, 9, 9, 0.05, 0.2, true );
			RandomItemSpawn( "TAEJO_CHIEFSWORD_FAN", 200, false, 10, 10, 0.05, 0.2, true );
			RandomItemSpawn( "TAEJO_CHIEFMH_FAN", 200, false, 10, 10, 0.05, 0.2, true );
			RandomItemSpawn( "TAEJO_BEHIND_SWORD", 200, false, 9, 9, 0.05, 0.2, true );			
			--RandomItemSpawn( "TAEJO", 100, false, 8, 8, true );	

			-- ����
			MonsterRespawnCalcu = Arcade:CalcuAiMonsterRespawn( 12 );
			MonsterRespawnCalcu1 = Arcade:CalcuAiMonsterRespawn( 8 );

			Print( string.format( "��������1 4���� �߰��� %d ���� �� ",  MonsterRespawnCalcu ) );
			
			if ( u32PhaseCheck >= 3 ) and ( u32PhaseCheck <= 3 ) and ( myTeajoFanB > 0 ) and ( u32TeajoKwangFan <= 12 + MonsterRespawnCalcu ) then
			--if ( u32PhaseCheck = 2 ) and ( u32TeajoKwangFan <= 16 ) then
				for indx = 1, myTeajoFanB do
					LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_CRAZY_FAN", "TypeB", gSpawnNod_St01[math.random(14,20)] );
				end
				myTeajoFanB = 0; 
			end
			
			if ( u32PhaseCheck >= 3 ) and ( u32PhaseCheck <= 3 ) and ( myTeajoFanA > 0 ) and ( u32TeajoYeolsungFan <= 8 + MonsterRespawnCalcu1 ) then
				for indx = 1, myTeajoFanA do
					LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_HOT_FAN", "TypeA", gSpawnNod_St01[math.random(14,16)] );
				end
				myTeajoFanA = 0;
			end

			-- AI ų���� ���� ������ ����
			--if ( u32PhaseCheck == 2 ) then
			if ( u32PhaseCheck == 3 ) and  ( u32TeajoKwangFan == 16 + MonsterRespawnCalcu ) and  ( u32TeajoYeolsungFan == 10 + MonsterRespawnCalcu1 ) then
				-- ������3��
				PhaseAdd();
			end

			-- ����
			--[[
			if ( u32PhaseCheck >= 3 ) and ( u32PhaseCheck <= 6 ) and ( myTeajoFanA > 0 ) and ( u32TeajoYeolsungFan <= 14 ) then
				for indx = 1, myTeajoFanA do
					LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_HOT_FAN", "TypeA", gSpawnNod_St01[math.random(7,25)] );
				end
				myTeajoFanA = 0;
			end

			-- ����
			if ( u32PhaseCheck >= 5 ) and ( u32PhaseCheck <= 6 ) and ( myTeajoFanB > 0 ) and ( u32TeajoKwangFan <= 21 ) then
				for indx = 1, myTeajoFanB do
					LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_CRAZY_FAN", "TypeB", gSpawnNod_St01[math.random(7,25)] );
				end
				myTeajoFanB = 0;
			end
]]--
			-- AI ų���� ���� ������ ����
			if ( u32PhaseCheck == 8 ) and ( u32TeajoHongboFan + u32TeajoHeangsaFan + u32TeajoLeaderFan == 3 ) then			
				-- ������8��
				PhaseAdd();
			end

			-- ����
			if ( u32PhaseCheck >= 13 ) and ( u32PhaseCheck <= 13 ) and ( myTeajoFanA > 0 ) and ( u32TeajoYeolsungFan > 0 ) then
				for indx = 1, myTeajoFanA do
					LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_HOT_FAN", "TypeA", gSpawnNod_St01[math.random(7,25)] );
				end
				myTeajoFanA = 0;
			end
	
			-- AI ų���� ���� ������ ����
			if ( u32PhaseCheck == 13 ) and ( u32Teajo == 1 ) then				
				-- ������11��
				PhaseAdd();
			end

		end
		
		-- ��������3 ����
		if u32StageID == 3 then
			
			RandomItemSpawn( "INFECTED_TR_A01", 30, false, 3, 6, 0.05, 0.2, true );
			RandomItemSpawn( "INFECTED_TR_B01", 30, false, 8, 15, 0.05, 0.2, true );
			RandomItemSpawn( "VIRUS", 15, false, 11, 15, 0.05, 0.2, true );
			
			MonsterRespawnCalcu = Arcade:CalcuAiMonsterRespawn( 12 );
			
			-- ����
			if ( u32PhaseCheck >= 2 ) and ( u32PhaseCheck <= 4 ) and ( myVirusT02 > 0 ) and ( u32VirusT02 <= 12 + MonsterRespawnCalcu ) then
				for indx = 1, myVirusT02 do
					LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(1,4)] );
				end
				myVirusT02 = 0;				
			end
			
			-- AI ų���� ���� ������ ����
			if ( u32PhaseCheck == 2 ) and ( u32VirusT02 == 12 + MonsterRespawnCalcu ) then
				-- ������3��
				PhaseAdd();
			end
			
			if ( u32PhaseCheck == 4 ) and ( u32VirusT02 == 24 + MonsterRespawnCalcu ) then
				-- ������5��
				PhaseAdd();
			end
			--[[
			-- ����
			if ( u32PhaseCheck >= 3 ) and ( u32PhaseCheck <= 4 ) and ( myVirusT02 > 0 ) and ( u32VirusT02 <= 23 ) then
				for indx = 1, myVirusT02 do
					LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(1,7)] );
				end
				myVirusT02 = 0;				
			end

			-- AI ų���� ���� ������ ����
			if u32PhaseCheck == 4 and ( u32VirusT02 == 30 ) then
				-- ������5��
				PhaseAdd();
			end
			]]--
			-- ����
			MonsterRespawnCalcu = Arcade:CalcuAiMonsterRespawn( 8 );
			
			if ( u32PhaseCheck >= 7 ) and ( u32PhaseCheck <= 9 ) and ( myVirusT04 > 0 ) and ( u32VirusT04 <= 8 + MonsterRespawnCalcu ) then
				for indx = 1, myVirusT04 do
					LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", gSpawnNod_St03[math.random(1,4)] );
				end
				myVirusT04 = 0;				
			end

			-- AI ų���� ���� ������ ����
			if ( u32PhaseCheck == 7 ) and ( u32VirusT04 == 12 ) then
				-- ������6��
				PhaseAdd();
			end
			--[[
			if ( u32PhaseCheck == 9 ) and ( u32VirusT04 == 24 ) then
				-- ������6��
				PhaseAdd();
			end
			]]--
			--[[
			-- ����
			if ( u32PhaseCheck >= 8 ) and ( u32PhaseCheck <= 10 ) and ( myVirusT04 > 0 ) and ( u32VirusT04 <= 23 ) then
				for indx = 1, myVirusT04 do
					LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", gSpawnNod_St03[math.random(1,7)] );
				end
				myVirusT04 = 0;				
			end

			-- AI ų���� ���� ������ ����
			if u32PhaseCheck == 9 and ( u32VirusT04 == 30 ) then
				-- ������10��
				PhaseAdd();
			end		
			]]--
			-- ����
			MonsterRespawnCalcu = Arcade:CalcuAiMonsterRespawn( 12 );
			MonsterRespawnCalcu1 = Arcade:CalcuAiMonsterRespawn( 6 );
			
			if ( u32PhaseCheck >= 10 ) and ( u32PhaseCheck <= 10 ) and ( myVirusT02 > 0 ) and ( u32VirusT02 <= 12 + MonsterRespawnCalcu ) then
				for indx = 1, myVirusT02 do
					LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(1,6)] );
				end
				myVirusT02 = 0;				
			end

			-- ����
			if ( u32PhaseCheck >= 10 ) and ( u32PhaseCheck <= 10 ) and ( myVirusT04 > 0 ) and ( u32VirusT04 <= 6 + MonsterRespawnCalcu1 ) then
				for indx = 1, myVirusT04 do
					LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", gSpawnNod_St03[math.random(1,4)] );
				end
				myVirusT04 = 0;				
			end

			-- AI ų���� ���� ������ ����
			if ( u32PhaseCheck == 10 ) and ( u32VirusT02 + u32VirusT04 == 24 + MonsterRespawnCalcu + MonsterRespawnCalcu1 ) then
				-- ������9��
				PhaseAdd();
			end

			MonsterRespawnCalcu = Arcade:CalcuAiMonsterRespawn( 30 );
			
			-- ����
			if ( u32PhaseCheck >= 15 ) and ( u32PhaseCheck <= 21 ) and ( myVirus > 0 ) and ( u32Virus <= 30 + MonsterRespawnCalcu ) then
				--RandomItemSpawn( "VIRUS", 5, false, 7, 8, 0.5, 0.25, false );
				for indx = 1, myVirus do
					LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(1,7)] );
				end
				myVirus = 0;				
			end

			-- AI ų���� ���� ������ ����
			if ( u32PhaseCheck == 15 ) and ( u32Virus == 12 + MonsterRespawnCalcu ) then
				-- ������18��
				PhaseAdd();
			end

			-- AI ų���� ���� ������ ����
			if ( u32PhaseCheck == 17 ) and ( u32Virus == 23 + MonsterRespawnCalcu ) then
				-- ������20��
				PhaseAdd();
			end

			-- AI ų���� ���� ������ ����
			if ( u32PhaseCheck == 19 ) and ( u32Virus == 46 + MonsterRespawnCalcu ) then
				-- ������22��
				PhaseAdd();
			end

		end

		-- ��������4 ����
		if u32StageID == 4 then
		
			-- ���������� ����
			RandomItemSpawn( "INFECTED_ESPER_SS", 60, false, 8, 15, 0.05, 0.2, true );
			RandomItemSpawn( "INFECTED_ESPER_S", 30, false, 3, 9, 0.05, 0.2, true );			
			RandomItemSpawn( "INFECTED_ESPER_P", 30, false, 3, 9, 0.05, 0.2, true );
			RandomItemSpawn( "VIRUS", 15, false, 10, 15, 0.5, 0.25, true );

			if u32TeajoInjured == 1 then
				--Arg:PushLU32( "PHASE_ID", 0 );
				LuaRequestStageFailed( Arcade, Host );
			end
--179999
			-- VIRUS ������ AI ������ VIRUS ����
			if ( myVirusEsperP > 0 ) or ( myVirusEsperSS > 0 ) or ( myVirusEsperS > 0 ) then
				LuaSpawnAIActorByActorPos( Arcade, Host, "VIRUS", "TypeVirus", AIActor );
			end

			-- AI ų���� ���� ������ �÷���
			if ( u32PhaseCheck == 2 ) and ( u32VirusEsperP == 4 ) then
				-- �ʱ�ȭ
				myVirusEsperP = 0;	
				-- ������3��
				PhaseAdd();
			end

			-- AI ų���� ���� ������ �÷���
			if ( u32PhaseCheck == 4 ) and ( u32VirusEsperSS == 2 ) then
				-- ������ 5��
				PhaseAdd();
			end

			-- AI ų���� ���� ������ �÷���
			if ( u32PhaseCheck == 6 ) and ( u32VirusEsperS == 4 ) then
				-- ������7��
				PhaseAdd();
			end
			
			if ( u32PhaseCheck >= 8 ) and ( u32PhaseCheck <= 10  ) and ( myVirusEsperP > 0 ) and ( u32VirusEsperP > 0 ) then
				for indx =1, myVirusEsperP do 
					LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_P", "TypeVirusClose", gSpawnNod_St04[math.random(1,8)] );
					Arcade:Print( string.format( "����:�����ȿ�����P���´�") ); 
				end
				myVirusEsperP = 0;				
			end
			-- ����
			if ( u32PhaseCheck >= 8 ) and ( u32PhaseCheck <= 12 ) and ( myVirusEsperS > 0 ) and ( u32VirusEsperS > 0 ) then
				for indx =1, myVirusEsperS do
					LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_S", "TypeVirusEsperS", gSpawnNod_St04[math.random(1,8)] );
					Arcade:Print( string.format( "����:�����ȿ�����S���´�") ); 
				end
				myVirusEsperS = 0;				
			end
			if ( u32PhaseCheck >= 10 ) and ( u32PhaseCheck <= 12 ) and ( myVirusEsperSS > 0 ) and ( u32VirusEsperSS > 0 ) then
				for indx =1, myVirusEsperSS do
					LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SS", "TypeVirusEsperSS", gSpawnNod_St04[math.random(9,10)] );
					Arcade:Print( string.format( "����:�����ȿ�����SS���´�") ); 
				end
				myVirusEsperSS = 0;				
			end
			if ( u32PhaseCheck >= 12 ) and ( u32PhaseCheck <= 12 ) and ( myVirusEsperP > 0 ) and ( u32VirusEsperP > 0 ) then
				for indx =1, myVirusEsperP do 
					LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_P", "TypeVirusClose", gSpawnNod_St04[math.random(11,12)] );
					Arcade:Print( string.format( "����:�����ȿ�����P���´�") ); 
				end
				myVirusEsperP = 0;				
			end
			--[[
			-- AI ų���� ���� ������ �÷���
			if ( u32PhaseCheck == 15 ) and ( u32VirusEsperS == 24 ) and ( u32VirusEsperP == 6 ) then
				-- ������16��
				PhaseAdd();
			end
]]--
			-- CAPTAIN_GUARD �׾��� ��
			if ( u32PhaseCheck == 17 ) and ( u32CaptainGuard == 1 ) then
				-- ������21 ��
				PhaseAdd();
			end

		end

		-- ��������5 ����
		if u32StageID == 5 then
		
			-- ���������� ����
			RandomItemSpawn( "MOONGK_BEHIND_SHOOT", 200, false, 10, 17, 0.05, 0.2, true );
		
			if ( u32PhaseCheck >= 1 ) and ( u32PhaseCheck <= 1 ) and ( myNinjaSMG > 0 ) and ( u32NinjaSMG <= 999 ) then
				for indx =1, myNinjaSMG do
					LuaSpawnAIActorByNode( Arcade, Host, "MOONGK_BEHIND_SHOOT", "TypeD", gSpawnNod_St05[math.random(1,9)] );
					Arcade:Print( string.format( "����:��ũ�� ���ϴ��ڳ��´�") ); 
				end
				myNinjaSMG = 0;				
			end

			if ( u32PhaseCheck >= 1 ) and ( u32PhaseCheck <= 1 ) and ( u32MoongK == 1 ) then
				LuaRemoveAllAIActorByType( Arcade, Host, "MOONGK_BEHIND_SHOOT" );
				-- ������ �ʱ�ȭ
				HostArg:SetLU32( "MOONGK", 0 );
				u32MoongK = HostArg:GetLU32( "MOONGK" );
				HostArg:SetLU32( "MOONGK_BEHIND_SHOOT", 0 );
				u32NinjaSMG = HostArg:GetLU32( "MOONGK_BEHIND_SHOOT" );
				-- ������2 ��
				PhaseAdd();
			end
			
			if ( u32PhaseCheck >= 5 ) and ( u32PhaseCheck <= 5 ) and ( myNinjaSMG > 0 ) and ( u32NinjaSMG <= 999 ) then
				for indx =1, myNinjaSMG do
					LuaSpawnAIActorByNode( Arcade, Host, "MOONGK_BEHIND_SHOOT", "TypeD", gSpawnNod_St05[math.random(1,9)] );
					Arcade:Print( string.format( "����:��ũ�� ���ϴ��ڳ��´�") ); 
				end
				myNinjaSMG = 0;				
			end

			if ( u32PhaseCheck >= 5 ) and ( u32PhaseCheck <= 5 ) and ( u32MoongK == 1 ) then
				LuaRemoveAllAIActorByType( Arcade, Host, "MOONGK_BEHIND_SHOOT" );
				-- ������6 ��
				PhaseAdd();
			end
			
		end

		-- ��������6 ����
		if u32StageID == 6 then
		
			-- ���������� ����
			RandomItemSpawn( "INFECTED_ESPER_MS", 25, false, 9, 15, 0.05, 0.2, true );
			RandomItemSpawn( "VIRUS", 15, false, 9, 15, 0.05, 0.2, true );

			-- ���峭 ��107�� ������ �̼� ���� ������
			if ( u32BossShotaA == 1 ) and ( u32PhaseCheck <= 14 ) then
				--Arg:PushLU32( "PHASE_ID", 0 );
				LuaRequestStageFailed( Arcade, Host );
			end
			-- VIRUS ������ AI ������ VIRUS ����
			--if myVirusEsperMS > 0 then
			--	LuaSpawnAIActorByActorPos( Arcade, Host, "PARASITED_VIRUS", "TypeVirus", AIActor );
			--end

			MonsterRespawnCalcu = Arcade:CalcuAiMonsterRespawn( 6 );
			
			--����
			if ( u32PhaseCheck >= 2 ) and ( u32PhaseCheck <= 2 ) and ( myVirusEsperMS > 0 ) and ( u32VirusEsperMS <= 6 + MonsterRespawnCalcu ) then
				for indx = 1, myVirusEsperMS do
					LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_MS", "TypeMindShock", gSpawnNod_St06[math.random(4,11)] );
				end
				myVirusEsperMS = 0;
				Arcade:Print( string.format( "����:INFECTED_ESPER_MS ���´�") ); 
			end
--[[
			-- AI ų���� ���� ������ �÷���
			if ( u32PhaseCheck == 1 ) and ( u32VirusEsperMS == 6 ) then
				-- ���� ų�� �ʱ�ȭ
				HostArg:SetLU32( "INFECTED_ESPER_MS", 0 );
				-- ������2��
				PhaseAdd();
			end
]]--
			if ( u32PhaseCheck == 2 ) and ( u32VirusEsperMS == 10 + MonsterRespawnCalcu ) then
				-- ���� ų�� �ʱ�ȭ
				HostArg:SetLU32( "INFECTED_ESPER_MS", 0 );
				-- ������3��
				PhaseAdd();
			end
					
		--����
			
			MonsterRespawnCalcu = Arcade:CalcuAiMonsterRespawn( 10 );
		
			if ( u32PhaseCheck == 12 ) and ( myVirusEsperMS > 0 ) and ( u32VirusEsperMS <= 10 + MonsterRespawnCalcu ) then
				for indx = 1, myVirusEsperMS do
					LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_MS", "TypeMindShock", gSpawnNod_St06[math.random(4,11)] );
				end
				myVirusEsperMS = 0;
			end

			-- AI ų���� ���� ������ �÷���
			if ( u32PhaseCheck == 12 ) and ( u32VirusEsperMS == 14 + MonsterRespawnCalcu ) then
				-- ���� ų�� �ʱ�ȭ
				HostArg:SetLU32( "VIRUS", 0 );
				HostArg:SetLU32( "INFECTED_ESPER_MS", 0 );
				-- ������16��
				PhaseAdd();
				
			end
						
			-- VIRUS ����
			if ( u32PhaseCheck == 27 ) and ( myVirus > 0 ) and ( u32Virus <= 20 ) then
				for indx = 1, myVirus do
					LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St06[math.random(12,20)] );
				end
				myVirus = 0;
			end

			--�������̷���MS ����
			if ( u32PhaseCheck == 27 ) and ( myVirusEsperMS > 0 ) and ( u32VirusEsperMS <= 16 ) then
				for indx = 1, myVirusEsperMS do
					LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_MS", "TypeMindShock", gSpawnNod_St06[math.random(4,11)] );
				end
				myVirusEsperMS = 0;
				--Arcade:Print( string.format( "����:INFECTED_ESPER_MS ���´�") ); 
			end

			-- AI ų���� ���� ������ �÷���
			if ( u32PhaseCheck == 27 ) and ( u32Virus + u32VirusEsperMS >= 56 ) then
				-- ���� ų�� �ʱ�ȭ
				HostArg:SetLU32( "VIRUS", 0 );
				HostArg:SetLU32( "INFECTED_ESPER_MS", 0 );
				-- ������ 28��
				PhaseAdd();
			end
			
			MonsterRespawnCalcu = Arcade:CalcuAiMonsterRespawn( 24 );
			
			-- VIRUS ����
			if ( u32PhaseCheck == 36 ) and ( myVirus > 0 ) and ( u32Virus <= 24 + MonsterRespawnCalcu ) then
				RandomItemSpawn( "VIRUS", 20, false, 9, 15, 0.05, 0.2, true );
				Arcade:Print( string.format( "������?") ); 
				for indx = 1, myVirus do
					LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St06[math.random(22,27)] );
				end
				myVirus = 0;
			end
			
			if ( u32PhaseCheck == 36 ) and ( u32Virus == 24 + MonsterRespawnCalcu ) then
				-- ���� ų�� �ʱ�ȭ
				HostArg:SetLU32( "VIRUS", 0 );
				-- ������ 28��
				PhaseToGo(32);
			end
			
			-- ������ �� 107 �ı� ��
			if ( u32PhaseCheck >= 31 ) and ( u32PhaseCheck <= 36 ) and ( u32BossShota == 1 ) then
				--������ 37��
				--PhaseAdd();
				PhaseToGo(37);
			end
			
		end

		-- ��������7 ����
		if u32StageID == 7 then
		
			-- ���������� ����
			RandomItemSpawn( "INFECTED_ESPER_CC", 30, false, 9, 15, 0.05, 0.2, true );
			RandomItemSpawn( "INFECTED_ESPER_CU", 100, false, 9, 15, 0.05, 0.2, true ); 
			RandomItemSpawn( "SUICIDE_ROBOT", 30, false, 13, 15, 0.05, 0.2, true );
			RandomItemSpawn( "MASTERTR_A01", 200, false, 9, 9, 0.05, 0.2, true ); 
			RandomItemSpawn( "INFECTED_ESPER_B", 200, false, 9, 11, 0.05, 0.2, true ); 
		
			-- Űġ�� ������ �̼����� ������
			if u32Kichi == 1 then
				--Arg:PushLU32( "PHASE_ID", 0 );
				LuaRequestStageFailed( Arcade, Host );
			end
		
			MonsterRespawnCalcu = Arcade:CalcuAiMonsterRespawn( 3 );
			
			if ( u32PhaseCheck >= 5 ) and ( u32PhaseCheck <=5 ) and ( myVirusEsperCC > 0 ) and ( u32VirusEsperCC <= 3 + MonsterRespawnCalcu ) then
				for indx =1, myVirusEsperCC do
					LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_CC", "TypeCounterSwordCombo", gSpawnNod_St07[math.random(4,7)] );
				end
				myVirusEsperCC = 0;
				Arcade:Print( string.format( "����:�����ȿ�����CC���´�") ); 
			end
			
			if ( u32PhaseCheck == 5 ) and ( u32VirusEsperCC == 7 + MonsterRespawnCalcu ) then
				-- ų�� �ʱ�ȭ
				HostArg:SetLU32( "INFECTED_ESPER_CC", 0 );
				-- ������6
				PhaseAdd();
			end
				
			if ( u32PhaseCheck >= 7 ) and ( u32PhaseCheck <= 7 ) and ( u32VirusEsperCU == 2 ) then
				-- ų�� �ʱ�ȭ
				HostArg:SetLU32( "INFECTED_ESPER_CU", 0 );
				-- ������ 9��
				PhaseAdd();
			end
			--[[
			if ( u32PhaseCheck >= 9 ) and ( u32PhaseCheck <= 10 ) and ( myVirusEsperCC > 0 ) and ( u32VirusEsperCC <= 5 ) then
				for indx =1, myVirusEsperCC do
					LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_CC", "TypeCounterSwordCombo", gSpawnNod_St07[math.random(4,7)] );
				end
				myVirusEsperCC = 0;
				Arcade:Print( string.format( "����:�����ȿ�����CC���´�") ); 
			end
			
			if ( u32PhaseCheck == 10 ) and ( u32VirusEsperCC == 10 ) then
				-- ų�� �ʱ�ȭ
				HostArg:SetLU32( "INFECTED_ESPER_CC", 0 );
				-- ������11��
				PhaseAdd();
			end
			
			if ( u32PhaseCheck >= 12 ) and ( u32PhaseCheck <= 13 ) and ( u32VirusEsperCU == 3 ) then
				-- ų�� �ʱ�ȭ
				HostArg:SetLU32( "INFECTED_ESPER_CU", 0 );
				-- ������ 14��
				PhaseAdd();
			end
			]]--
			if ( u32PhaseCheck >= 12 ) and ( u32PhaseCheck <= 12 ) and ( u32VirusEsperSS_02 == 3 ) then
				-- ų�� �ʱ�ȭ
				HostArg:SetLU32( "INFECTED_ESPER_SS2", 0 );
				-- ������ 19��
				PhaseAdd();
			end
			
			MonsterRespawnCalcu = Arcade:CalcuAiMonsterRespawn( 3 );
			
			if ( u32PhaseCheck >= 14 ) and ( u32PhaseCheck <= 14 ) and ( mySelfBoomRobot > 0 ) and ( u32SelfBoomRobot <= 3 + MonsterRespawnCalcu ) then
				for indx =1, mySelfBoomRobot do
					LuaSpawnAIActorByNode( Arcade, Host, "SUICIDE_ROBOT", "TypeTRA_Big", gSpawnNod_St07[math.random(37,40)] );
				end
				mySelfBoomRobot = 0;
				Arcade:Print( string.format( "����:SUICIDE_ROBOT ���´�") ); 
			end

			if ( u32PhaseCheck >= 14 ) and ( u32PhaseCheck <= 14 ) and ( u32SelfBoomRobot == 6 + MonsterRespawnCalcu ) then
				-- ų�� �ʱ�ȭ
				HostArg:SetLU32( "SUICIDE_ROBOT", 0 );
				-- ������ 21��
				PhaseAdd();
			end
			--[[
			if ( u32PhaseCheck >= 22 ) and ( u32PhaseCheck <= 23 ) and ( u32VirusEsperSS_02 == 3 ) then
				-- ų�� �ʱ�ȭ
				HostArg:SetLU32( "INFECTED_ESPER_SS2", 0 );
				-- ������ 24��
				PhaseAdd();
			end
			]]--
			
			-- MonsterRespawnCalcu = Arcade:CalcuAiMonsterRespawn( 6 );
			
			if ( u32PhaseCheck >= 19 ) and ( u32PhaseCheck <= 22 ) and ( mySelfBoomRobot > 0 ) and ( u32SelfBoomRobot <= 6 ) then
				for indx =1, mySelfBoomRobot do
					LuaSpawnAIActorByNode( Arcade, Host, "SUICIDE_ROBOT", "TypeTRA_Big", gSpawnNod_St07[math.random(41,44)] );
				end
				mySelfBoomRobot = 0;
				Arcade:Print( string.format( "����:SUICIDE_ROBOT ���´�") ); 
			end
			
			if ( u32PhaseCheck >= 20 ) and ( u32PhaseCheck <= 20 ) and ( u32SelfBoomRobot == 3 ) then
				-- ������ 30��
				PhaseAdd();
			end
						
			if ( u32PhaseCheck >= 22 ) and ( u32PhaseCheck <= 22 ) and ( u32SelfBoomRobot == 9 ) and ( u32VirusEsperSS_02 + u32VirusEsperSnp == 4 ) then
			--if ( u32PhaseCheck >= 10 ) and ( u32PhaseCheck <= 10 ) and ( u32SelfBoomRobot == 12 ) and ( u32VirusEsperSS_02 + u32VirusEsperSnp == 4 ) then
				-- ų�� �ʱ�ȭ
				HostArg:SetLU32( "SUICIDE_ROBOT", 0 );
				HostArg:SetLU32( "INFECTED_ESPER_SS2", 0 );
				HostArg:SetLU32( "INFECTED_ESPER_SNP", 0 );
				-- ������ 32��
				PhaseAdd();
			end
			
			MonsterRespawnCalcu = Arcade:CalcuAiMonsterRespawn( 4 );
			
			if ( u32PhaseCheck >= 29 ) and ( u32PhaseCheck <= 29 ) and ( mySelfBoomRobot > 0 ) and ( u32SelfBoomRobot <= 4 + MonsterRespawnCalcu ) then
				
				local mySpawnPos = math.random( 1, 2 );
				local myRealSpawnPos
				
				if mySpawnPos == 1 then
					myRealSpawnPos = "arcade_spawn_m13"
				elseif mySpawnPos == 2 then
					myRealSpawnPos = "arcade_spawn_m09"
				end
				
				for indx =1, mySelfBoomRobot do
					LuaSpawnAIActorByNode( Arcade, Host, "SUICIDE_ROBOT", "TypeTRA_Big", myRealSpawnPos );
				end
				mySelfBoomRobot = 0;
				Arcade:Print( string.format( "����:SUICIDE_ROBOT ���´�") ); 
			end
			
			if ( u32PhaseCheck >= 29 ) and ( u32PhaseCheck <= 29 ) and ( u32SelfBoomRobot == 6 + MonsterRespawnCalcu ) and ( u32VirusEsperSnp == 4 ) then
				-- ų�� �ʱ�ȭ
				HostArg:SetLU32( "SUICIDE_ROBOT", 0 );
				HostArg:SetLU32( "INFECTED_ESPER_SNP", 0 );
				-- ������ 39��
				PhaseAdd();
			end
			
			if ( u32PhaseCheck >= 36 ) and ( u32PhaseCheck <= 36 ) and ( u32VirusEsperSS_02 == 3 ) and ( u32MasterTraningRobot == 2 ) then			
				-- ų�� �ʱ�ȭ
				HostArg:SetLU32( "INFECTED_ESPER_SS2", 0 );
				HostArg:SetLU32( "MASTERTR_A01", 0 );
				-- ������ 46��
				PhaseAdd();
			end
			
			if ( u32PhaseCheck >= 42 ) and ( u32PhaseCheck <= 43 ) and ( myVirusEsperB > 0 ) then	
				for indx =1, myVirusEsperB do
					LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_B", "TypeBind", "arcade_spawn_m11" );
				end
				myVirusEsperB = 0;
				Arcade:Print( string.format( "����:�����ȹ��δ� ���´�") ); 
			end
			
			if ( u32PhaseCheck >= 42 ) and (u32PhaseCheck <= 43 ) and ( u32VirusTeajo == 1 ) then
				-- �ʿ���� AI ����
				LuaRemoveAllAIActorByType( Arcade, Host, "INFECTED_ESPER_B" );
				LuaRemoveAllAIActorByType( Arcade, Host, "INFECTED_ESPER_SNP" );
				-- ������53��
				PhaseAdd();
			end		
		
		end
				
		-- ��������8 ����
		if u32StageID == 8 then
	
			-- ���������� ����
			RandomItemSpawn( "INFECTED_HEALER", 100, false, 10, 15, 0.05, 0.2, true );
			--RandomItemSpawn( "PARASITED_VIRUS", 20, false, 4, 7, 0.5, 0.25, false );
			RandomItemSpawn( "VIRUS", 75, false, 10, 15, 0.05, 0.2, true );
	
			-- VIRUS ������ AI ������ VIRUS ����
			if myVirusEsperH > 0 then
				LuaSpawnAIActorByActorPos( Arcade, Host, "VIRUS", "TypeVirus", AIActor );
				LuaSpawnAIActorByActorPos( Arcade, Host, "VIRUS", "TypeVirus", AIActor );
				LuaSpawnAIActorByActorPos( Arcade, Host, "VIRUS", "TypeVirus", AIActor );
			end

			if (u32PhaseCheck == 2 ) and ( u32MotherVirus == 1 ) then
				-- ������3��
				PhaseAdd();
			end

		end

	end    

end
-------------------------------------------------------------------------------------------------------------------
--�������� Ŭ���� ��� ����...!!
--�Էº��� : StageArg( "HOST_CONTROLLER" )
-------------------------------------------------------------------------------------------------------------------
function OnStageClear()
	Arcade:Print( string.format( "��-��������Ŭ���� ����" ) );
	
	Host = StageArg:GetHostController( "HOST_CONTROLLER" );
    
    HostArg = Host:GetArg();
    u32StageID = HostArg:GetLU32( "NOW_STAGE_ID" );
    
	-- �����ϴ� ��� AI�� �����Ѵ�.
	LuaRemoveAllAIActor( Arcade, Host );	
		
	--AI���α׷����� ���ش�.
	LuaKillProgressUnregAll( Arcade, Host );	

	--��� �����ͼ��� �ʱ�ȭ�Ѵ�.
	Init();															
	--�Խ�Ʈ�鿡�� �����ͼ��ʱ�ȭ ��û
	LuaInitHostArg( Arcade, Host );				
		
	-- ������ �˸� �޽����� ���� ����(�ʱ�ȭ)���� ��Ƽ���̵� ����
	Arcade:LuaTriggerNotify( NI_GUIDE_OFF );

	-- �׾����� �������� ���̵� �־���    
	HostArg:SetLU32( "NOW_STAGE_ID", u32StageID );


    --�Խ�Ʈ�鿡�� ���� ���������� �˷��ش�.
    LuaSyncHostData( Arcade, Host, "NOW_STAGE_ID" );
   	
   	-- ������ ���̵� �ʱ�ȭ
	HostArg:SetLU32( "PHASE_ID", 100 );
	LuaSyncHostData( Arcade, Host, "PHASE_ID" ); 
	
	-- �ʵ忡 �������� ��� ����
	LuaRemoveAllItem( Arcade, Host );
	
end
-------------------------------------------------------------------------------------------------------------------
--�������� ���� ��� ����...!!
--�Էº��� : StageArg( "HOST_CONTROLLER" )
-------------------------------------------------------------------------------------------------------------------
function OnStageFailed()
	Arcade:Print( string.format( "��-�����������ϵ� ����" ) );
	
	Host = StageArg:GetHostController( "HOST_CONTROLLER" );
    
    HostArg = Host:GetArg();
    u32StageID = HostArg:GetLU32( "NOW_STAGE_ID" );
    
	-- �����ϴ� ��� AI�� �����Ѵ�.
	LuaRemoveAllAIActor( Arcade, Host );	
	
	--AI���α׷����� ���ش�.
	LuaKillProgressUnregAll( Arcade, Host );	
		
	--��� �����ͼ��� �ʱ�ȭ�Ѵ�.
	Init();															
	--�Խ�Ʈ�鿡�� �����ͼ��ʱ�ȭ ��û
	LuaInitHostArg( Arcade, Host );				
		
	-- ������ �˸� �޽����� ���� ����(�ʱ�ȭ)���� ��Ƽ���̵� ����
	Arcade:LuaTriggerNotify( NI_GUIDE_OFF );

	-- �׾����� �������� ���̵� �־���    
	HostArg:SetLU32( "NOW_STAGE_ID", u32StageID );


    --�Խ�Ʈ�鿡�� ���� ���������� �˷��ش�.
    LuaSyncHostData( Arcade, Host, "NOW_STAGE_ID" );
   	
   	-- ������ ���̵� �ʱ�ȭ
	HostArg:SetLU32( "PHASE_ID", 100 );
	LuaSyncHostData( Arcade, Host, "PHASE_ID" ); 
	
	-- �ʵ忡 �������� ��� ����
	LuaRemoveAllItem( Arcade, Host );

end
-------------------------------------------------------------------------------------------------------------------
--�̼� �ؽ�Ʈ ��� ����
--�Էº��� : StageArg( "HOST_CONTROLLER" )
-------------------------------------------------------------------------------------------------------------------
function OnMissionInfoClose()
	--Arcade:Print( string.format( "�̼� �ؽ�Ʈ ��� ����" ) );
	
	Host = MissionInfoArg:GetHostController( "HOST_CONTROLLER" );
	HostArg = Host:GetArg();

	u32MissionID = MissionInfoArg:GetLU32( "MISSION_ID" );
	
	u32StageID = HostArg:GetLU32( "NOW_STAGE_ID" );

	--[[if u32StageID == 1 then
		
		if u32MissionID ==1 then
		-- ��������1 �÷��̾� ����
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_01" );
		end

	elseif u32StageID == 2 then
		
		if u32MissionID ==2 then
		-- ��������2 �÷��̾� ����
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_01" );

		elseif u32MissionID ==3 then
		-- ��������2 �÷��̾� ����
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_01" );

		elseif u32MissionID ==4 then
		-- ��������2 �÷��̾� ����
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_01" );

		end

	elseif u32StageID == 3 then

		if u32MissionID ==5 then
		-- ��������3 �÷��̾� ����
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_01" );

		elseif u32MissionID ==6 then
		-- ��������3 �÷��̾� ����
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_01" );

		end
		
	elseif u32StageID == 4 then

		if u32MissionID ==7 then
		-- ��������4 �÷��̾� ����
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_stage5" );

		elseif u32MissionID ==8 then
		-- ��������4 �÷��̾� ����
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_stage5" );

		end

	elseif u32StageID == 5 then

		if u32MissionID ==9 then
		-- ��������5 �÷��̾� ����
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_05_01" );

		end

	elseif u32StageID == 6 then

		if u32MissionID ==10 then
		-- ��������6 �÷��̾� ����
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_stage06" );

		elseif u32MissionID ==11 then
		-- ��������6 �÷��̾� ����
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_stage06_02" );

		end
	
	elseif u32StageID == 7 then

		if u32MissionID ==12 then
		-- ��������7 �÷��̾� ����
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_stage08" );

		elseif u32MissionID ==13 then
		-- ��������7 �÷��̾� ����
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_stage08" );

		end

	elseif u32StageID == 8 then

		if u32MissionID ==14 then
		-- ��������8 �÷��̾� ����
		LuaPlayerSpawnByNode( Arcade, Host, "arcade_spawn_pos_stage09" );

		end

	end--]]
	
end
-------------------------------------------------------------------------------------------------------------------
--��� �������� ���������� �����Ҷ� ȣ��
--�Էº��� : StageArg( "HOST_CONTROLLER" )
-------------------------------------------------------------------------------------------------------------------
function StartReservedStage()
	Arcade:Print( string.format( "����Ƚ�����������" ) );
    
    Host = StageArg:GetHostController( "HOST_CONTROLLER" );
    u32StageID = StageArg:GetLU32( "RESERVED_STAGE_ID" );
        
    HostArg = Host:GetArg(); 
    HostArg:SetLU32( "NOW_STAGE_ID", u32StageID );	--���� ���������� �ٽ� ����
    
    RestartCurrentStage();

end
-------------------------------------------------------------------------------------------------------------------
--ó�� ��������
--�Էº��� : StageArg( "HOST_CONTROLLER" )
-------------------------------------------------------------------------------------------------------------------
function StartBeginStage()
	Arcade:Print( string.format( "ó��������������" ) );

    Host = StageArg:GetHostController( "HOST_CONTROLLER" );
    u32StageID = StageArg:GetLU32( "BEGIN_STAGE_ID" );
        
    HostArg = Host:GetArg(); 
    HostArg:SetLU32( "NOW_STAGE_ID", u32StageID );	--���� ���������� �ٽ� ����
    
    StartCurrentStage();							--���� �������� �ٽ� ����!
end
-------------------------------------------------------------------------------------------------------------------
--���尡 ���۵ɶ��Ǵ� ������ ���������� (�ٽ�)�÷����� �� ȣ��
--�Էº��� : StageArg( "HOST_CONTROLLER" )
-------------------------------------------------------------------------------------------------------------------
function StartCurrentStage()
	Arcade:Print( string.format( "���۽������� ����" ) );

    Host = StageArg:GetHostController( "HOST_CONTROLLER" );
    
    HostArg = Host:GetArg();
    u32StageID = HostArg:GetLU32( "NOW_STAGE_ID" );
    
	-- �����ϴ� ��� AI�� �����Ѵ�.
	LuaRemoveAllAIActor( Arcade, Host );	
	--��� �����ͼ��� �ʱ�ȭ�Ѵ�.
	Init();															
	--�Խ�Ʈ�鿡�� �����ͼ��ʱ�ȭ ��û
	LuaInitHostArg( Arcade, Host );				
		
	-- ������ �˸� �޽����� ���� ����(�ʱ�ȭ)���� ��Ƽ���̵� ����
	Arcade:LuaTriggerNotify( NI_GUIDE_OFF );

	-- �׾����� �������� ���̵� �־���    
	HostArg:SetLU32( "NOW_STAGE_ID", u32StageID );
	AiRegister( u32StageID );


    --�Խ�Ʈ�鿡�� ���� ���������� �˷��ش�.
    LuaSyncHostData( Arcade, Host, "NOW_STAGE_ID" );
   	
   	-- ������ ���̵� �ʱ�ȭ
	HostArg:SetLU32( "PHASE_ID", 100 );
	LuaSyncHostData( Arcade, Host, "PHASE_ID" ); 
       
 	if u32StageID == 1 then
		
		-- ���ѽð� ����
		LuaSetStageInfo( Arcade, Host, 1, 10 );	
		
		-- �� �̼� �� �ؽ�Ʈ ����
		LuaChangeMissionID( Arcade, Host, 1)
		
		-- ��������1 ������ ���� �÷���
		LuaMoviePlay( Arcade, Host, 0 );
		
	end

	if u32StageID == 2 then
		
		-- ���ѽð� ����
		LuaSetStageInfo( Arcade, Host, 2, 10 );		
		
		-- �� �̼� �� �ؽ�Ʈ ����
		LuaChangeMissionID( Arcade, Host, 2)
		
		-- ��������2 ������ ���� �÷���
		LuaMoviePlay( Arcade, Host, 1 );

	end


	if u32StageID == 3 then

		-- ���ѽð� ����
		LuaSetStageInfo( Arcade, Host, 3, 10 );	
		
		-- �� �̼� �� ����
		LuaChangeMissionID( Arcade, Host, 5)
		
		-- ��������3 ������ ���� �÷���
		LuaMoviePlay( Arcade, Host, 5 );

	end

	if u32StageID == 4 then

		-- ���ѽð� ����
		LuaSetStageInfo( Arcade, Host, 4, 10 );	
		
		-- �� �̼� �� ����
		LuaChangeMissionID( Arcade, Host, 7 )
		
		-- ��������4 ���� �÷���
		LuaMoviePlay( Arcade, Host, 7 );

	end

	if u32StageID == 5 then

		-- ���ѽð� ����
		LuaSetStageInfo( Arcade, Host, 5, 15 );	
		
		-- �� �̼� �� ����
		LuaChangeMissionID( Arcade, Host, 9 )

		-- ��������5 ���� �÷���
		LuaMoviePlay( Arcade, Host, 10 );

	end

	if u32StageID == 6 then

		-- ���ѽð� ����
		LuaSetStageInfo( Arcade, Host, 6, 15 );	
		
		-- �� �̼� �� ����(stage6)
		LuaChangeMissionID( Arcade, Host, 11)

		-- ��������6 ���� �÷���
		LuaMoviePlay( Arcade, Host, 13 );

	end

	if u32StageID == 7 then

		-- ���ѽð� ����
		LuaSetStageInfo( Arcade, Host, 7, 20 );	
		
		-- �� �̼� �� ����
		LuaChangeMissionID( Arcade, Host, 13)
		
		-- ��������7 ������ ���� �÷���
		LuaMoviePlay( Arcade, Host, 16 );

	end

	if u32StageID == 8 then

		-- ���ѽð� ����
		LuaSetStageInfo( Arcade, Host, 8, 30 );	
		
		-- �� �̼� �� ����
		LuaChangeMissionID( Arcade, Host, 15 )
		
		-- ��������8 ������ ���� �÷���
		LuaMoviePlay( Arcade, Host, 18 );

	end
end
-------------------------------------------------------------------------------------------------------------------
--�������� Ŭ�����ϰ� ���� ���������� �÷����Ҷ� ȣ��
--�Էº��� : StageArg( "HOST_CONTROLLER" )
-------------------------------------------------------------------------------------------------------------------
function StartNextStage()
	Arcade:Print( string.format( "�������������� ����" ) );

    Host = StageArg:GetHostController( "HOST_CONTROLLER" );
    
    HostArg = Host:GetArg();
    u32StageID = HostArg:GetLU32( "NOW_STAGE_ID" );
    
   -- �����ϴ� ��� AI�� �����Ѵ�.
	LuaRemoveAllAIActor( Arcade, Host );	
	--��� �����ͼ��� �ʱ�ȭ�Ѵ�.
	Init();															
	--�Խ�Ʈ�鿡�� �����ͼ��ʱ�ȭ ��û
	LuaInitHostArg( Arcade, Host );	

	if u32StageID == 1 then
		-- ������ �˸� �޽����� ���� ����(�ʱ�ȭ)���� ��Ƽ���̵� ����
		Arcade:LuaTriggerNotify( NI_GUIDE_OFF );		

		-- ���ѽð� ����
		LuaSetStageInfo( Arcade, Host, 2, 10 );	
		
		-- �� �̼� �� �ؽ�Ʈ ����(stage 2)
		LuaChangeMissionID( Arcade, Host, 2)
		
		-- ��������2 ���� �÷���
		LuaMoviePlay( Arcade, Host, 1 );
		
		-- ������ ���̵� �ʱ�ȭ
		HostArg:SetLU32( "PHASE_ID", 100 );
		LuaSyncHostData( Arcade, Host, "PHASE_ID" );

		-- ��������2���� �����ϱ� ���� �� ���̵� ����
		HostArg:SetLU32( "NOW_STAGE_ID", 2 );
		LuaSyncHostData( Arcade, Host, "NOW_STAGE_ID" );
		
	end


	if u32StageID == 2 then
		-- ������ �˸� �޽����� ���� ����(�ʱ�ȭ)���� ��Ƽ���̵� ����
		Arcade:LuaTriggerNotify( NI_GUIDE_OFF );

		-- ���ѽð� ����
		LuaSetStageInfo( Arcade, Host, 3, 10 );	
		
		-- �� �̼� �� ����(stage 3)
		LuaChangeMissionID( Arcade, Host, 5)
		
		-- ��������3 ���� �÷���
		LuaMoviePlay( Arcade, Host, 4 );

		HostArg:SetLU32( "PHASE_ID", 100 );
		LuaSyncHostData( Arcade, Host, "PHASE_ID" );

		-- ��������3���� �����ϱ� ���� �� ���̵� ����
		HostArg:SetLU32( "NOW_STAGE_ID", 3 );
		LuaSyncHostData( Arcade, Host, "NOW_STAGE_ID" );

	end

	if u32StageID == 3 then
		-- ������ �˸� �޽����� ���� ����(�ʱ�ȭ)���� ��Ƽ���̵� ����
		Arcade:LuaTriggerNotify( NI_GUIDE_OFF );

		-- ���ѽð� ����
		LuaSetStageInfo( Arcade, Host, 4, 10 );	
		
		-- �� �̼� �� ����(stage 4)
		LuaChangeMissionID( Arcade, Host, 7 )
		
		-- ��������4 ���� �÷���
		LuaMoviePlay( Arcade, Host, 6 );

		-- ��������̵� �ӽ÷� ����
		HostArg:SetLU32( "PHASE_ID", 100 );
		LuaSyncHostData( Arcade, Host, "PHASE_ID" );

		-- ��������4���� �����ϱ� ���� �� ���̵� ����
		HostArg:SetLU32( "NOW_STAGE_ID", 4 );
		LuaSyncHostData( Arcade, Host, "NOW_STAGE_ID" );

	end

	if u32StageID == 4 then
		-- ������ �˸� �޽����� ���� ����(�ʱ�ȭ)���� ��Ƽ���̵� ����
		Arcade:LuaTriggerNotify( NI_GUIDE_OFF );
		
		-- ���ѽð� ����
		LuaSetStageInfo( Arcade, Host, 5, 15 );	
		
		-- �� �̼� �� ����(stage5)
		LuaChangeMissionID( Arcade, Host, 9 )
		
		-- ��������5 ���� �÷���
		LuaMoviePlay( Arcade, Host, 9 );

		HostArg:SetLU32( "PHASE_ID", 100 );
		LuaSyncHostData( Arcade, Host, "PHASE_ID" );
		
		-- ��������5�� �����ϱ� ���� �� ���̵� ����
		HostArg:SetLU32( "NOW_STAGE_ID", 5 );
		LuaSyncHostData( Arcade, Host, "NOW_STAGE_ID" );

	end

	if u32StageID == 5 then
		-- ������ �˸� �޽����� ���� ����(�ʱ�ȭ)���� ��Ƽ���̵� ����
		Arcade:LuaTriggerNotify( NI_GUIDE_OFF );

		-- ���ѽð� ����
		LuaSetStageInfo( Arcade, Host, 6, 15 );	
		
		-- �� �̼� �� ����(stage6)
		LuaChangeMissionID( Arcade, Host, 11)
		
		-- ��������6 ���� �÷���
		LuaMoviePlay( Arcade, Host, 12 );

		HostArg:SetLU32( "PHASE_ID", 100 );
		LuaSyncHostData( Arcade, Host, "PHASE_ID" );
		
		-- ��������7�� �����ϱ� ���� �� ���̵� ����
		HostArg:SetLU32( "NOW_STAGE_ID", 6 );
		LuaSyncHostData( Arcade, Host, "NOW_STAGE_ID" );

	end

	if u32StageID == 6 then
		-- ������ �˸� �޽����� ���� ����(�ʱ�ȭ)���� ��Ƽ���̵� ����
		Arcade:LuaTriggerNotify( NI_GUIDE_OFF );

		-- ���ѽð� ����
		LuaSetStageInfo( Arcade, Host, 7, 20 );	
		
		-- �� �̼� �� ����(stage6)
		LuaChangeMissionID( Arcade, Host, 13)

		-- ��������7 ���� �÷���
		LuaMoviePlay( Arcade, Host, 15 );

		HostArg:SetLU32( "PHASE_ID", 100 );
		LuaSyncHostData( Arcade, Host, "PHASE_ID" );
		
		-- ��������7�� �����ϱ� ���� �� ���̵� ����
		HostArg:SetLU32( "NOW_STAGE_ID", 7 );
		LuaSyncHostData( Arcade, Host, "NOW_STAGE_ID" );

	end

	if u32StageID == 7 then
		-- ������ �˸� �޽����� ���� ����(�ʱ�ȭ)���� ��Ƽ���̵� ����
		Arcade:LuaTriggerNotify( NI_GUIDE_OFF );

		-- ���ѽð� ����
		LuaSetStageInfo( Arcade, Host, 8, 30 );	
		
		-- �� �̼� �� ����(stage8)
		LuaChangeMissionID( Arcade, Host, 15 )
		
		-- ��������8 ���� �÷���
		LuaMoviePlay( Arcade, Host, 17 );

		HostArg:SetLU32( "PHASE_ID", 100 );
		LuaSyncHostData( Arcade, Host, "PHASE_ID" );
		
		-- ��������8�� �����ϱ� ���� �� ���̵� ����
		HostArg:SetLU32( "NOW_STAGE_ID", 8 );
		LuaSyncHostData( Arcade, Host, "NOW_STAGE_ID" );

	end

end

-------------------------------------------------------------------------------------------------------------------
--�������� �����ϰ� �ٽ� �ش罺������ ������Ҷ� ȣ��
--�Էº��� : StageArg( "HOST_CONTROLLER" )
-------------------------------------------------------------------------------------------------------------------
function RestartCurrentStage()
	Arcade:Print( string.format( "���罺������ �����" ) );

    Host = StageArg:GetHostController( "HOST_CONTROLLER" );
    
    HostArg = Host:GetArg();
    u32StageID = HostArg:GetLU32( "NOW_STAGE_ID" );
   
    HostArg:SetLU32( "NOW_STAGE_ID", u32StageID );	--���� ���������� �ٽ� ����
    
    StartCurrentStage();							--���� �������� �ٽ� ����!
end

-------------------------------------------------------------------------------------------------------------------
-- TriggerSystem���� �߻��� NotifyID�� ���´�.
-- �Էº��� : TriggerArg( "NOTIFY_ID" )
-------------------------------------------------------------------------------------------------------------------
function TriggerNotifyID()
	
	--Arcade:Print( string.format( "Ʈ���ų�Ƽ����ȴ�." ) );

	u32NotifyID = TriggerArg:GetLU32( "NOTIFY_ID" );
	Host = TriggerArg:GetHostController( "HOST_CONTROLLER" );
	HostArg = Host:GetArg();
    
end

-------------------------------------------------------------------------------------------------------------------
-- ����� ���������� �� ȣ���Ͽ� ���
-- �Էº��� : ����
-------------------------------------------------------------------------------------------------------------------
function PhaseAdd()
			 
	HostArg:SetLU32( "PHASE_ID", u32PhaseCheck + 1 );
	LuaSyncHostData( Arcade, Host, "PHASE_ID" );
	u32PhaseCheck = HostArg:GetLU32( "PHASE_ID" );

	u32StageID = HostArg:GetLU32( "NOW_STAGE_ID" );

	--Arcade:Print( string.format( "\n������������\n��CS=%d ������ %d -> %d �� ����������\n", u32StageID, u32PhaseCheck -1, u32PhaseCheck ) );
end

-------------------------------------------------------------------------------------------------------------------
-- ����� �ش��ϴ� ������� ���� �̵��� �� ��� ���
-- �Էº��� : ����
-------------------------------------------------------------------------------------------------------------------
function PhaseToGo( u32Phasetogo )
			 
	HostArg:SetLU32( "PHASE_ID", u32Phasetogo );
	LuaSyncHostData( Arcade, Host, "PHASE_ID" );
	u32PhaseCheck = HostArg:GetLU32( "PHASE_ID" );

	u32StageID = HostArg:GetLU32( "NOW_STAGE_ID" ); -- u32StageID�� 

	Arcade:Print( string.format( "\n������������\n��CS=%d ������ %d -> %d �� ����������\n", u32StageID, u32PhaseCheck -1, u32PhaseCheck ) );
end

-------------------------------------------------------------------------------------------------------------------
-- ���� �ð��� ����� �� �� �Ǵ� ������ �Ǵ� �ð��� ����� �ٶ� �� ���� �ð��� �ΰ� ����� ������ų �� ���
-- �Էº��� PhaseTimer (�и������� ������ �Է�)
-------------------------------------------------------------------------------------------------------------------
function PhaseTimer( PhaseTimer )
	
	--Arcade:Print( string.format( "������Ÿ�̸ӽ���" ) );
	
	local myCurrentTime

	u32PastTime = HostArg:GetLU32( "PAST_TIME" );
	myCurrentTime = u32AccumulateTime;

	if u32PastTime == 0 then
		HostArg:SetLU32( "PAST_TIME", myCurrentTime );

	elseif u32PastTime ~= 0 then

		if myCurrentTime > u32PastTime + PhaseTimer then
			--Arcade:Print( string.format( "\n�͢�������Ÿ�̸� ����ð� ���͢�" ) );
			HostArg:SetLU32( "PAST_TIME", 0 );

			-- ���� �ð��� ����Ǹ� ������ ���������ش�
			PhaseAdd();
		end

	end

end

function MonsterSpawnDelay( u32MonsterSpawnDelay )
	
	u32MonsterSpawnDelay = u32AccumulateTime;
	
	
	

end

-------------------------------------------------------------------------------------------------------------------
-- �ʵ忡 ������ �ѷ��ִ� �Լ�
-- �Էº��� AIActorName(���� AI ���� �̸�), SpawnRate(�������� ������ Ȯ��), bRandom(�������� ������ũ�� �������� ����), minRandomList(���� �ٸ����̼��� �ּҰ�), maxRandomList(���� �ٸ����̼��� �ִ밪), bMustGive(������ ���� ��� ������� �ִ� ���������� ����)
-- szAiType �� �޾ƿ��� ��쿡�� ���
-------------------------------------------------------------------------------------------------------------------

function RandomItemSpawn( AIActorName, SpawnRate, bRandom, minRandomList, maxRandomList, PlayerMultiRate, DifficultMultiRate, bMustGive )

	Arcade:Print( string.format( "���� �����۽��� ����" ) );

	g_ExtraItemSpawnCount = HostArg:GetLU32( "ITEMSPAWNCOUNT" );
	
	local mySpawnRate = math.random( 1, 100 );
	
	local PlayerCount = Arcade:GetPlayerCount();
	local Difficult = Arcade:GetDifficult();

	local ItemDropRate = SpawnRate * ( 1 - ( ( PlayerCount - 1 ) * PlayerMultiRate )  +  ( ( Difficult - 1 ) * DifficultMultiRate ) );

	Print( string.format( "���� ������ ����Ȯ�� %d ����� ���� Ȯ�� %d",  SpawnRate, ItemDropRate ) );

	if bMustGive == false then
	
		-- ������ ������ ���� ī��Ʈ�� ���� ��
		if ( g_ExtraItemSpawnCount > 0 ) and ( mySpawnRate <=  ItemDropRate ) and ( szAiType == AIActorName ) then
		
			-- �ݵ�� ����ϴ� �������� �ƴѰ�� �ִ� ���� ������ ī��Ʈ�� �ٿ��ش�.			
			-- ������ ī��Ʈ�� 1ȸ ���δ�.
			HostArg:SetLU32( "ITEMSPAWNCOUNT", g_ExtraItemSpawnCount -1 );
			LuaSyncHostData( Arcade, Host, "ITEMSPAWNCOUNT" );
					
			-- ������ ����
			local myRandomItem = math.random( minRandomList, maxRandomList );
			
			if szAiType == AIActorName then
				LuaItemSpawnByAIActor( Arcade, Host, myRandomItem,  bRandom, AIActor  );
			end
			
		end
	
	elseif bMustGive == true then
		
		-- ������ ����ī��Ʈ�� ������� ������ ����
		if ( mySpawnRate <=  ItemDropRate ) and ( szAiType == AIActorName ) then
	
			-- ������ ����
			local myRandomItem = math.random( minRandomList, maxRandomList );
			
			if szAiType == AIActorName then
				LuaItemSpawnByAIActor( Arcade, Host, myRandomItem,  bRandom, AIActor  );
			end
			
		end
	
	end

end

-------------------------------------------------------------------------------------------------------------------
-- ��������1�� ����� ���õ� ������ ����ִ� �Լ�
-------------------------------------------------------------------------------------------------------------------
function Stage01()

	--Arcade:Print( string.format( "��������1 ����" ) );
	
	local Difficult = Arcade:GetDifficult();
	
	-- �׽�Ʈ�ڵ�
	u32TRobotA = HostArg:GetLU32( "TR_A01" );
	Arcade:Print( string.format( "�κ�A=%d", u32TRobotA ) );


	if u32PhaseCheck == 0  then
		-- ������� ����
		LuaPlayBGM( Arcade, Host, "Resources/Bgm/battle1.ogg" );
		
		-- ������ ����Ƚ�� �ʱ�ȭ
		HostArg:SetLU32( "ITEMSPAWNCOUNT", 20 );
		
		-- ������1��
		PhaseAdd();
	elseif u32PhaseCheck == 1 then
		-- ������2��
		PhaseAdd();
	elseif u32PhaseCheck == 2 then
		-- �׽�Ʈ�ڵ�
		--[[
		if 1 == Difficult then
		
			Print( string.format( "��������1 ���� TypeTRA 1���� �� ",  SpawnRate, ItemDropRate ) );

			LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(14,14)] );
			LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(15,15)] );
			LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(16,16)] );
		
		elseif 2 == Difficult then

			Print( string.format( "��������1 ���� TypeTRA 2���� �� ",  SpawnRate, ItemDropRate ) );

			LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(14,14)] );
			LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(15,15)] );
			LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(16,16)] );
			LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(17,17)] );
			
		elseif 3 == Difficult then

			Print( string.format( "��������1 ���� TypeTRA 3���� �� ",  SpawnRate, ItemDropRate ) );
			
			LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(14,14)] );
			LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(15,15)] );
			LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(16,16)] );
			LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(17,17)] );
			LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(18,18)] );
		
		
		end
			]]--
		--LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TEAJO", "TypeVirusTeajo", gSpawnNod_St01[math.random(15,15)] );		
		--LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_BEHIND_SWORD", "TypeTeajoSword", gSpawnNod_St01[math.random(14,14)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_BEHIND_SWORD", "TypeTeajoSword", gSpawnNod_St01[math.random(17,17)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "TAEJO", "TypeTeajo", gSpawnNod_St01[math.random(15,15)] );		
		--LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_CHIEFMH_FAN", "TypeChiefSMH", gSpawnNod_St01[math.random(15,15)] );		
		--LuaSpawnAIActorByNode( Arcade, Host, "CAPTAIN_GUARD", "TypeHMG_Captain", gSpawnNod_St01[math.random(15,15)] ); 		
		--LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(1,1)] );				
		--LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB_Big", gSpawnNod_St01[math.random(15,15)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA_Big", gSpawnNod_St01[math.random(15,15)] );		
		--LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_FAM107", "TypeBossShota", gSpawnNod_St01[math.random(15,15)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_HOT_FAN", "TypeA", gSpawnNod_St01[math.random(15,15)] );	
		--LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_CRAZY_FAN", "TypeB", gSpawnNod_St01[math.random(15,15)] );		
		--LuaSpawnAIActorByNode( Arcade, Host, "MASTERTR_A01", "TypeTRB_Big", gSpawnNod_St01[math.random(15,15)] );		
		--LuaSpawnAIActorByNode( Arcade, Host, "SUICIDE_ROBOT", "TypeTRA_Big", gSpawnNod_St01[math.random(15,15)] );		
		--LuaSpawnAIActorByNode( Arcade, Host, "MASTERTR_A01", "TypeTRB_Big", gSpawnNod_St01[math.random(15,15)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "MASTERTR_A01", "TypeTRB_Big", gSpawnNod_St01[math.random(14,14)] );
		
		--[[ ���� ����(��ȣ)
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(15,15)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(14,14)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(16,16)] );
		]]--
		LuaViewMissionInfo( Arcade, Host, 1, 0, 0, 0, 0.5, 3500 );

		
		-- ������3��
		PhaseAdd();
		
	elseif u32PhaseCheck == 3 then
		PhaseAdd();
		
	elseif u32PhaseCheck == 4 then
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(15,15)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(14,14)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(16,16)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(8,8)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(9,9)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(15,15)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(14,14)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(16,16)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(8,8)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(9,9)] );
		-- ������5��
		PhaseAdd();
	elseif u32PhaseCheck == 6 then
		-- ������7��
		PhaseTimer( 1000 );
	elseif u32PhaseCheck == 7 then
		LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(15,15)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(14,14)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(16,16)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(8,8)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(15,15)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(14,14)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(16,16)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(8,8)] );

		-- ������8��
		PhaseAdd();
	elseif u32PhaseCheck == 9 then
		-- ������10��
		PhaseTimer( 1000 );
	elseif u32PhaseCheck == 10 then
		LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(15,15)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(14,14)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(23,23)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(6,6)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(9,9)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(21,21)] );
        LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(20,20)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(19,19)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(16,16)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(8,8)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(4,4)] );
		-- ������11��
		PhaseAdd();
	elseif u32PhaseCheck == 12 then
		-- ������13��
		--PhaseAdd();
		PhaseTimer( 1000 );			
	elseif u32PhaseCheck == 13 then
		LuaSpawnAIActorByNode( Arcade, Host, "MASTERTR_A01", "TypeTRB_Big", gSpawnNod_St01[math.random(15,15)] );
		LuaSpawnAIActorByNode( Arcade, Host, "MASTERTR_A01", "TypeTRB_Big", gSpawnNod_St01[math.random(14,14)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(15,15)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(14,14)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(16,16)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(23,23)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(6,6)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(9,9)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "TR_B01", "TypeTRB", gSpawnNod_St01[math.random(21,21)] );
        LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(20,20)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(19,19)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TR_A01", "TypeTRA", gSpawnNod_St01[math.random(16,16)] )
		-- ������14��
		PhaseAdd();
	
	elseif u32PhaseCheck == 15 then
	
		-- �߰���� ��û
		LuaRemoveAllAIActorByType( Arcade, Host, "TypeTRA" );
		LuaRemoveAllAIActorByType( Arcade, Host, "TypeTRB" );
		LuaRequestStageClear( Arcade, Host );
		-- ������15��
		PhaseAdd();
	end	

end

-------------------------------------------------------------------------------------------------------------------
-- ��������2�� ����� ���õ� ������ ����ִ� �Լ�
-------------------------------------------------------------------------------------------------------------------
function Stage02()

	Arcade:Print( string.format( "��������2 ����" ) );
	
	u32TeajoKwangFan = HostArg:GetLU32( "TAEJO_CRAZY_FAN" );
	u32TeajoYeolsungFan = HostArg:GetLU32( "TAEJO_HOT_FAN" );
	
	g_ExtraItemSpawnCount = HostArg:GetLU32( "ITEMSPAWNCOUNT" );

	Arcade:Print( string.format( "����=%d ������=%d ������ī��Ʈ=%d",u32TeajoKwangFan,u32TeajoYeolsungFan, g_ExtraItemSpawnCount ) );

	if u32PhaseCheck == 0  then
		
		-- ������ ����Ƚ�� �ʱ�ȭ
		HostArg:SetLU32( "ITEMSPAWNCOUNT", 20 );
		
		-- ������� ����
		LuaPlayBGM( Arcade, Host, "Resources/Bgm/ComeOn_S4.ogg" );
		LuaViewMissionInfo( Arcade, Host, 2, 0, 0, 0, 0.5, 4000 );

		-- ������1��
		PhaseAdd();		
	elseif u32PhaseCheck == 1 then
	
		LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_CRAZY_FAN", "TypeB", gSpawnNod_St01[math.random(1,2)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_CRAZY_FAN", "TypeB", gSpawnNod_St01[math.random(21,23)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_CRAZY_FAN", "TypeB", gSpawnNod_St01[math.random(18,19)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_CRAZY_FAN", "TypeB", gSpawnNod_St01[math.random(24,25)] );

		--������ 2 ��
		--PhaseTimer( 50000 );
		PhaseAdd()
		
	elseif u32PhaseCheck == 2 then	
	
		LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_HOT_FAN", "TypeA", gSpawnNod_St01[math.random(14,14)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_HOT_FAN", "TypeA", gSpawnNod_St01[math.random(15,15)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_HOT_FAN", "TypeA", gSpawnNod_St01[math.random(13,13)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_HOT_FAN", "TypeA", gSpawnNod_St01[math.random(16,16)] );
		--������ 3 ��
		PhaseAdd()
		
	elseif u32PhaseCheck == 4 then
		-- ī��Ʈ�ʱ�ȭ
		HostArg:SetLU32( "TAEJO_CRAZY_FAN", 0 );
		LuaSyncHostData( Arcade, Host, "TAEJO_CRAZY_FAN" );
		HostArg:SetLU32( "TAEJO_HOT_FAN", 0 );
		LuaSyncHostData( Arcade, Host, "TAEJO_HOT_FAN" );
		-- ������5��
		PhaseAdd()
		--PhaseTimer( 1000 );
	elseif u32PhaseCheck == 5 then
		LuaChangeMissionID( Arcade, Host, 3)
		LuaMoviePlay( Arcade, Host, 2 );
		
		-- �� �̼� �� �ؽ�Ʈ ����
		
	
		--������6��
		PhaseAdd();
	elseif u32PhaseCheck == 7 then
		LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_CHIEFSHOOT_FAN", "TypeChiefFan", gSpawnNod_St01[math.random(14,14)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_CHIEFMH_FAN", "TypeChiefSMH", gSpawnNod_St01[math.random(15,15)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_CHIEFSWORD_FAN", "TypeChiefSword", gSpawnNod_St01[math.random(17,17)] );
		-- ������7��
		PhaseAdd();
	elseif u32PhaseCheck == 9 then
		-- ������9��
		PhaseTimer( 1000 );
	elseif u32PhaseCheck == 10 then
		LuaChangeMissionID( Arcade, Host, 4)
		LuaMoviePlay( Arcade, Host, 3 );
		
		-- �� �̼� �� �ؽ�Ʈ ����
		--������10��
		PhaseAdd();
	elseif u32PhaseCheck == 12 then
		LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_HOT_FAN", "TypeA", gSpawnNod_St01[math.random(7,25)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_HOT_FAN", "TypeA", gSpawnNod_St01[math.random(7,25)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_BEHIND_SWORD", "TypeTeajoSword", gSpawnNod_St01[math.random(14,14)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TAEJO_BEHIND_SWORD", "TypeTeajoSword", gSpawnNod_St01[math.random(17,17)] );
		LuaSpawnAIActorByNode( Arcade, Host, "TAEJO", "TypeTeajo", gSpawnNod_St01[math.random(15,15)] );
		-- ������16��
		PhaseAdd();
	elseif u32PhaseCheck == 14 then
		-- TAEJO_HOT_FAN ������
		--LuaRemoveAllAIActorByType( Arcade, Host, "TAEJO_HOT_FAN" );
		LuaRemoveAllAIActor( Arcade, Host );
		-- ��������2 ��� ��û
		LuaRequestStageClear( Arcade, Host );
		-- ������18��
		PhaseAdd();
	end

end

-------------------------------------------------------------------------------------------------------------------
-- ��������3�� ����� ���õ� ������ ����ִ� �Լ�
-------------------------------------------------------------------------------------------------------------------
function Stage03()
		
	if u32PhaseCheck == 0 then
	
		-- ������ ����Ƚ�� �ʱ�ȭ
		HostArg:SetLU32( "ITEMSPAWNCOUNT", 25 );
		-- ������� ����
		LuaPlayBGM( Arcade, Host, "Resources/Bgm/ComeOn_S4.ogg" );

		-- ������1��
		PhaseAdd();
	elseif u32PhaseCheck == 1 then
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(1,1)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(2,2)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(3,3)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(4,4)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(5,5)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(6,6)] );
		LuaViewMissionInfo( Arcade, Host, 5, 0, 0, 0, 0.5, 4000 );
		-- ������2��
		PhaseAdd();
		
	elseif u32PhaseCheck == 3 then
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(1,1)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(2,2)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(3,3)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(4,4)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(5,5)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(6,6)] );
		
		PhaseAdd();
		
	elseif u32PhaseCheck == 5 then	
		HostArg:SetLU32("INFECTED_TR_A01", 0 );
		LuaSyncHostData( Arcade, Host, "INFECTED_TR_A01" );
		-- ������6��
		PhaseTimer( 2000 );
		
	elseif u32PhaseCheck == 6 then
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", gSpawnNod_St03[math.random(1,1)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", gSpawnNod_St03[math.random(2,2)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", gSpawnNod_St03[math.random(3,3)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", gSpawnNod_St03[math.random(4,4)] );
		-- ������7��
		PhaseAdd();
	elseif u32PhaseCheck == 8 then
		-- ų�� �ʱ�ȭ
		HostArg:SetLU32("INFECTED_TR_B01", 0 );
		LuaSyncHostData( Arcade, Host, "INFECTED_TR_B01" );
		-- ������11��
		PhaseTimer( 2000 );
	elseif u32PhaseCheck == 9 then
	--[[
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(1,1)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", gSpawnNod_St03[math.random(2,2)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", gSpawnNod_St03[math.random(3,3)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(5,5)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(6,6)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", gSpawnNod_St03[math.random(7,7)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(4,4)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", gSpawnNod_St03[math.random(8,8)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", gSpawnNod_St03[math.random(9,9)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(10,10)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(11,11)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", gSpawnNod_St03[math.random(12,12)] );
		--������8��
		]]--
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(1,1)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", gSpawnNod_St03[math.random(2,2)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", gSpawnNod_St03[math.random(3,3)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(5,5)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_A01", "TypeTRD", gSpawnNod_St03[math.random(6,6)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TR_B01", "TypeTRC", gSpawnNod_St03[math.random(7,7)] );
		PhaseAdd();
		
	elseif u32PhaseCheck == 11 then
		-- ų�� �ʱ�ȭ
		HostArg:SetLU32("INFECTED_TR_A01", 0 );
		LuaSyncHostData( Arcade, Host, "INFECTED_TR_A01" );
		HostArg:SetLU32("INFECTED_TR_B01", 0 );
		LuaSyncHostData( Arcade, Host, "INFECTED_TR_B01" );
		-- ������10��
		PhaseTimer( 2000 );					
	elseif u32PhaseCheck == 12 then
		
		-- �� �̼� �� ����
		LuaChangeMissionID( Arcade, Host, 6)
		
		--	VIRUS �����
		LuaStopBGM( Arcade, Host );
		LuaPlayBGM( Arcade, Host, "Resources/Bgm/plasticmethod.ogg" );
		LuaMoviePlay( Arcade, Host, 6 );
		-- ������11��
		PhaseAdd();
	elseif u32PhaseCheck == 14 then
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(1,1)] );
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(2,2)] );
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(3,3)] );
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(5,5)] );
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(6,6)] );
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(7,7)] );
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(1,7)] );
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(1,7)] );
		-- ������12��
		PhaseAdd();

	elseif u32PhaseCheck == 16 then
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(1,1)] );
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(2,2)] );
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(3,3)] );
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(4,4)] );
		-- ������14��
		PhaseAdd();

	elseif u32PhaseCheck == 18 then
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(1,1)] );
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(2,2)] );
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(3,3)] );
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St03[math.random(4,4)] );
		-- ������16��
		PhaseAdd();

	elseif u32PhaseCheck == 20 then
		-- ų�� �ʱ�ȭ
		HostArg:SetLU32("VIRUS", 0 );
		LuaSyncHostData( Arcade, Host, "VIRUS" );
		-- �������� ��� ��û
		LuaRequestStageClear( Arcade, Host );
		-- ������23��
		PhaseAdd();
	end

end

-------------------------------------------------------------------------------------------------------------------
-- ��������4�� ����� ���õ� ������ ����ִ� �Լ�
-------------------------------------------------------------------------------------------------------------------
function Stage04()

	if ( u32AccumulateTime >= 30000 ) and ( u32PhaseCheck <= 2 ) then
		PhaseToGo(3);
	end
	if ( u32AccumulateTime >= 60000 ) and ( u32PhaseCheck <= 4 ) then
		PhaseToGo(5);
	end
	if ( u32AccumulateTime >= 90000 ) and ( u32PhaseCheck <= 6 ) then
		PhaseToGo(7);
	end
	if ( u32AccumulateTime >= 180000 ) and ( u32PhaseCheck <= 12 ) then
		PhaseToGo(13);
	end

	if u32PhaseCheck == 0 then
		-- ������ ����Ƚ�� �ʱ�ȭ
		HostArg:SetLU32( "ITEMSPAWNCOUNT", 20 );
		--LuaPlayBGM( Arcade, Host, "Resources/Bgm/plasticmethod.ogg" );
		-- ����������
		LuaSpawnAIActor( Arcade, Host, "INJURYED_TEAJO", "TypeTeajoA", -5812, 3141, -2593, -0.96, 0, -0.22 );
		-- ������1��
		PhaseAdd();
	elseif u32PhaseCheck == 1 then
		u32AccumulateTime = 0
		--LuaSetStageInfo( Arcade, Host, 4, 5 );
		LuaPlayBGM( Arcade, Host, "Resources/Bgm/plasticmethod.ogg" );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_P", "TypeVirusClose", gSpawnNod_St04[math.random(1,1)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_P", "TypeVirusClose", gSpawnNod_St04[math.random(2,2)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_P", "TypeVirusClose", gSpawnNod_St04[math.random(5,5)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_P", "TypeVirusClose", gSpawnNod_St04[math.random(6,6)] );
		LuaViewMissionInfo( Arcade, Host, 7, 0, 0, 0, 0.5, 4000 );
		-- ������2��
		PhaseAdd();
	elseif u32PhaseCheck == 3 then
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SS", "TypeVirusEsperSS", gSpawnNod_St04[math.random(9,9)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SS", "TypeVirusEsperSS", gSpawnNod_St04[math.random(10,10)] );
		HostArg:SetLU32( "INFECTED_ESPER_P", 0 );
		LuaSyncHostData( Arcade, Host, "INFECTED_ESPER_P" );
		u32VirusEsperP = HostArg:GetLU32( "INFECTED_ESPER_P");
		--Arcade:Print( string.format( "�ʱ�ȭ") ); 
		-- ������4��
		PhaseAdd();
	elseif u32PhaseCheck == 5 then
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_S", "TypeVirusEsperS", gSpawnNod_St04[math.random(1,1)] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_S", "TypeVirusEsperS", gSpawnNod_St04[math.random(2,2)] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_S", "TypeVirusEsperS", gSpawnNod_St04[math.random(5,5)] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_S", "TypeVirusEsperS", gSpawnNod_St04[math.random(6,6)] ); 
		HostArg:SetLU32( "INFECTED_ESPER_SS", 0 );
		LuaSyncHostData( Arcade, Host, "INFECTED_ESPER_SS" );
		u32VirusEsperP = HostArg:GetLU32( "INFECTED_ESPER_SS");
		--Arcade:Print( string.format( "�ʱ�ȭ") ); 
		-- ������ 6��
		PhaseAdd();
	elseif u32PhaseCheck == 7 then		
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_P", "TypeVirusClose", gSpawnNod_St04[math.random(1,1)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_P", "TypeVirusClose", gSpawnNod_St04[math.random(2,2)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_P", "TypeVirusClose", gSpawnNod_St04[math.random(5,5)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_P", "TypeVirusClose", gSpawnNod_St04[math.random(6,6)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_S", "TypeVirusEsperS", gSpawnNod_St04[math.random(1,1)] ); 
		--LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_S", "TypeVirusEsperS", gSpawnNod_St04[math.random(2,2)] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_S", "TypeVirusEsperS", gSpawnNod_St04[math.random(5,5)] ); 
		--LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_S", "TypeVirusEsperS", gSpawnNod_St04[math.random(6,6)] ); 
		-- ������ 8��
		PhaseAdd();		
	elseif u32PhaseCheck == 8 then	
		PhaseTimer( 45000 );		
	elseif u32PhaseCheck == 9 then	
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SS", "TypeVirusEsperSS", gSpawnNod_St04[math.random(9,9)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SS", "TypeVirusEsperSS", gSpawnNod_St04[math.random(10,10)] );
		--������10��
		PhaseAdd();
	elseif u32PhaseCheck == 10 then	
		--������11��
		PhaseTimer( 50000 );			
	elseif u32PhaseCheck == 11 then
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_P", "TypeVirusClose", gSpawnNod_St04[math.random(11,11)] );
		--LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_P", "TypeVirusClose", gSpawnNod_St04[math.random(12,12)] );
		--������12��
		PhaseAdd();	
	elseif u32PhaseCheck == 13 then
		--������ ��� ���� ����
		HostArg:SetLU32( "INFECTED_ESPER_P", 0 );
		LuaSyncHostData( Arcade, Host, "INFECTED_ESPER_P" );
		u32VirusEsperP = HostArg:GetLU32( "INFECTED_ESPER_P");			
		HostArg:SetLU32( "INFECTED_ESPER_S", 0 );
		LuaSyncHostData( Arcade, Host, "INFECTED_ESPER_S" );
		u32VirusEsperP = HostArg:GetLU32( "INFECTED_ESPER_S");
		--LuaRemoveAllAIActorByType( Arcade, Host, "INFECTED_ESPER_S" );
		--LuaRemoveAllAIActorByType( Arcade, Host, "INFECTED_ESPER_P" );
		--LuaRemoveAllAIActorByType( Arcade, Host, "INFECTED_ESPER_SS" );
		--LuaRemoveAllAIActorByType( Arcade, Host, "VIRUS" );
		LuaRemoveAllAIActor( Arcade, Host );
		LuaSpawnAIActor( Arcade, Host, "INJURYED_TEAJO", "TypeTeajoA", -5812, 3141, -2593, -0.96, 0, -0.22 );
		PhaseAdd();
	elseif u32PhaseCheck == 14 then		
		-- �� �̼� �� ����
		LuaChangeMissionID( Arcade, Host, 8)	
		
		-- �����ϰ� �ִ� VIRUS ����
		LuaStopBGM( Arcade, Host );
		LuaMoviePlay( Arcade, Host, 8 );
		--LuaSetStageInfo( Arcade, Host, 4, 3 );			
		-- ������ 18��
		PhaseAdd();
	elseif u32PhaseCheck == 16 then
		LuaPlayBGM( Arcade, Host, "Resources/Bgm/plasticmethod.ogg" );
		LuaSpawnAIActor( Arcade, Host, "CAPTAIN_GUARD", "TypeHMG_Captain", -5894, 4704, -236, -0.55, 0, -0.83 );
		-- ������17��
		PhaseAdd();
	elseif u32PhaseCheck == 17 then
		-- ĸƾ���忡�Լ� 60�ʰ� ��Ƽ��
		-- ������ 21�ȴ�.
		PhaseTimer( 75000 );
	elseif u32PhaseCheck == 18 then
		LuaStopBGM( Arcade, Host );
		-- ���带 ����
		LuaRemoveAllAIActor( Arcade, Host );	
		-- Scene7 : ��������4 ����Ŭ���� ��
		LuaMoviePlay( Arcade, Host, 9 );
		-- ������ 19��
		PhaseAdd();			
	elseif u32PhaseCheck == 20 then
		-- ��������4 ��� ��û
		LuaRequestStageClear( Arcade, Host );
		-- ������24��
		PhaseAdd();
--[[		
	elseif u32PhaseCheck == 30 then
		--������ ��� ���� ����
		LuaRemoveAllAIActor( Arcade, Host );
		--LuaRemoveAllAIActorByType( Arcade, Host, "INFECTED_ESPER_S" );
		--LuaRemoveAllAIActorByType( Arcade, Host, "INFECTED_ESPER_P" );
		--LuaRemoveAllAIActorByType( Arcade, Host, "INFECTED_ESPER_SS" );
		LuaSpawnAIActor( Arcade, Host, "INJURYED_TEAJO", "TypeTeajoA", -5812, 3141, -2593, -0.96, 0, -0.22 );
		PhaseToGo(16);]]--
	end
	
end

-------------------------------------------------------------------------------------------------------------------
-- ��������5�� ����� ���õ� ������ ����ִ� �Լ�
-------------------------------------------------------------------------------------------------------------------
function Stage05()

	if u32PhaseCheck == 0 then

		-- ������ ����Ƚ�� �ʱ�ȭ
		HostArg:SetLU32( "ITEMSPAWNCOUNT", 30 );
	
		LuaPlayBGM( Arcade, Host, "Resources/Bgm/Braveitout.ogg" );
		LuaSpawnAIActor( Arcade, Host, "MOONGK", "TypeMoongK", 1902, 2832, 8162, -0.01, 0, -1.00 );
		LuaSpawnAIActorByNode( Arcade, Host, "MOONGK_BEHIND_SHOOT", "TypeD", gSpawnNod_St05[1] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "MOONGK_BEHIND_SHOOT", "TypeD", gSpawnNod_St05[3] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "MOONGK_BEHIND_SHOOT", "TypeD", gSpawnNod_St05[5] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "MOONGK_BEHIND_SHOOT", "TypeD", gSpawnNod_St05[7] ); 

		LuaViewMissionInfo( Arcade, Host, 9, 0, 0, 0, 0.5, 4000 );

		-- ������1��
		PhaseAdd();
	elseif u32PhaseCheck == 2 then
	
		-- �� �̼� �� ����
		LuaChangeMissionID( Arcade, Host, 10 )
		
		-- Scene 9 : ��������5 ���� 1�ܰ� Ŭ���� ��
		LuaMoviePlay( Arcade, Host, 11 );
		-- ������3��
		PhaseAdd();
	elseif u32PhaseCheck == 4 then
		LuaSpawnAIActor( Arcade, Host, "MOONGK", "TypeMoongK", 1902, 2832, 8162, -0.01, 0, -1.00 );
		LuaSpawnAIActorByNode( Arcade, Host, "MOONGK_BEHIND_SHOOT", "TypeD", gSpawnNod_St05[1] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "MOONGK_BEHIND_SHOOT", "TypeD", gSpawnNod_St05[3] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "MOONGK_BEHIND_SHOOT", "TypeD", gSpawnNod_St05[5] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "MOONGK_BEHIND_SHOOT", "TypeD", gSpawnNod_St05[7] );
		-- ������5��
		PhaseAdd();
	elseif u32PhaseCheck == 6 then
				
		-- Scene 9 : ��������5 ���� 2�ܰ� Ŭ���� ��
		LuaMoviePlay( Arcade, Host, 12 );
		-- ������7��
		PhaseAdd();
	elseif u32PhaseCheck == 8 then
		-- ��������5 ��� ��û
		LuaRequestStageClear( Arcade, Host );
		-- ������9��
		PhaseAdd();
	end

end


-------------------------------------------------------------------------------------------------------------------
-- ��������6�� ����� ���õ� ������ ����ִ� �Լ�
-------------------------------------------------------------------------------------------------------------------
function Stage06()

	if ( u32AccumulateTime >= 180000 ) and ( u32PhaseCheck <= 28 ) then
		PhaseToGo(29);
	end
	-- �׽�Ʈ�ڵ�
	u32Virus = HostArg:GetLU32( "VIRUS" );
	--Arcade:Print( string.format( "\n�� �� �� �� VIRUS ���? %d �� �� �� �� \n", u32Virus ) );
	

	if u32PhaseCheck == 0 then

		-- ������ ����Ƚ�� �ʱ�ȭ
		HostArg:SetLU32( "ITEMSPAWNCOUNT", 10 );
		
		LuaPlayBGM( Arcade, Host, "Resources/Bgm/plasticmethod.ogg" );
		-- ������ ��忡 ��107 ������
		LuaSpawnAIActorByNode( Arcade, Host, "BROKEN_FAM107", "TypeBossShotaA", "arcade_spawn_stage06_farm" );
		LuaViewMissionInfo( Arcade, Host, 10, 0, 0, 0, 0.5, 4000 );
		-- ������1��
		PhaseAdd();
		
	elseif u32PhaseCheck == 1 then
		u32AccumulateTime = 0
		--LuaSetStageInfo( Arcade, Host, 6, 3 );	
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_MS", "TypeMindShock", gSpawnNod_St06[math.random(4,7)] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_MS", "TypeMindShock", gSpawnNod_St06[math.random(4,7)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_MS", "TypeMindShock", gSpawnNod_St06[math.random(8,11)] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_MS", "TypeMindShock", gSpawnNod_St06[math.random(8,11)] );
		PhaseAdd();
		
	elseif u32PhaseCheck == 3 then
		if gCount == 0 then
			mySelectSpawnPos = math.random( 1, 3 );
			if mySelectSpawnPos == 1 then
				myFirstSpawnValue = 12;
				myLastSpawnValue = 14;
			elseif mySelectSpawnPos == 2  then
				myFirstSpawnValue = 15;
				myLastSpawnValue = 17;
			else
				myFirstSpawnValue = 18;
				myLastSpawnValue = 20;
			end
		end
		if gCount < 5 then
		gCount = gCount + 1;
		
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St06[math.random(myFirstSpawnValue,myLastSpawnValue)] );	
		
		elseif gCount == 5 then
			gCount = 0;
			-- ������4��
			PhaseAdd();
		end
		
	elseif u32PhaseCheck == 4 then
		-- ������ 5��
		PhaseTimer( 5000 );
		
	elseif ( u32PhaseCheck == 5 ) then
		if gCount == 0 then
			mySelectSpawnPos = math.random( 1, 3 );
			if mySelectSpawnPos == 1 then
				myFirstSpawnValue = 12;
				myLastSpawnValue = 14;
			elseif mySelectSpawnPos == 2  then
				myFirstSpawnValue = 15;
				myLastSpawnValue = 17;
			else
				myFirstSpawnValue = 18;
				myLastSpawnValue = 20;
			end
		end
		if gCount < 5 then
		gCount = gCount + 1;
			
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St06[math.random(myFirstSpawnValue,myLastSpawnValue)] );
		
		elseif gCount == 5 then
			gCount = 0;
			-- ������6��
			PhaseAdd();
		end

	elseif u32PhaseCheck == 6 then
		-- ������ 7��
		PhaseTimer( 5000 );

	elseif u32PhaseCheck == 7 then
		if gCount == 0 then
			mySelectSpawnPos = math.random( 1, 3 );
			if mySelectSpawnPos == 1 then
				myFirstSpawnValue = 12;
				myLastSpawnValue = 14;
			elseif mySelectSpawnPos == 2  then
				myFirstSpawnValue = 15;
				myLastSpawnValue = 17;
			else
				myFirstSpawnValue = 18;
				myLastSpawnValue = 20;
			end
		end
		if gCount < 5 then
		gCount = gCount + 1;
		
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St06[math.random(myFirstSpawnValue,myLastSpawnValue)] );
		
		elseif gCount == 5 then
			gCount = 0;
			-- ������8��
			PhaseAdd();
		end

	elseif u32PhaseCheck == 8 then
		PhaseTimer( 5000 );
		-- ������7��
	elseif u32PhaseCheck == 9 then
		if gCountA <= 1 then
		HostArg:SetLU32( "PHASE_ID", 10 );
		u32PhaseCheck = HostArg:GetLU32( "PHASE_ID" );
		u32StageID = HostArg:GetLU32( "NOW_STAGE_ID" );
		gCountA = gCountA + 1;

		elseif gCountA == 2 then
			gCountA = 0;
			-- ������8��
			PhaseAdd();
		end

	elseif u32PhaseCheck == 10 then
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_CN", "TypeCannonade", gSpawnNod_St06[math.random(12,14)] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_CN", "TypeCannonade", gSpawnNod_St06[math.random(15,17)] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_CN", "TypeCannonade", gSpawnNod_St06[math.random(18,20)] ); 
		-- ������14��
		PhaseAdd();
	elseif u32PhaseCheck == 11 then
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_MS", "TypeMindShock", gSpawnNod_St06[math.random(4,7)] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_MS", "TypeMindShock", gSpawnNod_St06[math.random(4,7)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_MS", "TypeMindShock", gSpawnNod_St06[math.random(8,11)] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_MS", "TypeMindShock", gSpawnNod_St06[math.random(8,11)] ); 
		
		-- ������10��
		PhaseAdd();

	elseif u32PhaseCheck == 13 then
		-- ������ 17��
		PhaseToGo(1);
		--[[
		if (u32AccumulateTime < 178000) and ( u32PhaseCheck == 13 ) then
			--if (u32MonsterSpawnDelay >= 180000) and ( u32PhaseCheck <=15) then
			--LuaRequestStageClear( Arcade, Host );
				PhaseToGo(1);
		elseif (u32AccumulateTime >= 178000) (u32PhaseCheck == 13 ) then
				PhaseToGo(29);			
			end
		--PhaseTimer( 10000 );
		]]--
	elseif u32PhaseCheck == 17 then
				
		if gCount == 0 then
			mySelectSpawnPos = math.random( 1, 3 );
			if mySelectSpawnPos == 1 then
				myFirstSpawnValue = 12;
				myLastSpawnValue = 14;
			elseif mySelectSpawnPos == 2  then
				myFirstSpawnValue = 15;
				myLastSpawnValue = 17;
			else
				myFirstSpawnValue = 18;
				myLastSpawnValue = 20;
			end
		end
		if gCount < 10 then
		gCount = gCount + 1;
		
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St06[math.random(myFirstSpawnValue,myLastSpawnValue)] );
		
		elseif gCount == 10 then
			gCount = 0;
			-- ������18��
			PhaseAdd();
		end
	
	elseif u32PhaseCheck == 18 then
		-- ������ 19��
		PhaseTimer( 5000 );
	elseif u32PhaseCheck == 19 then
		if gCount == 0 then
			mySelectSpawnPos = math.random( 1, 3 );
			if mySelectSpawnPos == 1 then
				myFirstSpawnValue = 12;
				myLastSpawnValue = 14;
			elseif mySelectSpawnPos == 2  then
				myFirstSpawnValue = 15;
				myLastSpawnValue = 17;
			else
				myFirstSpawnValue = 18;
				myLastSpawnValue = 20;
			end
		end
		if gCount < 10 then
		gCount = gCount + 1;
		
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St06[math.random(myFirstSpawnValue,myLastSpawnValue)] );
		
		elseif gCount == 10 then
			gCount = 0;
			-- ������20��
			PhaseAdd();
		end

	elseif u32PhaseCheck == 20 then
		-- ������ 21��
		PhaseTimer( 5000 );
	elseif u32PhaseCheck == 21 then
		if gCount == 0 then
			mySelectSpawnPos = math.random( 1, 3 );
			if mySelectSpawnPos == 1 then
				myFirstSpawnValue = 12;
				myLastSpawnValue = 14;
			elseif mySelectSpawnPos == 2  then
				myFirstSpawnValue = 15;
				myLastSpawnValue = 17;
			else
				myFirstSpawnValue = 18;
				myLastSpawnValue = 20;
			end
		end
		if gCount < 10 then
		gCount = gCount + 1;
		
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St06[math.random(myFirstSpawnValue,myLastSpawnValue)] );
		
		elseif gCount == 10 then
			gCount = 0;
			-- ������22��
			PhaseAdd();
		end

	elseif u32PhaseCheck == 22 then
		-- ������ 23��
		PhaseTimer( 5000 );

	elseif u32PhaseCheck == 23 then
		if gCountA <= 1 then
		HostArg:SetLU32( "PHASE_ID", 21 );
		u32PhaseCheck = HostArg:GetLU32( "PHASE_ID" );
		u32StageID = HostArg:GetLU32( "NOW_STAGE_ID" );
		gCountA = gCountA + 1;

		elseif gCountA == 2 then
			gCountA = 0;
			-- ������24��
			PhaseAdd();
		end
		
	elseif u32PhaseCheck == 24 then
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_CN", "TypeCannonade", gSpawnNod_St06[math.random(12,14)] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_CN", "TypeCannonade", gSpawnNod_St06[math.random(15,17)] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_CN", "TypeCannonade", gSpawnNod_St06[math.random(18,20)] ); 
		-- ������25��
		PhaseAdd();
	elseif u32PhaseCheck == 25 then
		PhaseTimer( 10000 );
		-- ������26��
	elseif u32PhaseCheck == 26 then
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St06[math.random(12,20)] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St06[math.random(12,20)] );
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St06[math.random(12,20)] );
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St06[math.random(12,20)] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St06[math.random(12,20)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_MS", "TypeMindShock", gSpawnNod_St06[math.random(4,7)] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_MS", "TypeMindShock", gSpawnNod_St06[math.random(4,7)] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_MS", "TypeMindShock", gSpawnNod_St06[math.random(8,11)] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_MS", "TypeMindShock", gSpawnNod_St06[math.random(8,11)] ); 
		-- ������27��
		PhaseAdd();

	elseif u32PhaseCheck == 28 then
		-- ������ 29��
		PhaseTimer( 10000 );
		--Arcade:Print( string.format( "rest" ) );
	
	elseif u32PhaseCheck == 29 then
		
		-- �� �̼� �� ����
		LuaChangeMissionID( Arcade, Host, 12 )
		--LuaSetStageInfo( Arcade, Host, 6, 10 );
		-- �ʿ���� AI ����
		LuaStopBGM( Arcade, Host );
		LuaRemoveAllAIActor( Arcade, Host );
		LuaMoviePlay( Arcade, Host, 14 );
		-- ������ 30��
		PhaseAdd();

	elseif u32PhaseCheck == 31 then
		-- stage6_2 ������ ��忡 ������ ��107 ������
		LuaPlayBGM( Arcade, Host, "Resources/Bgm/Minus.ogg" );
		
		-- KICHI ����
		--LuaSpawnAIActor( Arcade, Host, "KICHI", "TypeKiki", -4394.9, 3160.5, -2516.2, 0.35, 0, -0.94 );
		LuaSpawnAIActorByNode( Arcade, Host, "KICHI", "TypeKiki", "arcade_spawn_stage06_e02" );
		
		-- ���� �� ����
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_FAM107", "TypeBossShota", gSpawnNod_St06[21] );
		-- ������32��
		PhaseAdd();
	elseif u32PhaseCheck == 32 then
		-- ������ ��107���Լ� 90�ʰ� ��Ƽ��
		-- ������ 33�ȴ�.
		PhaseTimer( 30000 );
	elseif u32PhaseCheck == 33 then
		LuaMoviePlay( Arcade, Host, 15 );
		-- ������ 34��
		PhaseAdd();
	elseif u32PhaseCheck == 35 then
		for indx = 1, 6 do
			LuaSpawnAIActorByNode( Arcade, Host, "VIRUS", "TypeVirus", gSpawnNod_St06[math.random(22,27)] ); 
		end
		-- ������ 36��
		PhaseAdd();
		--PhaseToGo(32);
	elseif u32PhaseCheck == 37 then
		-- ��������6 ��� ��û
		LuaRequestStageClear( Arcade, Host );
		-- ������38��
		PhaseAdd();
	end

end


-------------------------------------------------------------------------------------------------------------------
-- ��������7�� ����� ���õ� ������ ����ִ� �Լ�
-------------------------------------------------------------------------------------------------------------------

-- ���ο� ��������7
function Stage07()
	
	-- Űġ�� ��� ���̸� �ȴ� �ð�
	local myWalkTime = 500;

	if u32PhaseCheck == 0 then

		-- ������ ����Ƚ�� �ʱ�ȭ
		HostArg:SetLU32( "ITEMSPAWNCOUNT", 20 );
		
		-- �ӽ��ڵ�
		-- ���׼��� ����
		--LuaChangeFogProperty( Arcade, Host, 100000, 100000, 0.431, 0.352, 0.474 );
	
		LuaPlayBGM( Arcade, Host, "Resources/Bgm/plasticmethod.ogg" );
		LuaSpawnAIActorByNode( Arcade, Host, "KICHI", "TypeKiki", "arcade_spawn_pos_stage08" ); 
		
		LuaViewMissionInfo( Arcade, Host, 12, 0, 0, 0, 0.5, 4000 );
		-- ������1��
		PhaseAdd();
	elseif u32PhaseCheck == 1 then
		PhaseAdd();
	elseif u32PhaseCheck == 2 then
		-- ������3��
		PhaseTimer( myWalkTime );
	elseif u32PhaseCheck == 3 then
		-- ������4��
		PhaseTimer( myWalkTime );
	elseif u32PhaseCheck == 4 then
	
		--LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TEAJO", "TypeVirusTeajo",  gSpawnNod_St07[6] ); 
		--LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_B", "TypeBind", gSpawnNod_St07[4] );  
		--LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_B", "TypeBind", gSpawnNod_St07[5] ); 
		
		--LuaSpawnAIActorByNode( Arcade, Host, "MASTERTR_A01", "TypeTRB_Big", gSpawnNod_St07[4] );
		--LuaSpawnAIActorByNode( Arcade, Host, "MASTERTR_A01", "TypeTRB_Big", gSpawnNod_St07[5] );
		
		--LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TEAJO", "TypeVirusTeajo", gSpawnNod_St07[4] ); 
		--LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_B", "TypeBind", gSpawnNod_St07[5] ); 
		--LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_B", "TypeBind", gSpawnNod_St07[6] ); 
		
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_CC", "TypeCounterSwordCombo", gSpawnNod_St07[4] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_CC", "TypeCounterSwordCombo", gSpawnNod_St07[5] );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_CC", "TypeCounterSwordCombo", gSpawnNod_St07[6] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_CC", "TypeCounterSwordCombo", gSpawnNod_St07[7] );
		-- ������5��
		PhaseAdd();
	elseif u32PhaseCheck == 6 then
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_CU", "TypeVirusEsperCU", gSpawnNod_St07[4] ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_CU", "TypeVirusEsperCU", gSpawnNod_St07[7] );
		-- ������8��
		PhaseAdd();
	elseif u32PhaseCheck == 8 then --ss
		-- ������15��
		PhaseTimer( 1000 );
	elseif u32PhaseCheck == 9 then
		-- ������ 16��
		PhaseTimer( myWalkTime );
	elseif u32PhaseCheck == 10 then
		-- ������ 17��
		PhaseTimer( myWalkTime );
	elseif u32PhaseCheck == 11 then
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SS2", "TypeVirusEsperSS2", "arcade_spawn_stage07_a01" );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SS2", "TypeVirusEsperSS2", "arcade_spawn_stage07_a05" );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SS2", "TypeVirusEsperSS2", "arcade_spawn_stage07_a04" );
		-- ������18��
		PhaseAdd();
	elseif u32PhaseCheck == 13 then
		LuaSpawnAIActorByNode( Arcade, Host, "SUICIDE_ROBOT", "TypeTRA_Big", gSpawnNod_St07[37] );
		LuaSpawnAIActorByNode( Arcade, Host, "SUICIDE_ROBOT", "TypeTRA_Big", gSpawnNod_St07[38] );
		LuaSpawnAIActorByNode( Arcade, Host, "SUICIDE_ROBOT", "TypeTRA_Big", gSpawnNod_St07[39] );
		--������20��
		PhaseAdd();
	elseif u32PhaseCheck == 15 then --ss
		-- ������33��
		PhaseTimer( 1000 );
	elseif u32PhaseCheck == 16 then
		-- ������ 26��
		PhaseTimer( myWalkTime );
	elseif u32PhaseCheck == 17 then
		-- ������ 27��
		PhaseTimer( myWalkTime );
	elseif u32PhaseCheck == 18 then
		-- ������ 28��
		PhaseTimer( myWalkTime );
		--ss	
	elseif u32PhaseCheck == 19 then
		LuaSpawnAIActorByNode( Arcade, Host, "SUICIDE_ROBOT", "TypeTRA_Big", gSpawnNod_St07[41] );
		LuaSpawnAIActorByNode( Arcade, Host, "SUICIDE_ROBOT", "TypeTRA_Big", gSpawnNod_St07[43] );
		LuaSpawnAIActorByNode( Arcade, Host, "SUICIDE_ROBOT", "TypeTRA_Big", gSpawnNod_St07[44] );
		--������29��
		PhaseAdd();
	elseif u32PhaseCheck == 21 then	
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SS2", "TypeVirusEsperSS2", "arcade_spawn_stage07_a11" );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SS2", "TypeVirusEsperSS2", "arcade_spawn_stage07_a12" );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SS2", "TypeVirusEsperSS2", "arcade_spawn_stage07_a14" );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SNP", "TypeRailgun", "arcade_spawn_stage07_a10" );
		-- ������31��
		PhaseAdd();
	elseif u32PhaseCheck == 23 then --ss
		-- ������33��
		PhaseTimer( 1000 );
	elseif u32PhaseCheck == 24 then
		-- ������34��
		PhaseTimer( myWalkTime );
	elseif u32PhaseCheck == 25 then
		-- ������35��
		PhaseTimer( myWalkTime );
	elseif u32PhaseCheck == 26 then
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SNP", "TypeRailgun", "arcade_spawn_stage07_a15" );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SNP", "TypeRailgun", "arcade_spawn_stage07_a16" );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SNP", "TypeRailgun", "arcade_spawn_stage07_a17" );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SNP", "TypeRailgun", "arcade_spawn_stage07_a20" );
		-- ������26��
		PhaseAdd();
	elseif u32PhaseCheck == 27 then
		-- ������44��
		PhaseTimer( 5000 );		
	elseif u32PhaseCheck == 28 then
		-- ������37��
		LuaSpawnAIActorByNode( Arcade, Host, "SUICIDE_ROBOT", "TypeTRA_Big", "arcade_spawn_m09" );
		LuaSpawnAIActorByNode( Arcade, Host, "SUICIDE_ROBOT", "TypeTRA_Big", "arcade_spawn_m13" );
		-- ������38��
		PhaseAdd();
	elseif u32PhaseCheck == 30 then --ss
		-- ������40��
		PhaseTimer( 1000 );
	elseif u32PhaseCheck == 31 then
		-- ������41��
		PhaseTimer( myWalkTime );
	elseif u32PhaseCheck == 32 then
		-- ������42��
		PhaseTimer( myWalkTime );
	elseif u32PhaseCheck == 33 then
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SS2", "TypeVirusEsperSS2", "arcade_spawn_stage07_a27" );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SS2", "TypeVirusEsperSS2", "arcade_spawn_stage07_a23" );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_SS2", "TypeVirusEsperSS2", "arcade_spawn_stage07_a26" );
		-- ������43��
		PhaseAdd();
	elseif u32PhaseCheck == 34 then
		-- ������44��
		PhaseTimer( 5000 );
	elseif u32PhaseCheck == 35 then
		LuaSpawnAIActorByNode( Arcade, Host, "MASTERTR_A01", "TypeTRB_Big", "arcade_spawn_m16" );
		LuaSpawnAIActorByNode( Arcade, Host, "MASTERTR_A01", "TypeTRB_Big", "arcade_spawn_m12" );
		-- ������45��
		PhaseAdd();
	elseif u32PhaseCheck == 37 then --ss
		-- ������47��
		PhaseTimer( 1000 );
	elseif u32PhaseCheck == 38 then
		-- ������48��
		PhaseTimer( myWalkTime );
	elseif u32PhaseCheck == 39 then
		-- ������49��
		PhaseTimer( myWalkTime );		
	elseif u32PhaseCheck == 40 then
		
		-- �� �̼� �� ����
		LuaChangeMissionID( Arcade, Host, 14 )
		
		LuaStopBGM( Arcade, Host );
		-- ������ TAEJO �����
		LuaMoviePlay( Arcade, Host, 17 );
		-- ������50��
		PhaseAdd();
	elseif u32PhaseCheck == 42 then
		LuaPlayBGM( Arcade, Host, "Resources/Sound/tutorial/tut_bgm_03.ogg" );
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_TEAJO", "TypeVirusTeajo", "arcade_spawn_m16" ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_B", "TypeBind", "arcade_spawn_m16" ); 
		LuaSpawnAIActorByNode( Arcade, Host, "INFECTED_ESPER_B", "TypeBind", "arcade_spawn_m16" ); 
		
		-- ������52��
		PhaseAdd();
	elseif u32PhaseCheck == 44 then
		-- ��������7 ��� ��û
		LuaRequestStageClear( Arcade, Host );
		-- ������54��
		PhaseAdd();
	end
	
end

-------------------------------------------------------------------------------------------------------------------
-- ��������8�� ����� ���õ� ������ ����ִ� �Լ�
-------------------------------------------------------------------------------------------------------------------
function Stage08()

	if u32PhaseCheck == 0 then
	
		-- ������ ����Ƚ�� �ʱ�ȭ
		HostArg:SetLU32( "ITEMSPAWNCOUNT", 50 );
		
		--������� ����
		LuaPlayBGM( Arcade, Host, "Resources/Bgm/NANORISK.ogg" );
		
		-- ���׼��� ����
		LuaChangeFogProperty( Arcade, Host, 1000, 8000, 0.431, 0.352, 0.474 );
		-- ��ī�̹ڽ� ���� ����
		LuaShowSkyBox( Arcade, Host, false );

		-- ������1��
		PhaseAdd();
	elseif u32PhaseCheck == 1 then
		LuaSpawnAIActorByNode( Arcade, Host, "MOTHER_VIRUS", "TypeBossVirus", "arcade_spawn_stage09_01" );
		
		LuaViewMissionInfo( Arcade, Host, 14, 0, 0, 0, 0.5, 4000 );
		
		-- ������2��
		PhaseAdd();
	elseif u32PhaseCheck == 3 then
		-- ������
		LuaStopBGM( Arcade, Host );
		LuaMoviePlay( Arcade, Host, 20 );
		-- ������4��
		PhaseAdd();
	end

end
