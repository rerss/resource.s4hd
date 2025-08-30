require "Resources/Script/MonsterAI_Constants.lua"


-- 퀸 일반형

-- AI_CONTROLLER

-- 산개형에서 사용하는 AI 상위 패턴
PATTERN_IDLE 		= 0;	-- 대기 상태
PATTERN_PURSUIT		= 1;	-- 추격 상태
PATTERN_RETURN		= 2;	-- 베이스로 복귀 상태
--[[
-- 모드 별 사용 AI 패턴 구분자
해당 내용은 모드 별로 
Resources/Script/MonsterAI_Constants.lua 참조

]]--

-- 최초 몬스터 생성 시
function Create( monster )
	
	monster:CreateStealth();
	CreateAttack1( monster );	-- 근접 공격
	CreateAttack2( monster );	-- 원거리 공격
	
	-- death state
	-- deathState = monster:GetMonsterState( MONSTATE_DEATH );
	-- deathState:SetMoveBoxMultiplier( 5.0 );
	
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
	
	state = monster:GetMonsterState( MONINPUT_ATTACK_1 );
	if nil ~= state then
		state:SetSuperArmor( true );	
	end
	
	SetAnimation( monster );
	
	-- 20개까지 버퍼를 추가 할 수 있음
	Arg = monster:GetArg();	
	
	Arg:PushLStr( "TargetBase", "beta_safezone_00" );	--베이스를 사용할 수 있도록 버퍼를 만듬.
	Arg:PushLU32( "Pattern", PATTERN_IDLE );	-- 상위 패턴을 사용할 수 있도록 버퍼를 만들고, 최초 생성 시 상위 패턴은 대기 상태로 설정
	Arg:PushLFloat( "AreaDistance", 2000 );		-- 리스폰 위치와의 거리의 버퍼를 만들고, 리스폰 위치와의 거리를 2000으로 설정
	

end

function CreateAttack1( monster )

	-- create state
	attackState = CreateAttackState( monster, MONINPUT_ATTACK_0, 2000 ); -- 몬스터, 공격상태인덱스, 상태지속시간 3000
	attackState:AddSequence( 0, "L_beam_Dummy", "Resources/Effects/pve_mon_queen_attack03.seq" ); -- starttime, node, sequence
	attackState:AddSequence( 0, "R_beam_Dummy", "Resources/Effects/pve_mon_queen_attack03.seq" ); -- starttime, node, sequence
	attackState:AddSequence( 1000, "M_beam_Dummy", "Resources/Effects/pve_mon_queen_attack04.seq" ); -- starttime, node, sequence
	attackState:AddSequence( 450, "queen_effect_Dummy", "Resources/Effects/pve_queen_attack05.seq" );
	attackState:AddSequence( 0, "M_beam_Dummy", "Resources/Effects/pve_queen_sonic.seq" );
	attackState:SetMoveBoxMultiplier( 1.0 );
	attackState:SetAnimationSpeed( 1.0 );
	
	-- create attacks
	Attack1 = CreateCAttack();
	Attack1:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_QUEEN_1, 500, 15, 0 );
	Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,300,100), MAKEVECTOR3(0,0,-1), 400*1.9, 400*1.5, 400*1.9), 1, 1, false  );
	Attack1:SetCameraShakeEnable( true, true, 0 );  
	Attack1:AddPushCondition( 50, 2000, -5000 );
	-- Attack1:AddBlowCondition( 2600, 2000 );	
	attackState:AddAttack( Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_QUEEN_1, 750, 15, 0 );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,300,100), MAKEVECTOR3(0,0,-1), 400*1.9, 400*1.5, 400*1.9), 1, 1, false  )
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:AddPushCondition( 50, 2000, -5000 );
	--Attack2:AddBlowCondition( 2600, 2000 );	    
    attackState:AddAttack( Attack2 );
    
    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_QUEEN_1, 1000, 30, 0 );
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,300,100), MAKEVECTOR3(0,0,-1), 400*2.2, 400*1.5, 400*2.2 ), 1, 1, false  );
    Attack3:SetCameraShakeEnable( true, true, 0 );    
	--Attack3:AddPushCondition( 400, 3000, -5000 );
	Attack3:AddBlowCondition( 2000, 2000 );	
    attackState:AddAttack( Attack3 );
	
	--[[
	Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_QUEEN_1, 2100, 20, 0 );
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), 400*1, 400*1.7, 400*1.5 ), 1, 1, false  );
    Attack4:SetCameraShakeEnable( true, true, 0 );    
	Attack4:AddPushCondition( 400, 3000, -5000 );
	--Attack1:AddBlowCondition( 2600, 2000 );	
    attackState:AddAttack( Attack4 );
	
	Attack5 = CreateCAttack();
    Attack5:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_QUEEN_1, 2700, 20, 0 );
    Attack5:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), 400*1, 400*1.7, 400*1.5 ), 1, 1, false  );
    Attack5:SetCameraShakeEnable( true, true, 0 );    
	Attack5:AddPushCondition( 400, 5000, -5000 );
	--Attack4:AddBlowCondition( 2600, 2000 );	
    attackState:AddAttack( Attack5 );
	]]--
	-- add state
		
	monster:AddState( MONINPUT_ATTACK_0, attackState );

end

function CreateAttack2( monster )

	attackTime = 750;  -- 여기서 시간을 조정하세요.

	-- create state
	attackState = CreateAttackState( monster, MONINPUT_ATTACK_1, 1500 ); -- 몬스터, 공격상태인덱스, 상태지속시간 3000
	attackState:AddSequence( 0, "L_beam_Dummy", "Resources/Effects/pve_mon_queen_attack01.seq" ); -- starttime, node, sequence
	attackState:AddSequence( 0, "R_beam_Dummy", "Resources/Effects/pve_mon_queen_attack01.seq" ); -- starttime, node, sequence
	attackState:AddSequence( attackTime, "M_beam_Dummy", "Resources/Effects/pve_mon_queen_attack02.seq" ); -- starttime, node, sequence
	
	-- create attacks
	Attack1 = CreateCAttack();
	Attack1:InitAttack1( WEAPONTYPE_MISSILE_, ATTACKATTRIB_PVE_QUEEN_0, attackTime, 20, 0 );
	Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 400, RayDistanceLimit ), 1, 1, false  );
	--Attack1:AddPushCondition( 25, 2000, -5000 );
	--Attack1:AddStunCondition( 500, 1000, 0, 1000 );
	Attack1:AddBlowCondition( 1000, 2000 );	
	attackState:AddAttack( Attack1 );
	
	-- add state
	monster:AddState( MONINPUT_ATTACK_1, attackState );
	
end

function SetAnimation( monster )
	state = monster:GetMonsterState( MONSTATE_NORMAL );
	if nil ~= state then
		state:SetAnimtionBlend( "00000", true, 100, 100, true, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
	end
	
	state = monster:GetMonsterState( MONSTATE_RUN );
	if nil ~= state then
		state:SetAnimtionBlend( "00000", true, 100, 100, true, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
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
		state:SetDurationTime( 3000 );
		state:SetAnimtionBlend( "00001", false, 100, 100, false, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
		state:AddSound( 200, "Resources/Sound/challenge_arcade/queen_destroy.ogg" );
	end
		
	state = monster:GetMonsterState( MONSTATE_ATTACK_0 );
	if nil ~= state then
		state:SetAnimtionBlend( "00003", false, 100, 100, false, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
		state:AddSound( 200, "Resources/Sound/challenge_arcade/queen_melee_attack.ogg" );	
	end
	
	state = monster:GetMonsterState( MONSTATE_ATTACK_1 );
	if nil ~= state then
		state:SetAnimtionBlend( "00003_1", false, 100, 100, false, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
		state:AddSound( 200, "Resources/Sound/challenge_arcade/queen_fire_attack.ogg" );	
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
	
	StealthCommand( GAMETIME+ADDTIME, monster, false );
	-- monster:SetLastAttackStateID( MONINPUT_TOTAL );
	
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
	monster:SetLastAttackStateID( MONINPUT_TOTAL );
	
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

function StealthCommand( gametime, monster, isOn )

	if monster:IsStealthOn() ~= isOn then
		AI_CONTROLLER:RegisterReservedCommand( CreateStealthCommand( gametime, monster:GetID(), isOn ) );	
	end

end

-- 유저 검색함수
function ActorCheck( timeDelta, monster )
	Arg = monster:GetArg();
	--nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, true, false );
	
	--distBySafeArea = UTIL:GetDistBySafeArea( monster, "beta_safezone_00" );		
	--vEndPos = UTIL:GetSafeAreaPos( "beta_safezone_00" );
	--vNewPos = MAKEVECTOR3( 0,0,0 );
		
	if nearActor then
		monster:SetMoveType( MONMOVE_ACTOR );
		monster:SetTargetActorID( nearActor:GetID() );
		distanceMonsterToActor = UTIL:GetDist( monster, nearActor );				
		
		attackType 		= monster:GetLastAttackStateID();
		isAttackProbChoice	= false;
		
		-- 공격타입을 체크해야 하는가?
		if MONINPUT_TOTAL == attackType then					
			atkProb = monster:GetRandom( 100000 );
			if 0 > atkProb then
				attackType = MONINPUT_ATTACK_0;
			else
				attackType = MONINPUT_ATTACK_0;
			end
			monster:ResetRateOfFire( attackType );
			monster:SetLastAttackStateID( attackType );
		end
			
		isAttack 			= false;
			
		if MONINPUT_ATTACK_0 == attackType then		-- 근접
		
			if attack_0_Distance > distanceMonsterToActor then
				-- monster:SetWaitTime( monster:GetRateOfFire( MONINPUT_ATTACK_0 ) );
				monster:SetWaitTime( 2000 );						
				isAttack = true;						
				StealthCommand( GAMETIME+ADDTIME, monster, false );						
				AI_CONTROLLER:RegisterReservedCommand( CreateAttackCommand( GAMETIME+ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1(nearActor, monster) ) );
			else
				StealthCommand( GAMETIME+ADDTIME, monster, true );
			end			
		
		elseif MONINPUT_ATTACK_1 == attackType then	-- 원거리
			StealthCommand( GAMETIME+ADDTIME, monster, false );
			if attack_1_Min_Distance > distanceMonsterToActor then
				if UTIL:IsSafeZoneEnable( "beta_safezone_00" ) then	--베이스가 있는지 체크 후 있으면
					local strTargetBase = Arg:GetLStr( "TargetBase" );
					vEndPos 	= UTIL:GetSafeAreaPos( strTargetBase );	--베이스의 위치 정보를 얻어옴.
					vNewPos = MAKEVECTOR3( 0,0,0 );
					local distBySafeArea = UTIL:GetDistBySafeArea( monster, strTargetBase );	--몬스터와 베이스와의 거리를 얻어옴.
					--vEndPos = UTIL:GetSafeAreaPos( "beta_safezone_00" );
					MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, monster:GetEscapeMoveSpeedRate() );	--베이스 위치로 이동
				end
			elseif attack_1_Distance > distanceMonsterToActor then
				-- monster:SetWaitTime( monster:GetRateOfFire( MONINPUT_ATTACK_1 ) );
				monster:SetWaitTime( 1500 );
				AI_CONTROLLER:RegisterReservedCommand( CreateAttackCommand( GAMETIME+ADDTIME, monster:GetID(), MONINPUT_ATTACK_1, monster:GetPosition(), UTIL:GetDirection2To1(nearActor, monster) ) );
				isAttack = true;						
			end				
		end
			
		if false == isAttack then				
			monster:SetWaitTime( 300 );		
			-- monster:UpdateHost( timeDelta );
			AI_CONTROLLER:RegisterReservedCommand( CreateMoveToCommand( GAMETIME+ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), monster:GetRakeMoveSpeedRate() ) );					
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
		userFindDistance = 5000;		-- 유저 찾는 거리
	end
	
		
	-- 공격 가능 거리
		attack_0_Distance 	= 1750;		-- 공격 1
		attack_1_Distance 	= 2000;		-- 공격 2
		attack_1_Min_Distance	= 1500;		-- 공격 2의 최소거리
	
	nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, false, false ); -- 5번째 파라메터 시야거리에 보이지 않아도 따라오게 하는 기능(false) 
	
	if PATTERN_IDLE == currPattern then			--현재 패턴이 대기 패턴일 경우 실행
		FuncIdle( timeDelta, monster );
	elseif PATTERN_PURSUIT == currPattern then	--현재 패턴이 추격 패턴일 경우 실행
		FuncPursuit( timeDelta, monster );
	elseif PATTERN_RETURN == currPattern then	--현재 패턴이 복귀 패턴일 경우 실행
		FuncReturn( timeDelta, monster );
	end


end
