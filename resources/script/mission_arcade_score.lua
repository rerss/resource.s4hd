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
	RemoveAllMonster()							-- 모든 몬스터를 죽임
	SetRoundLimitTime()						-- 제한시간 설정
]]--

--[[
	몬스터 타입은 xml/monster_status.xml 을 참고할 것.
]]--

TEAM_ALPHA	= 1;
TEAM_BETA	= 2;

-----------------------------------------------------------------------------------------------------------------------
	--스크립트내에서 사용될 변수등을 초기화 하는 함수
	--프로그램에서 스크립트를 로드한 뒤에 바로 호출된다.
-----------------------------------------------------------------------------------------------------------------------
function Initialize()
	
	--필드 출현 최대 몹 수
	MAX_MONSTER_COUNT 	= 6;
	
	--현재 출현 몹 수
	currMonsterCount 	= 0;	
	
	-- 미션 완료 여부 체크
	missionChecked		= false;
	
	-- 스크립트 업데이트 시간
	RULE:SetUpdateScriptTime( 500 );
	
	-- 킬콤보 체크시간
	RULE:SetKillComboTime( 1500 );
	
	-- 한번 공격 체크시간( 실제 공격으로 체크하기엔 애매해서 일단은 시간으로 )
	RULE:SetKillByOneAttackTime( 100 );

	-- 70개 까지 Push 가능함.
	ruleArg = RULE:GetArg();
	ruleArg:PushLU32( "1002", 0 );		-- monster_status.xml 의 monster_key을 사용. 폰
	ruleArg:PushLU32( "1012", 0 );		-- monster_status.xml 의 monster_key을 사용. 폰
	ruleArg:PushLU32( "1202", 0 );		-- monster_status.xml 의 monster_key을 사용. 나이트
	ruleArg:PushLU32( "PHASE_ID", 1 );	-- 페이즈카운트
	
	-- 제한시간 설정		( xml에 설정되어진 값으로 등록함! )
	RULE:SetRoundLimitTime();
	
	-- 최대 목표 몬스터 갯수 셋팅( Push는 프로그램에서 해주고 있음 )
	ruleArg:SetLU32( "MissionMonsterCount", 5000 );

	-- 페이즈 시작
	u32PhaseCheck = 1;
	
	--나이트 스폰 (출현 페이즈때 true)
	isKnightSpawn = false;
	
	-- 각 페이즈 목표
	PhaseGoalCount = 200;
	
	-- 페이즈 AI 킬 수
	PhaseKillCount = 0;
	
end

--페이즈 순차 증가
function PhaseAdd()

	ruleArg = RULE:GetArg();
	u32PhaseCheck = u32PhaseCheck + 1;
	ruleArg:SetLU32( "PHASE_ID", u32PhaseCheck );

end

--페이즈 강제 이동
function PhaseGoto( phaseNumber )

	ruleArg = RULE:GetArg();
	u32PhaseCheck = phaseNumber;
	ruleArg:SetLU32( "PHASE_ID", u32PhaseCheck );

end

-----------------------------------------------------------------------------------------------------------------------
-- 미션을 종료해야 하는지 체크
-----------------------------------------------------------------------------------------------------------------------
function CheckMissionComplete()	
	
	if true == missionChecked then
		RULE:RemoveAllMonster();
		return;
	end
	
	ruleArg = RULE:GetArg();
	local missionMonsterCount	= ruleArg:GetLU32( "MissionMonsterCount" ); -- 최대 몬스터의 갯수를 가져온다.
	local accumKillCount 		= RULE:GetAccumKillCount();
	
	local missionTimeCount		= ruleArg:GetLU32( "MissionTimeCount" );
	local elapsedTime 			= RULE:GetElapsedTime();
	
	Print( string.format( "미션 종료 제한 시간 : %d , 현재 흐른 시간 : %d", missionTimeCount, elapsedTime ) );
	if missionTimeCount <= elapsedTime then
		--미션 최대시간 <= 흐른시간
		RULE:MissionSuccess();
		missionChecked	= true;
		return;
	end

--[[
	if missionMonsterCount == accumKillCount then
		-- 게임성공
		RULE:MissionSuccess();
		missionChecked	= true;
		return;
	end
	--]]
	
--[[	
	local actorHP				= RULE:GetMyActorHP();	
	if 0 >= actorHP then
		-- 게임실패
		RULE:MissionFail();
		missionChecked	= true;
		return;
	end
--]]
	
end
-----------------------------------------------------------------------------------------------------------------------
-- 현재 몬스터의 숫자가 최대출력 숫자 보다 적으면 true
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

-----------------------------------------------------------------------------------------------------------------------
	--갯수, 몬스터타입, 팀, 스폰위치, 위치의 랜덤값X, 위치의 랜덤값y,
	--타입별패스사용여부, 타입별패스사용여부, 타입별패스사용여부
-----------------------------------------------------------------------------------------------------------------------
function MonsterSpawn( iCount, iMonsterType, iTeam, iSpawnIndex, fOffsetX, fOffsetZ, isSimplePath, isNormalPath, isDiffcultPath )
	
	for index = 1, iCount, 1 do
		RULE:MonsterSpawn( iMonsterType, iTeam, iSpawnIndex, fOffsetX, fOffsetZ, isSimplePath, isNormalPath, isDiffcultPath );
	end

end

-- 첫번째 업데이트에서 실행되는 함수.
function FirstUpdate()

	-- 트리거로 이벤트를 보낸다( in 트리거로 보낼 이벤트 값 ), 바로 트리거로 날라감
	RULE:LuaTriggerNotify(NI_START);

end

function WeaponDrop()
end

function ItemDrop()
end

-----------------------------------------------------------------------------------------------------------------------
--충원 방식
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
	
	--local missionMonsterCount	= ruleArg:GetLU32( "MissionMonsterCount" ); -- 최대 몬스터의 갯수를 가져온다.
	local missionTimeCount		= ruleArg:GetLU32( "MissionTimeCount" );	
	
	if isKnightSpawn == true then
		MonsterSpawn( 1, 1202, TEAM_BETA, math.random( 6, 7 ), 100, 100, true, false, false );
		isKnightSpawn = false;
		deltaCount = deltaCount - 1;
	end
		
	for count = 1, deltaCount do --시작값, 목표값, (증가값, 안쓰면 1)
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
--페이즈 방식
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
		PhaseAdd(); -- 페이즈2로
		
	elseif u32PhaseCheck == 3 then
		MonsterSpawn( 1, 1002, TEAM_BETA, 0, 100, 100, true, false, false );
		MonsterSpawn( 1, 1002, TEAM_BETA, 1, 100, 100, true, false, false );
		MonsterSpawn( 1, 1002, TEAM_BETA, 2, 100, 100, true, false, false );
		MonsterSpawn( 1, 1002, TEAM_BETA, 3, 100, 100, true, false, false );
		MonsterSpawn( 1, 1002, TEAM_BETA, 4, 100, 100, true, false, false );
		MonsterSpawn( 1, 1002, TEAM_BETA, 5, 100, 100, true, false, false );
		PhaseAdd(); -- 페이즈4로
		
	end
end

function Update( uiTimeDelta )
	
	UpdateGenocide( uiTimeDelta ); --충원방식 or 페이즈 방식 
 
end

-----------------------------------------------------------------------------------------------------------------------
	--트리거에서 프로그램을 통해 호출해서 값을 전달해준다.
-----------------------------------------------------------------------------------------------------------------------
function OnNotify( notifyID )

	if notifyID == 2 then
		MonsterSpawn( 1, 1202, TEAM_BETA, 0, 100, 100, true, false, false );
	end
end

-------------------------------------------------------------------------------------------------------------------
--	몬스터가 한마리 죽을 때 마다 들어오는 함수
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
		local missionMonsterCount	= ruleArg:GetLU32( "MissionMonsterCount" ); -- 최대 몬스터의 갯수를 가져온다.	
		
		if missionMonsterCount ~= accumKillCount then			
			if u32PhaseCheck == 1 then
				isKnightSpawn = true;
				PhaseGoalCount = 1;
				PhaseGoto( 2 );
			elseif u32PhaseCheck == 2 then			
				PhaseGoalCount = math.min(99, missionMonsterCount - accumKillCount );			
				isKnightSpawn = false;
				PhaseGoto( 1 );  
			end
		end	
		
	end	
	
	--[[
	monArg = monster:GetArg();
			
	-- local strNameKey 	= monArg:GetLStr( "NameKey" );		-- monster_status.xml 의 name_key 를 문자열로 반환
	-- local strGroupKey 	= monArg:GetLStr( "GroupKey" );		-- monster_status.xml 의 monster_group_key 를 문자열로 반환
	
	-- 이번에 죽은 몬스터의 몬스터키값을 돌려준다.
	local strMonsterKey	= monArg:GetLStr( "MonsterKey" );	-- monster_status.xml 의 monster_key 를 문자열로 반환
	
	ruleArg = RULE:GetArg();
	
	local aiKillCount = ruleArg:GetLU32( strMonsterKey );	-- 현재까지 죽은 몬스터종류의 카운트를 가져온다.
	aiKillCount = aiKillCount + 1;							-- 이번에 죽은 몬스터 1마리를 카운트에 추가한다.
	ruleArg:SetLU32( strMonsterKey, aiKillCount );			-- 추가한 카운트를 저장.

	aiKillCount = ruleArg:GetLU32( "1002" );
	if 79 == aiKillCount then
		PhaseAdd(); 
		isKnightSpawn = true;
		ruleArg:SetLU32( "1002", 0 );
	end
	--]]
	
end