require "Resources/Script/MonsterAI_Constants.lua"


-- 나이트 노멀형

-- AI_CONTROLLER

-- 산개형에서 사용하는 AI 상위 패턴
PATTERN_IDLE 		= 0;	-- 대기 상태
PATTERN_PURSUIT		= 1;	-- 추격 상태
PATTERN_RETURN		= 2;	-- 베이스로 복귀 상태
--[[
-- 모드 별 사용 AI 패턴 구분자
해당 내용은 모드 별로 
Resources/Script/MonsterAI_Constants.lua 참조
MONPATTERN_MISSION_RETURN	= 0;	-- 베이스를 인식하지 않으며, 유저 인식이 없으면 리스폰 포인트로 복귀
MONPATTERN_MISSION_ATTACK	= 1;	-- 베이스를 인식하지 않으며, 유저를 대상으로 계속 공격
MONPATTERN_DEFFNCE_ATTACK	= 2;	-- 베이스를 인식하며, 유저가 있으면 유저를 대상으로 공격하고, 유저가 없으면, 베이스로 들어감.
]]--
function Create( monster )
	
	CreateAttack1( monster );	-- 돌진 공격
	CreateAttack2( monster );	-- 찌르기 공격
	

	-- super armor
	
	state = monster:GetMonsterState( MONINPUT_ATTACK_0 );
	if nil ~= state then
		state:SetSuperArmor( true );	
	end
	
	state = monster:GetMonsterState( MONSTATE_NORMAL );
	if nil ~= state then
		state:SetSuperArmor( true );	
	end
	
	state = monster:GetMonsterState( MONSTATE_RUN );
	if nil ~= state then
		state:SetSuperArmor( true );
	end
	
	state = monster:GetMonsterState( MONSTATE_DAMAGE );
	if nil ~= state then
		state:SetSuperArmor( true );	
	end
	
	state = monster:GetMonsterState( MONSTATE_BLOW );
	if nil ~= state then
		state:SetSuperArmor( true );	
	end
	
	SetAnimation( monster );
	
	-- death state
	-- deathState = monster:GetMonsterState( MONSTATE_DEATH );
	-- deathState:SetMoveBoxMultiplier( 5.0 );
	
	SetAnimation( monster );
	
	monster:ChangeMonsterState( MONSTATE_NORMAL );

	
	-- 20개까지 버퍼를 추가 할 수 있음
	Arg = monster:GetArg();	
	
	Arg:PushLStr( "TargetBase", "beta_safezone_00" );	--베이스를 사용할 수 있도록 버퍼를 만듬.
	Arg:PushLU32( "Pattern", PATTERN_IDLE );	-- 상위 패턴을 사용할 수 있도록 버퍼를 만들고, 최초 생성 시 상위 패턴은 대기 상태로 설정
	Arg:PushLFloat( "AreaDistance", 2000 );		-- 리스폰 위치와의 거리의 버퍼를 만들고, 리스폰 위치와의 거리를 2000으로 설정
	
end

function CreateAttack1( monster )	--돌진 공격, 노멀에서는 사용하지 않음.
		
	-- create state
	attackState = CreateAttackState( monster, MONINPUT_ATTACK_0, 2500); -- 몬스터, 공격상태인덱스, 상태지속시간 3000
	attackState:SetMoveBoxMultiplier( 1.5 );
	attackState:SetAnimationSpeed( 1.1 );
	
	-- create attacks
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_1, 300, 15, 0 );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 600, 600, 600 ), 1, 1, false  );
	--Attack1:SetCameraShakeEnable( true, true, 0 );  
	Attack1:AddPushCondition( 100, 2000, -5000 );
	--Attack1:AddPushCondition( 400, 3000, -5000 );
	-- Attack1:AddBlowCondition( 2600, 2000 );	
    attackState:AddAttack( Attack1 );
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_1, 1000, 15, 0 );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,150,0), MAKEVECTOR3(0,0,-1), 400*1, 400*0.75, 400*1.5 ), 1, 1, false  );
	--Attack1:SetCameraShakeEnable( true, true, 0 );  
	Attack2:AddPushCondition( 100, 2000, -5000 );
	--Attack1:AddPushCondition( 400, 3000, -5000 );
	-- Attack1:AddBlowCondition( 2600, 2000 );	
    attackState:AddAttack( Attack2 );
    
    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_1, 1200, 15, 0 );
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,150,0), MAKEVECTOR3(0,0,-1), 500*1, 500*0.75, 500*1.5), 1, 1, false  )
    --Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack3:AddPushCondition( 100, 2000, -5000 );
	--Attack2:AddBlowCondition( 2600, 2000 );	    
    attackState:AddAttack( Attack3 );
    
    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_1, 1400, 15, 0 );
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,150,0), MAKEVECTOR3(0,0,-1), 500*1, 500*0.75, 500*1.5 ), 1, 1, false  );
    --Attack3:SetCameraShakeEnable( true, true, 0 );    
	Attack4:AddPushCondition( 100, 2000, -5000 );
	--Attack1:AddBlowCondition( 2600, 2000 );	
    attackState:AddAttack( Attack4 );
	
	Attack5 = CreateCAttack();
    Attack5:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_2, 1800, 15, 0 );
    Attack5:InitAttack2( MAKEBOX( MAKEVECTOR3(0,350,0), MAKEVECTOR3(0,0,-1), 500*1, 500*0.75, 500*1.5), 1, 1, false  );
    --Attack4:SetCameraShakeEnable( true, true, 0 );    
	Attack4:AddPushCondition( 100, 2000, -5000 );
	--Attack4:AddBlowCondition( 2000, 2000 );	
    attackState:AddAttack( Attack5 );
	
	Attack6 = CreateCAttack();
    Attack6:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_1, 2000, 30, 0 );
    Attack6:InitAttack2( MAKEBOX( MAKEVECTOR3(0,150,0), MAKEVECTOR3(0,0,-1), 500*1.5, 500*0.75, 500*2.0 ), 1, 1, false  );
    --Attack4:SetCameraShakeEnable( true, true, 0 );    
	--Attack4:AddPushCondition( 400, 3000, -5000 );
	Attack6:AddBlowCondition( 2000, 2000 );	
    attackState:AddAttack( Attack6 );

	-- add state
		
	monster:AddState( MONINPUT_ATTACK_0, attackState );

end

function CreateAttack2( monster )
		
	-- create state
	attackState = CreateAttackState( monster, MONINPUT_ATTACK_1, 800); -- 몬스터, 공격상태인덱스, 상태지속시간 3000
	attackState:SetMoveBoxMultiplier( 1.5 );
	-- attackState:SetAnimationSpeed( 1.1 );
	
	-- create attacks
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_1, 200, 10, 0 );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,0), MAKEVECTOR3(0,0,-1), 400*1, 300, 600 ), 1, 1, false  );
	--Attack1:SetCameraShakeEnable( true, true, 0 );  
	Attack1:AddPushCondition( 75, 2000, -5000 );
	--Attack1:AddPushCondition( 400, 3000, -5000 );
	-- Attack1:AddBlowCondition( 2600, 2000 );	
    attackState:AddAttack( Attack1 );
	
	Attack2 = CreateCAttack();
	Attack2:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_2, 370, 10, 0 );
	Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0, 180,0), MAKEVECTOR3(0,0,-1), 400*1, 300, 600 ), 1, 1, false  );
	--Attack1:SetCameraShakeEnable( true, true, 0 );  
	Attack2:AddPushCondition( 75, 2000, -5000 );
	--Attack1:AddPushCondition( 400, 3000, -5000 );
	-- Attack1:AddBlowCondition( 2600, 2000 );	
	attackState:AddAttack( Attack2 );
    
	-- add state
		
	monster:AddState( MONINPUT_ATTACK_1, attackState );

end

	
function SetAnimation( monster )	-- 애니메이션 등록
	state = monster:GetMonsterState( MONSTATE_NORMAL );
	if nil ~= state then
		state:SetAnimtionBlend( "00000_1", true, 100, 100, true, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
	end
	
	state = monster:GetMonsterState( MONSTATE_RUN );
	if nil ~= state then
		state:SetAnimtionBlend( "BASE", true, 100, 100, true, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
	end
	
	state = monster:GetMonsterState( MONSTATE_DAMAGE );
	if nil ~= state then
		state:SetAnimtionBlend( "00002", false, 100, 100, false, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
		state:AddSound( 200, "Resources/Sound/challenge_arcade/AI_damage.ogg" );
	end
	
	state = monster:GetMonsterState( MONSTATE_BLOW );
	if nil ~= state then
		state:SetAnimtionBlend( "00004", true, 100, 100, true, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
	end
	
	state = monster:GetMonsterState( MONSTATE_DEATH );
	if nil ~= state then
		state:SetAnimtionBlend( "00001", false, 100, 100, false, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
		state:AddSound( 200, "Resources/Sound/challenge_arcade/destroy.ogg" );
	end
		
	state = monster:GetMonsterState( MONSTATE_ATTACK_0 );
	if nil ~= state then
		state:SetAnimtionBlend( "00003", false, 100, 100, false, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
		state:AddSound( 200, "Resources/Sound/challenge_arcade/unique_knight_rush.ogg" );
	end
	
	state = monster:GetMonsterState( MONSTATE_ATTACK_1 );
	if nil ~= state then
		state:SetAnimtionBlend( "00003_1", false, 100, 100, false, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
	end
	
	state = monster:GetMonsterState( MONSTATE_ATTACK_2 );
	if nil ~= state then
		state:SetAnimtionBlend( "00003", false, 100, 100, false, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
	end
	
	state = monster:GetMonsterState( MONSTATE_PRE_FASTRUN );
	if nil ~= state then
		state:SetAnimtionBlend( "00005", true, 100, 100, true, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
	end
	
	state = monster:GetMonsterState( MONSTATE_FASTRUN ); -- 00006, 00006_1 이 랜덤으로 적용된다.
	if nil ~= state then
		state:SetAnimtionBlend( "00006", true, 100, 100, true, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
		end
end



function FirstUpdate( monster )
end

function MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, moveSpeedMultiplier )	--이동에 사용하는 함수
	
	monster:SetMoveType( MONMOVE_WAYPOINT );	--MONMOVE_WAYPOINT 웨이포인트 이동 방식 사용
			
	if monster:FindPath( vNewPos, vEndPos ) then
	--{
		monster:SetWaitTime( INTERVAL_UPDATE_TIME );	--해당 함수 실행 후 INTERVAL_UPDATE_TIME 만큼 대기
		-- monster:UpdateHost( timeDelta );
		AI_CONTROLLER:RegisterReservedCommand( CreateMoveToCommand( GAMETIME+ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), moveSpeedMultiplier ) );
	--}	
	else
	--{
		monster:SetWaitTime( 500 );	-- 적합한 길을 찾지 못할 경우 500 만큼 기다림
	--}
	end
	
end

-- 대기상태일 때 사용되는 함수
function FuncIdle( timeDelta, monster )
	
	Arg = monster:GetArg();
	
	if mainPattern ~= MONPATTERN_MISSION_PUPPET then	-- 미션_허수아비 형일 경우 유저 인식을 하지 않음.
		if nil ~= nearActor then	--유저가 인식 범위에 있을 경우
			Arg:SetLU32( "Pattern", PATTERN_PURSUIT );		-- 추격 패턴으로 전환
		else						--유저가 인식 범위에 없을 경우
			if mainPattern ~= MONPATTERN_MISSION_RETURN then	--미션_복귀형이 아닐 경우
				Arg:SetLU32( "Pattern", PATTERN_RETURN );	-- 복귀 패턴으로 전환
			end
		end
	end
end

-- 추격상태일 때 사용되는 함수
function FuncPursuit( timeDelta, monster )
	
	Arg = monster:GetArg();
	
	
	if nil ~= nearActor then	--유저가 인식 범위에 있을 경우
		ActorCheck( timeDelta, monster );
	else						--유저가 인식 범위에 없을 경우
		Arg:SetLU32( "Pattern", PATTERN_RETURN );	-- 복귀 패턴으로 전환
	end
	
	if mainPattern == MONPATTERN_MISSION_RETURN then	--미션_복귀형일 경우
		AreaDistanceCheck( timeDelta, monster );		--리스폰 거리 체크 함수 실행
	end
	
	
end

-- 복귀상태일 때 사용되는 함수
function FuncReturn( timeDelta, monster )

	Arg = monster:GetArg();

	
	if mainPattern == MONPATTERN_MISSION_RETURN then	--미션_복귀형일 경우
	
		if false == IsReturn( timeDelta, monster ) then	--리스폰포인트와의 거리가 가까우면
			--ActorCheck( timeDelta, monster );	
			if nil ~= nearActor then					--유저가 인식 범위에 있을 경우
				Arg:SetLU32( "Pattern", PATTERN_PURSUIT );	--추적 패턴으로 전환
			end
		end
		
		local strSpawnBase = Arg:GetLStr( "SpawnBase" );	--해당 몬스터의 리스폰 위치 포인트의 이름을 받아옴.
		local vAreaPos 	= UTIL:GetAreaPos( strSpawnBase );	--리스폰 위치 포인트의 위치 정보를 받아옴.
		local vNewPos 	= MAKEVECTOR3( 0,0,0 );	
		MoveToWayPoint( monster, 0, vAreaPos, vNewPos, 4.0 );	--리스폰 위치로 이동
	elseif mainPattern ~= MONPATTERN_MISSION_RETURN then	--미션_복귀형이 아닐 경우
		--ActorCheck( timeDelta, monster );	
		if nil ~= nearActor then						--유저가 인식 범위에 있을 경우
			Arg:SetLU32( "Pattern", PATTERN_PURSUIT );	--추적 패턴으로 전환
		end
	
		local vNewPos 	= MAKEVECTOR3( 0,0,0 );
		
		if UTIL:IsSafeZoneEnable( "beta_safezone_00" ) then	--베이스가 있는지 체크 후 있으면
			local strTargetBase = Arg:GetLStr( "TargetBase" );
			vEndPos 	= UTIL:GetSafeAreaPos( strTargetBase );	--베이스의 위치 정보를 얻어옴.
			local distBySafeArea = UTIL:GetDistBySafeArea( monster, strTargetBase );	--몬스터와 베이스와의 거리를 얻어옴.
			--vEndPos = UTIL:GetSafeAreaPos( "beta_safezone_00" );
			MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, 1.0 );	--베이스 위치로 이동
		end
	end
	
end

--리스폰 위치로부터의 거리에 따라 true, false를 반환하는 함수
function IsReturn( timeDelta, monster )

	Arg = monster:GetArg();
	areaDistance 	= Arg:GetLFloat( "AreaDistance" );
	
	local strSpawnBase = Arg:GetLStr( "SpawnBase" );
	distanceByArea	= UTIL:GetDistByArea( monster, strSpawnBase );
	
	return distanceByArea > areaDistance;
	
end

-- 몬스터와 리스폰 위치와의 거리체크 함수
function AreaDistanceCheck( timeDelta, monster )
	
	Arg = monster:GetArg();
	if true == IsReturn( timeDelta, monster ) then	--리스폰 위치와 몬스터의 거리가 복귀 최소 거리 이상이면
		Arg:SetLU32( "Pattern", PATTERN_RETURN );	-- 복귀 패턴으로 전환
	end

end

-- 유저 검색함수
function ActorCheck( timeDelta, monster )
	Arg = monster:GetArg();
	--nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, true, false );
	
	--distBySafeArea = UTIL:GetDistBySafeArea( monster, "beta_safezone_00" );		
	--vEndPos = UTIL:GetSafeAreaPos( "beta_safezone_00" );
	--vNewPos = MAKEVECTOR3( 0,0,0 );
		
	if nearActor then	--유저가 인식 거리에 들어올 경우
	--{	
		monster:SetMoveType( MONMOVE_ACTOR );	--이동 방식은 액터 이동 방식
		monster:SetTargetActorID( nearActor:GetID() );
		distanceMonsterToActor = UTIL:GetDist( monster, nearActor );	--몬스터와 가장 가까운 플레이어의 거리를 구함.
		
		if attackMaxDistance > distanceMonsterToActor then
		--{
			-- 공격 가능 거리안에 들어올 경우, 공격 시작
			monster:SetWaitTime( 1000 ); --몬스터가 유저를 찾기 시작하는 시간
			AI_CONTROLLER:RegisterReservedCommand( CreateAttackCommand( GAMETIME+ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1(nearActor, monster) ) );
			
			-- 랜덤공격   UTIL:GetDirection2To1Rand( 유저, 몬스터,  width, height, 랜덤률( 높을 수록 유저에게 방향선택 ) )
			-- AI_CONTROLLER:RegisterReservedCommand( CreateAttackCommand( GAMETIME+ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1Rand(nearActor, monster, 400, 50, 2) ) );
		--}
		else
		--{
			-- 공격 가능 거리안에 들어오지 않은 경우, 유저 대상으로 이동
			monster:SetWaitTime( 100 );	--해당 함수 실행 후 100 동안 대기						
			AI_CONTROLLER:RegisterReservedCommand( CreateMoveToCommand( GAMETIME+ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), monster:GetRakeMoveSpeedRate() ) );
		--}
		end			
	--}
	end

			
end

function Update( timeDelta, monster )	
	
	Arg = monster:GetArg();
	strTargetBase	= Arg:GetLStr( "TargetBase" );
	currPattern 	= Arg:GetLU32( "Pattern" );
	mainPattern 	= Arg:GetLU32( "MainPattern" );	-- 모드 구분에 사용되는 AI 패턴 정보 불러오기
	
	baseFindDistance = 3000;		-- 베이스지역 찾는 거리
	
	if mainPattern == MONPATTERN_MISSION_ATTACK then
		userFindDistance = 10000;		-- 유저 찾는 거리
	else
		userFindDistance = 3000;		-- 유저 찾는 거리
	end
	
		
	-- 공격 가능 거리 		
	attackMaxDistance = 2000;		-- 공격 최대거리( 이 거리보다 멀면 공격하지 않고 유저에게 다가간다.)
	
	nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, false, false ); -- 5번째 파라메터 시야거리에 보이지 않아도 따라오게 하는 기능(false) 
	
	if PATTERN_IDLE == currPattern then			--현재 패턴이 대기 패턴일 경우 실행
		FuncIdle( timeDelta, monster );
	elseif PATTERN_PURSUIT == currPattern then	--현재 패턴이 추격 패턴일 경우 실행
		FuncPursuit( timeDelta, monster );
	elseif PATTERN_RETURN == currPattern then	--현재 패턴이 복귀 패턴일 경우 실행
		FuncReturn( timeDelta, monster );
	end


end
