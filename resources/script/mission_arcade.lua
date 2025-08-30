--[[
	프로그램에서 호출을 하고 있어서 스크립트에서 꼭 있어야 하는 함수들	
	없으면 에러가 남.
	
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
	RULE 에서 사용가능한 공통함수
	
	GetCurrMonsterCount();					-- 현재 맵에 있는 몬스터의 수
	GetAccumKillCount();					-- 현재까지 죽인 몬스터의 누적 숫
	GetKillComboCount();					-- 연속킬 콤보 카운트
	GetCurrWeaponType();					-- 현재 유저의 무기 타입
	GetKillByOneAttack();					-- 한번의 공격으로 죽인 몬스터의 수
	GetElapsedTime();						-- 현재까지 흐른 시간
	GetMyActorHP();							-- 본인의 HP
	MonsterSpawn( 몬스터타입, 팀, 스폰위치, 위치의 랜덤값X, 위치의 랜덤값y, 타입별패스사용여부, 타입별패스사용여부, 타입별패스사용여부); -- 몬스터를 생성함
	MissionSuccess();						-- 미션 성공
	MissionFail();							-- 미션 실패
	LuaTriggerNotify();						-- 트리거로 이벤트를 보낸다( in 트리거로 보낼 이벤트 값 ), 바로 트리거로 날라감	
	GetArg();								-- Arg를 반환한다. Arg사용은 MonsterAI_Constants.lua 참고
	
	-- defense 에서만 가능한 함수
	
	-- genocide 에서만 가능한 함수
	SetUpdateScriptTime( u32 uiUpdateTime );	-- lua 파일의 업데이트 주기를 설정.
	SetKillComboTime( u32 uiUpdateTime );		-- 킬 콤보를 체크할 단위 시간을 설정.
	SetKillByOneAttackTime( u32 uiUpdateTime );	-- 한번 공격으로 체크할 단위 시간을 설정.	
	
]]--

require "Resources/Script/mission_trigger_spydagger.lua"
require "Resources/Script/mission_trigger_plasma_sword.lua"
require "Resources/Script/mission_trigger_shooting.lua"

--[[
	몬스터 타입은 xml/monster_status.xml 을 참고할 것.
]]--

TEAM_ALPHA	= 1;
TEAM_BETA	= 2;
	
-------------------------------------------------------------------------------------------------------------------------------
	--스크립트내에서 사용될 변수등을 초기화 하는 함수
	--프로그램에서 스크립트를 로드한 뒤에 바로 호출된다.
-------------------------------------------------------------------------------------------------------------------------------
function Initialize()

	--필드 출현 최대 몹 수
	MAX_MONSTER_COUNT 	= 1;
	
	--현재 출현 몹 수
	currMonsterCount 	= 0;	
	
	-- 미션 완료 여부 체크
	missionChecked		= false;
		
	-- 스크립트 업데이트 시간
	RULE:SetUpdateScriptTime( 500 );
	
	-- 킬콤보 체크시간
	RULE:SetKillComboTime( 2000 );
	
	-- 한번 공격 체크시간( 실제 공격으로 체크하기엔 애매해서 일단은 시간으로 )
	RULE:SetKillByOneAttackTime( 100 );

	-- 70개 까지 Push 가능함.
	ruleArg = RULE:GetArg();
	ruleArg:PushLU32( "1002", 0 );		-- monster_status.xml 의 monster_key을 사용. 폰
	ruleArg:PushLU32( "1012", 0 );		-- monster_status.xml 의 monster_key을 사용. 폰
	ruleArg:PushLU32( "1202", 0 );		-- monster_status.xml 의 monster_key을 사용. 나이트
	ruleArg:PushLU32( "PHASE_ID", 1 );	-- 페이즈카운트
	ruleArg:PushLU32( "MissionTimeCount", 0 );
	
	-- 최대 목표 몬스터 갯수 셋팅( Push는 프로그램에서 해주고 있음 )
	ruleArg:SetLU32( "MissionMonsterCount", 5000 );

	-- 페이즈 시작
	u32PhaseCheck = 1;
	
	--나이트 스폰 (출현 페이즈때 true)
	isKnightSpawn = false;
	
	-- 각 페이즈 목표
	PhaseGoalCount = 20;
	
	-- 페이즈 AI 킬 수
	PhaseKillCount = 0;
	
end


-------------------------------------------------------------------------------------------------------------------------------
-- 미션을 종료해야 하는지 체크
-------------------------------------------------------------------------------------------------------------------------------
function CheckMissionComplete()	
	
	if true == missionChecked then
		return;
	end
	
	ruleArg = RULE:GetArg();
	local missionMonsterCount	= ruleArg:GetLU32( "MissionMonsterCount" ); -- 최대 몬스터의 갯수를 가져온다.
	local accumKillCount 		= RULE:GetAccumKillCount();
	
	if missionMonsterCount <= accumKillCount then
		-- 게임성공
		RULE:MissionSuccess();
		missionChecked	= true;
		return;
	end
	
--[[
	local actorHP				= RULE:GetMyActorHP();	
	if 0 >= actorHP then
		-- 게임실패
		RULE:MissionFail();
		missionChecked	= true;
		return;
	end
]]--
	
end

-------------------------------------------------------------------------------------------------------------------------------
-- 현재 몬스터의 숫자가 최대출력 숫자 보다 적으면 true
-------------------------------------------------------------------------------------------------------------------------------
function IsMonsterSpawn()

	currMonsterCount = RULE:GetCurrMonsterCount();

	if MAX_MONSTER_COUNT > currMonsterCount then
		return true;
	end

	return false;
end

-----------------------------------------------------------------------------------------------------------------------
-- 현재 몬스터가 충원되야 하는 갯수를 계산하는 함수.(목표 개체수 이상으로 ai가 뿌려지는 이슈)
-----------------------------------------------------------------------------------------------------------------------
function CalcMonsterSpawnCount()

	currMonsterCount 			= RULE:GetCurrMonsterCount();
	
	local todoCount				= PhaseGoalCount - PhaseKillCount;
	
	if MAX_MONSTER_COUNT <= todoCount then		-- 최대로 뿌리는 몹보다 남은 목표치가 더 크면
		return MAX_MONSTER_COUNT - currMonsterCount;
	else		
		return math.max( todoCount - currMonsterCount, 0 );	-- 둘중에 큰 값을 반환한다.
	end
	
	return 0;
end

-------------------------------------------------------------------------------------------------------------------------------
	--갯수, 몬스터타입, 팀, 스폰위치, 위치의 랜덤값X, 위치의 랜덤값y,
	--타입별패스사용여부, 타입별패스사용여부, 타입별패스사용여부
-------------------------------------------------------------------------------------------------------------------------------
function MonsterSpawn( iCount, iMonsterType, iTeam, iSpawnIndex, fOffsetX, fOffsetZ, isSimplePath, isNormalPath, isDiffcultPath )
	
	for index = 1, iCount, 1 do
		RULE:MonsterSpawn( iMonsterType, iTeam, iSpawnIndex, fOffsetX, fOffsetZ, isSimplePath, isNormalPath, isDiffcultPath );
	end

end

-------------------------------------------------------------------------------------------------------------------------------
-- 첫번째 업데이트에서 실행되는 함수.
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
	
	local missionMonsterCount	= ruleArg:GetLU32( "MissionMonsterCount" ); -- 최대 몬스터의 갯수를 가져온다.
	
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
	--트리거에서 프로그램을 통해 호출해서 값을 전달해준다.
-----------------------------------------------------------------------------------------------------------------------
function OnNotify( notifyID )

	if notifyID == 2 then
		--MonsterSpawn( 1, 1202, TEAM_BETA, 0, 100, 100, true, false, false );
	end
end

-------------------------------------------------------------------------------------------------------------------
--	몬스터가 한마리 죽을 때 마다 들어오는 함수
-------------------------------------------------------------------------------------------------------------------
function RemoveMonster( monster )
	
end