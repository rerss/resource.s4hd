require "Resources/Script/MonsterAI_Constants.lua"

-- AI_CONTROLLER

function Create( monster )
			
	CreateAttack1( monster );
	-- defense aura	
	--monster:CreateDefenseAura( 200, 1000, 1, "Resources/Effects/pve_mon_buf_eff01.seq" );	-- 체크시간, 범위, 효과( 0.8이면 80%만큼 데미지를 덜 받음 ), 효과시퀀스
	-- + 수치에 의한 추가 공격에는 영향을 주지 않습니다. 기본 데미지에만 영향을 줍니다.
	--monster:SetCanSufferDefenseAura( false );	-- 디펜스 오오라에 영향을 받을 것인가? ( true면 받고, false면 안 받는다 )
	
	SetAnimation( monster );
end

function CreateAttack1( monster )

	-- create state
	attackState = CreateAttackState( monster, MONINPUT_ATTACK_0, 1000); -- 몬스터, 공격상태인덱스, 상태지속시간 3000
	--attackState:SetMoveBoxMultiplier( 1 );
	--attackState:SetAnimationSpeed( 1.1 );
	
	Attack1 = CreateCAttack();
	Attack1:InitAttack1( WEAPONTYPE_SENTRYBOMB_BUILDER, ATTACKATTRIB_SENTRYBOMB_BUILDER, 400 , 30, 0 ); 
	--Attack:InitAttack1( WEAPONTYPE_MELEE_, 공격 타입 속성 , 선 딜레이 시간, 공격력, 0 );
	Attack1:InitAttack2( MAKESPHERE( MAKEVECTOR3( 0, 0, 0 ), 800 ), 1, 1, false );
	Attack1:AddBlowCondition( 2000, 2000 );
	--Attack:InitAttack2( MAKESPHERE( MAKEVECTOR3( 0, 0, 0 ), 공격 범위 ), 1, 1, false ); 
	--Attack1:SetCollisionRangeAdjust( false, false );
	--AddAttack( ATTACKS, Attack1 );

    attackState:AddAttack( Attack1 );
	
	monster:AddState( MONINPUT_ATTACK_0, attackState );
end

function CreateAttack2( monster )
end

function CreateAttack3( monster )
end

function SetAnimation( monster )
	state = monster:GetMonsterState( MONSTATE_NORMAL );
	if nil ~= state then
		state:SetAnimtionBlend( "BASE", true, 100, 100, true, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
	end
	
	state = monster:GetMonsterState( MONSTATE_RUN );
	if nil ~= state then
		state:SetAnimtionBlend( "BASE", true, 100, 100, true, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
	end
	
	state = monster:GetMonsterState( MONSTATE_DAMAGE );
	if nil ~= state then
		state:SetAnimtionBlend( "00002", false, 100, 100, false, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
	end
	
	state = monster:GetMonsterState( MONSTATE_BLOW );
	if nil ~= state then
		state:SetAnimtionBlend( "00004", true, 100, 100, true, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
	end
	
	state = monster:GetMonsterState( MONSTATE_DEATH );
	if nil ~= state then
		state:SetAnimtionBlend( "00001", false, 100, 100, false, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
	end
		
	state = monster:GetMonsterState( MONSTATE_ATTACK_0 );
	if nil ~= state then
		state:SetAnimtionBlend( "00003", false, 100, 100, false, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
	end
	
	state = monster:GetMonsterState( MONSTATE_ATTACK_1 );
	if nil ~= state then
		state:SetAnimtionBlend( "00003", false, 100, 100, false, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
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

function Update( timeDelta, monster )	

	-- monster:UpdateWaitTime( timeDelta );
	
	-- if false == monster:IsWaitTimeValid() then
	
		baseFindDistance = 3000;		-- 베이스지역 찾는 거리
		userFindDistance = 1000;		-- 유저 찾는 거리
		
		-- 공격 가능 거리 		
		attackMaxDistance = 800;		-- 공격 최대거리( 이 거리보다 멀면 공격하지 않고 유저에게 다가간다.)
		
		distBySafeArea = UTIL:GetDistBySafeArea( monster, "beta_safezone_00" );		
		-- vEndPos = MAKEVECTOR3( 834, 837, -11339 );
		vEndPos = UTIL:GetSafeAreaPos( "beta_safezone_00" );
		vNewPos = MAKEVECTOR3( 0,0,0 );
		
		-- 베이스 거리 체크
		--if baseFindDistance > distBySafeArea then
		
		--	MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, 1.0 );
			
		--else
		nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, true, false );
		
		if nearActor then
			--{	
			
			

			--monster:SetMoveType( MONMOVE_ACTOR );
			monster:SetTargetActorID( nearActor:GetID() );
			distanceMonsterToActor = UTIL:GetDist( monster, nearActor );
			
			if attackMaxDistance > distanceMonsterToActor then
			--{
				monster:SetWaitTime( 500 );
				AI_CONTROLLER:RegisterReservedCommand( CreateAttackCommand( GAMETIME+ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1(nearActor, monster) ) );
				
				-- 랜덤공격   UTIL:GetDirection2To1Rand( 유저, 몬스터,  width, height, 랜덤률( 높을 수록 유저에게 방향선택 ) )
				-- AI_CONTROLLER:RegisterReservedCommand( CreateAttackCommand( GAMETIME+ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1Rand(nearActor, monster, 400, 50, 2) ) );
			--}
			else
				MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, 1.0 );
			end
		else
			MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, 1.0 );
		end
			
		
		--end	
		
	-- end

end
