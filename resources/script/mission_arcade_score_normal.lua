--[[
	���α׷����� ȣ���� �ϰ� �־ ��ũ��Ʈ���� �� �־�� �ϴ� �Լ���	
	������ ������ ��.
	
	function Initialize()
	end	

	function FirstUpdate()
	end

	function Update( uiTimeDelta )
	end

	function OnNotify( notifyID )
	end

	function RemoveMonster( monster )
	end
]]--

--[[
	RULE ���� ��밡���� �����Լ�
	
	GetCurrMonsterCount();					-- ���� �ʿ� �ִ� ������ ��
	GetAccumKillCount();					-- ������� ���� ������ ���� ��
	GetKillComboCount();					-- ����ų �޺� ī��Ʈ
	GetCurrWeaponType();					-- ���� ������ ���� Ÿ��
	GetKillByOneAttack();					-- �ѹ��� �������� ���� ������ ��
	GetElapsedTime();						-- ������� �帥 �ð�
	GetMyActorHP();							-- ������ HP
	MonsterSpawn( ����Ÿ��, ��, ������ġ, ��ġ�� ������X, ��ġ�� ������y, Ÿ�Ժ��н���뿩��, Ÿ�Ժ��н���뿩��, Ÿ�Ժ��н���뿩��); -- ���͸� ������
	MissionSuccess();						-- �̼� ����
	MissionFail();							-- �̼� ����
	LuaTriggerNotify();						-- Ʈ���ŷ� �̺�Ʈ�� ������( in Ʈ���ŷ� ���� �̺�Ʈ �� ), �ٷ� Ʈ���ŷ� ����	
	GetArg();								-- Arg�� ��ȯ�Ѵ�. Arg����� MonsterAI_Constants.lua ����
	
	-- defense ������ ������ �Լ�
	
	-- genocide ������ ������ �Լ�
	SetUpdateScriptTime( u32 uiUpdateTime );	-- lua ������ ������Ʈ �ֱ⸦ ����.
	SetKillComboTime( u32 uiUpdateTime );		-- ų �޺��� üũ�� ���� �ð��� ����.
	SetKillByOneAttackTime( u32 uiUpdateTime );	-- �ѹ� �������� üũ�� ���� �ð��� ����.	
	RemoveAllMonster()							-- ��� ���͸� ����
	SetRoundLimitTime()						-- ���ѽð� ����
]]--

--[[
	���� Ÿ���� xml/monster_status.xml �� ������ ��.
]]--

TEAM_ALPHA	= 1;
TEAM_BETA	= 2;

-----------------------------------------------------------------------------------------------------------------------
	--��ũ��Ʈ������ ���� �������� �ʱ�ȭ �ϴ� �Լ�
	--���α׷����� ��ũ��Ʈ�� �ε��� �ڿ� �ٷ� ȣ��ȴ�.
-----------------------------------------------------------------------------------------------------------------------
function Initialize()
	
	--�ʵ� ���� �ִ� �� ��
	MAX_MONSTER_COUNT 	= 6;
	
	--���� ���� �� ��
	currMonsterCount 	= 0;	
	
	-- �̼� �Ϸ� ���� üũ
	missionChecked		= false;
	
	-- ��ũ��Ʈ ������Ʈ �ð�
	RULE:SetUpdateScriptTime( 500 );
	
	-- ų�޺� üũ�ð�
	RULE:SetKillComboTime( 1500 );
	
	-- �ѹ� ���� üũ�ð�( ���� �������� üũ�ϱ⿣ �ָ��ؼ� �ϴ��� �ð����� )
	RULE:SetKillByOneAttackTime( 100 );

	-- 70�� ���� Push ������.
	ruleArg = RULE:GetArg();
	ruleArg:PushLU32( "1002", 0 );		-- monster_status.xml �� monster_key�� ���. ��
	ruleArg:PushLU32( "1012", 0 );		-- monster_status.xml �� monster_key�� ���. ��
	ruleArg:PushLU32( "1202", 0 );		-- monster_status.xml �� monster_key�� ���. ����Ʈ
	ruleArg:PushLU32( "PHASE_ID", 1 );	-- ������ī��Ʈ
	
	-- ���ѽð� ����		( xml�� �����Ǿ��� ������ �����! )
	RULE:SetRoundLimitTime();
	
	-- �ִ� ��ǥ ���� ���� ����( Push�� ���α׷����� ���ְ� ���� )
	ruleArg:SetLU32( "MissionMonsterCount", 5000 );

	-- ������ ����
	u32PhaseCheck = 1;
	
	--����Ʈ ���� (���� ����� true)
	isKnightSpawn = false;
	
	-- �� ������ ��ǥ
	PhaseGoalCount = 10;
	
	-- ������ AI ų ��
	PhaseKillCount = 0;
	
end

--������ ���� ����
function PhaseAdd()

	ruleArg = RULE:GetArg();
	u32PhaseCheck = u32PhaseCheck + 1;
	ruleArg:SetLU32( "PHASE_ID", u32PhaseCheck );

end

--������ ���� �̵�
function PhaseGoto( phaseNumber )

	ruleArg = RULE:GetArg();
	u32PhaseCheck = phaseNumber;
	ruleArg:SetLU32( "PHASE_ID", u32PhaseCheck );

end

-----------------------------------------------------------------------------------------------------------------------
-- �̼��� �����ؾ� �ϴ��� üũ
-----------------------------------------------------------------------------------------------------------------------
function CheckMissionComplete()	
	
	if true == missionChecked then
		RULE:RemoveAllMonster();
		return;
	end
	
	ruleArg = RULE:GetArg();
	local missionMonsterCount	= ruleArg:GetLU32( "MissionMonsterCount" ); -- �ִ� ������ ������ �����´�.
	local accumKillCount 		= RULE:GetAccumKillCount();
	
	local missionTimeCount		= ruleArg:GetLU32( "MissionTimeCount" );
	local elapsedTime 			= RULE:GetElapsedTime();
	
	Print( string.format( "�̼� ���� ���� �ð� : %d , ���� �帥 �ð� : %d", missionTimeCount, elapsedTime ) );
	if missionTimeCount <= elapsedTime then
		--�̼� �ִ�ð� <= �帥�ð�
		RULE:MissionSuccess();
		missionChecked	= true;
		return;
	end

--[[
	if missionMonsterCount == accumKillCount then
		-- ���Ӽ���
		RULE:MissionSuccess();
		missionChecked	= true;
		return;
	end
	--]]
	
--[[	
	local actorHP				= RULE:GetMyActorHP();	
	if 0 >= actorHP then
		-- ���ӽ���
		RULE:MissionFail();
		missionChecked	= true;
		return;
	end
--]]
	
end
-----------------------------------------------------------------------------------------------------------------------
-- ���� ������ ���ڰ� �ִ���� ���� ���� ������ true
-----------------------------------------------------------------------------------------------------------------------
function IsMonsterSpawn()

	if true == missionChecked then
		return false;
	end
	
	currMonsterCount = RULE:GetCurrMonsterCount();

	if MAX_MONSTER_COUNT > currMonsterCount then
		return true;
	end

	return false;
end
-----------------------------------------------------------------------------------------------------------------------
-- ���� ���Ͱ� ����Ǿ� �ϴ� ������ ����ϴ� �Լ�.(��ǥ ��ü�� �̻����� ai�� �ѷ����� �̽�)
-----------------------------------------------------------------------------------------------------------------------
function CalcMonsterSpawnCount()

	currMonsterCount 			= RULE:GetCurrMonsterCount();
	
	local todoCount				= PhaseGoalCount - PhaseKillCount;
	
	if MAX_MONSTER_COUNT <= todoCount then		-- �ִ�� �Ѹ��� ������ ���� ��ǥġ�� �� ũ��
		return MAX_MONSTER_COUNT - currMonsterCount;
	else		
		return math.max( todoCount - currMonsterCount, 0 );	-- ���߿� ū ���� ��ȯ�Ѵ�.
	end
	
	return 0;
end

-----------------------------------------------------------------------------------------------------------------------
	--����, ����Ÿ��, ��, ������ġ, ��ġ�� ������X, ��ġ�� ������y,
	--Ÿ�Ժ��н���뿩��, Ÿ�Ժ��н���뿩��, Ÿ�Ժ��н���뿩��
-----------------------------------------------------------------------------------------------------------------------
function MonsterSpawn( iCount, iMonsterType, iTeam, iSpawnIndex, fOffsetX, fOffsetZ, isSimplePath, isNormalPath, isDiffcultPath )
	
	for index = 1, iCount, 1 do
		RULE:MonsterSpawn( iMonsterType, iTeam, iSpawnIndex, fOffsetX, fOffsetZ, isSimplePath, isNormalPath, isDiffcultPath );
	end

end

-- ù��° ������Ʈ���� ����Ǵ� �Լ�.
function FirstUpdate()

	-- Ʈ���ŷ� �̺�Ʈ�� ������( in Ʈ���ŷ� ���� �̺�Ʈ �� ), �ٷ� Ʈ���ŷ� ����
	RULE:LuaTriggerNotify(NI_START);

end

function WeaponDrop()
end

function ItemDrop()
end

-----------------------------------------------------------------------------------------------------------------------
--��� ���
-----------------------------------------------------------------------------------------------------------------------
function UpdateGenocide( uiTimeDelta )

	CheckMissionComplete();
	
	if false == IsMonsterSpawn() then
		return
	end		
	
	local killCountByOneAttack	= RULE:GetKillByOneAttack();
	local elapsedTime 			= RULE:GetElapsedTime();
	local accumKillCount 		= RULE:GetAccumKillCount();
	local killComboCount		= RULE:GetKillComboCount();	
	local currWeaponType		= RULE:GetCurrWeaponType();
	local actorHP				= RULE:GetMyActorHP();	
	
	local deltaCount			= CalcMonsterSpawnCount();
	
	--local missionMonsterCount	= ruleArg:GetLU32( "MissionMonsterCount" ); -- �ִ� ������ ������ �����´�.
	local missionTimeCount		= ruleArg:GetLU32( "MissionTimeCount" );	
	
	if isKnightSpawn == true then
		MonsterSpawn( 1, 1202, TEAM_BETA, math.random(  8, 9 ), 100, 100, true, false, false );
		MonsterSpawn( 1, 1202, TEAM_BETA, math.random( 18, 23 ), 100, 100, true, false, false );
		isKnightSpawn = false;
		deltaCount = deltaCount - 1;
	end
		
	for count = 1, deltaCount do --���۰�, ��ǥ��, (������, �Ⱦ��� 1)
		MonsterSpawn( 1, 1002, TEAM_BETA, math.random( 18, 23 ), 100, 100, true, false, false );
		
--[[		if( math.random(0,1) == 0) then
			MonsterSpawn( 1, 1002, TEAM_BETA, math.random( 0, 5 ), 100, 100, true, false, false );
		else
			MonsterSpawn( 1, 1012, TEAM_BETA, math.random( 0, 5 ), 100, 100, true, false, false );
		end
--]]		
	end
	
	--MonsterSpawn( MAX_MONSTER_COUNT - currMonsterCount, 1000, TEAM_BETA, 0, 100, 100, true, false, false );
	
end
 
-----------------------------------------------------------------------------------------------------------------------
--������ ���
-----------------------------------------------------------------------------------------------------------------------
 
function UpdateChallange( uiTimeDelta ) 

	CheckMissionComplete();

	if u32PhaseCheck == 1 then
		MonsterSpawn( 1, 1002, TEAM_BETA, 0, 100, 100, true, false, false );
		MonsterSpawn( 1, 1002, TEAM_BETA, 1, 100, 100, true, false, false );
		MonsterSpawn( 1, 1002, TEAM_BETA, 2, 100, 100, true, false, false );
		MonsterSpawn( 1, 1002, TEAM_BETA, 3, 100, 100, true, false, false );
		MonsterSpawn( 1, 1002, TEAM_BETA, 4, 100, 100, true, false, false );
		MonsterSpawn( 1, 1002, TEAM_BETA, 5, 100, 100, true, false, false );
		PhaseAdd(); -- ������2��
		
	elseif u32PhaseCheck == 3 then
		MonsterSpawn( 1, 1002, TEAM_BETA, 0, 100, 100, true, false, false );
		MonsterSpawn( 1, 1002, TEAM_BETA, 1, 100, 100, true, false, false );
		MonsterSpawn( 1, 1002, TEAM_BETA, 2, 100, 100, true, false, false );
		MonsterSpawn( 1, 1002, TEAM_BETA, 3, 100, 100, true, false, false );
		MonsterSpawn( 1, 1002, TEAM_BETA, 4, 100, 100, true, false, false );
		MonsterSpawn( 1, 1002, TEAM_BETA, 5, 100, 100, true, false, false );
		PhaseAdd(); -- ������4��
		
	end
end

function Update( uiTimeDelta )
	
	UpdateGenocide( uiTimeDelta ); --������ or ������ ��� 
 
end

-----------------------------------------------------------------------------------------------------------------------
	--Ʈ���ſ��� ���α׷��� ���� ȣ���ؼ� ���� �������ش�.
-----------------------------------------------------------------------------------------------------------------------
function OnNotify( notifyID )

	if notifyID == 2 then
		MonsterSpawn( 1, 1202, TEAM_BETA, 0, 100, 100, true, false, false );
	end
end

-------------------------------------------------------------------------------------------------------------------
--	���Ͱ� �Ѹ��� ���� �� ���� ������ �Լ�
-------------------------------------------------------------------------------------------------------------------
function RemoveMonster( monster )
	
	if true == missionChecked then
		return;
	end
	
	PhaseKillCount = PhaseKillCount + 1;
	
	if PhaseGoalCount == PhaseKillCount then		
		PhaseGoalCount = 0;
		PhaseKillCount = 0;	
		local accumKillCount 		= RULE:GetAccumKillCount();
		local missionMonsterCount	= ruleArg:GetLU32( "MissionMonsterCount" ); -- �ִ� ������ ������ �����´�.	
		
		if missionMonsterCount ~= accumKillCount then			
			if u32PhaseCheck == 1 then
				isKnightSpawn = true;
				PhaseGoalCount = 1;
				PhaseGoto( 2 );
			elseif u32PhaseCheck == 2 then			
				PhaseGoalCount = math.min(10, missionMonsterCount - accumKillCount );			
				isKnightSpawn = false;
				PhaseGoto( 1 );  
			end
		end	
		
	end	
	
	--[[
	monArg = monster:GetArg();
			
	-- local strNameKey 	= monArg:GetLStr( "NameKey" );		-- monster_status.xml �� name_key �� ���ڿ��� ��ȯ
	-- local strGroupKey 	= monArg:GetLStr( "GroupKey" );		-- monster_status.xml �� monster_group_key �� ���ڿ��� ��ȯ
	
	-- �̹��� ���� ������ ����Ű���� �����ش�.
	local strMonsterKey	= monArg:GetLStr( "MonsterKey" );	-- monster_status.xml �� monster_key �� ���ڿ��� ��ȯ
	
	ruleArg = RULE:GetArg();
	
	local aiKillCount = ruleArg:GetLU32( strMonsterKey );	-- ������� ���� ���������� ī��Ʈ�� �����´�.
	aiKillCount = aiKillCount + 1;							-- �̹��� ���� ���� 1������ ī��Ʈ�� �߰��Ѵ�.
	ruleArg:SetLU32( strMonsterKey, aiKillCount );			-- �߰��� ī��Ʈ�� ����.

	aiKillCount = ruleArg:GetLU32( "1002" );
	if 79 == aiKillCount then
		PhaseAdd(); 
		isKnightSpawn = true;
		ruleArg:SetLU32( "1002", 0 );
	end
	--]]
	
end