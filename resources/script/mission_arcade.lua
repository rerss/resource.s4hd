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
	
]]--

require "Resources/Script/mission_trigger_spydagger.lua"
require "Resources/Script/mission_trigger_plasma_sword.lua"
require "Resources/Script/mission_trigger_shooting.lua"

--[[
	���� Ÿ���� xml/monster_status.xml �� ������ ��.
]]--

TEAM_ALPHA	= 1;
TEAM_BETA	= 2;
	
-------------------------------------------------------------------------------------------------------------------------------
	--��ũ��Ʈ������ ���� �������� �ʱ�ȭ �ϴ� �Լ�
	--���α׷����� ��ũ��Ʈ�� �ε��� �ڿ� �ٷ� ȣ��ȴ�.
-------------------------------------------------------------------------------------------------------------------------------
function Initialize()

	--�ʵ� ���� �ִ� �� ��
	MAX_MONSTER_COUNT 	= 1;
	
	--���� ���� �� ��
	currMonsterCount 	= 0;	
	
	-- �̼� �Ϸ� ���� üũ
	missionChecked		= false;
		
	-- ��ũ��Ʈ ������Ʈ �ð�
	RULE:SetUpdateScriptTime( 500 );
	
	-- ų�޺� üũ�ð�
	RULE:SetKillComboTime( 2000 );
	
	-- �ѹ� ���� üũ�ð�( ���� �������� üũ�ϱ⿣ �ָ��ؼ� �ϴ��� �ð����� )
	RULE:SetKillByOneAttackTime( 100 );

	-- 70�� ���� Push ������.
	ruleArg = RULE:GetArg();
	ruleArg:PushLU32( "1002", 0 );		-- monster_status.xml �� monster_key�� ���. ��
	ruleArg:PushLU32( "1012", 0 );		-- monster_status.xml �� monster_key�� ���. ��
	ruleArg:PushLU32( "1202", 0 );		-- monster_status.xml �� monster_key�� ���. ����Ʈ
	ruleArg:PushLU32( "PHASE_ID", 1 );	-- ������ī��Ʈ
	ruleArg:PushLU32( "MissionTimeCount", 0 );
	
	-- �ִ� ��ǥ ���� ���� ����( Push�� ���α׷����� ���ְ� ���� )
	ruleArg:SetLU32( "MissionMonsterCount", 5000 );

	-- ������ ����
	u32PhaseCheck = 1;
	
	--����Ʈ ���� (���� ����� true)
	isKnightSpawn = false;
	
	-- �� ������ ��ǥ
	PhaseGoalCount = 20;
	
	-- ������ AI ų ��
	PhaseKillCount = 0;
	
end


-------------------------------------------------------------------------------------------------------------------------------
-- �̼��� �����ؾ� �ϴ��� üũ
-------------------------------------------------------------------------------------------------------------------------------
function CheckMissionComplete()	
	
	if true == missionChecked then
		return;
	end
	
	ruleArg = RULE:GetArg();
	local missionMonsterCount	= ruleArg:GetLU32( "MissionMonsterCount" ); -- �ִ� ������ ������ �����´�.
	local accumKillCount 		= RULE:GetAccumKillCount();
	
	if missionMonsterCount <= accumKillCount then
		-- ���Ӽ���
		RULE:MissionSuccess();
		missionChecked	= true;
		return;
	end
	
--[[
	local actorHP				= RULE:GetMyActorHP();	
	if 0 >= actorHP then
		-- ���ӽ���
		RULE:MissionFail();
		missionChecked	= true;
		return;
	end
]]--
	
end

-------------------------------------------------------------------------------------------------------------------------------
-- ���� ������ ���ڰ� �ִ���� ���� ���� ������ true
-------------------------------------------------------------------------------------------------------------------------------
function IsMonsterSpawn()

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

-------------------------------------------------------------------------------------------------------------------------------
	--����, ����Ÿ��, ��, ������ġ, ��ġ�� ������X, ��ġ�� ������y,
	--Ÿ�Ժ��н���뿩��, Ÿ�Ժ��н���뿩��, Ÿ�Ժ��н���뿩��
-------------------------------------------------------------------------------------------------------------------------------
function MonsterSpawn( iCount, iMonsterType, iTeam, iSpawnIndex, fOffsetX, fOffsetZ, isSimplePath, isNormalPath, isDiffcultPath )
	
	for index = 1, iCount, 1 do
		RULE:MonsterSpawn( iMonsterType, iTeam, iSpawnIndex, fOffsetX, fOffsetZ, isSimplePath, isNormalPath, isDiffcultPath );
	end

end

-------------------------------------------------------------------------------------------------------------------------------
-- ù��° ������Ʈ���� ����Ǵ� �Լ�.
-------------------------------------------------------------------------------------------------------------------------------
function FirstUpdate()

	RULE:LuaTriggerNotify(NI_START);

end

function WeaponDrop()
end

function ItemDrop()
end



function Update( uiTimeDelta )
	
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
	
	local missionMonsterCount	= ruleArg:GetLU32( "MissionMonsterCount" ); -- �ִ� ������ ������ �����´�.
	
	MonsterSpawn( 1, 1200, TEAM_BETA, 0, 100, 100, true, false, false );
	MonsterSpawn( 1, 1000, TEAM_BETA, 10, 100, 100, true, false, false ); 
	MonsterSpawn( 1, 1000, TEAM_BETA, 11, 100, 100, true, false, false );
	MonsterSpawn( 1, 1000, TEAM_BETA, 12, 100, 100, true, false, false );
	MonsterSpawn( 1, 1000, TEAM_BETA, 13, 100, 100, true, false, false );
	MonsterSpawn( 1, 1000, TEAM_BETA, 14, 100, 100, true, false, false );
	MonsterSpawn( 1, 1000, TEAM_BETA, 15, 100, 100, true, false, false ); 
	MonsterSpawn( 1, 1000, TEAM_BETA, 16, 100, 100, true, false, false );
	MonsterSpawn( 1, 1000, TEAM_BETA, 17, 100, 100, true, false, false );

						
	--MonsterSpawn( MAX_MONSTER_COUNT - currMonsterCount, 1000, TEAM_BETA, 0, 100, 100, true, false, false );

end


-----------------------------------------------------------------------------------------------------------------------
	--Ʈ���ſ��� ���α׷��� ���� ȣ���ؼ� ���� �������ش�.
-----------------------------------------------------------------------------------------------------------------------
function OnNotify( notifyID )

	if notifyID == 2 then
		--MonsterSpawn( 1, 1202, TEAM_BETA, 0, 100, 100, true, false, false );
	end
end

-------------------------------------------------------------------------------------------------------------------
--	���Ͱ� �Ѹ��� ���� �� ���� ������ �Լ�
-------------------------------------------------------------------------------------------------------------------
function RemoveMonster( monster )
	
end