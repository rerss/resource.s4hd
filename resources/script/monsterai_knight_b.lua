require "Resources/Script/MonsterAI_Constants.lua"

-- AI_CONTROLLER

function Create( monster )
	
	

	
	CreateAttack1( monster );	
	
	--[[
	-- super armor
	state = monster:GetMonsterState( MONINPUT_ATTACK_0 );
	if nil ~= state then
		state:SetSuperArmor( true );	
	end
	]]--
	
	-- death state
	-- deathState = monster:GetMonsterState( MONSTATE_DEATH );
	-- deathState:SetMoveBoxMultiplier( 5.0 );
	
	SetAnimation( monster );
end

function CreateAttack1( monster )
		
	-- create state
	attackState = CreateAttackState( monster, MONINPUT_ATTACK_0, 2500); -- 몬스터, 공격상태인덱스, 상태지속시간 3000
	attackState:SetMoveBoxMultiplier( 1.5 );
	attackState:SetAnimationSpeed( 1.1 );
	
	-- create attacks
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_1, 300, 5, 0 );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,0), MAKEVECTOR3(0,0,-1), 400*1, 300, 400 ), 1, 1, false  );
	--Attack1:SetCameraShakeEnable( true, true, 0 );  
	--Attack1:AddPushCondition( 75, 2000, -5000 );
	--Attack1:AddPushCondition( 400, 3000, -5000 );
	-- Attack1:AddBlowCondition( 2600, 2000 );	
    attackState:AddAttack( Attack1 );
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_1, 1000, 5, 0 );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,0), MAKEVECTOR3(0,0,-1), 400*1, 400*0.75, 400*1.5 ), 1, 1, false  );
	--Attack1:SetCameraShakeEnable( true, true, 0 );  
	--Attack2:AddPushCondition( 75, 2000, -5000 );
	--Attack1:AddPushCondition( 400, 3000, -5000 );
	-- Attack1:AddBlowCondition( 2600, 2000 );	
    attackState:AddAttack( Attack2 );
    
    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_1, 1200, 5, 0 );
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,0), MAKEVECTOR3(0,0,-1), 400*1, 400*0.75, 400*1.5), 1, 1, false  )
    --Attack2:SetCameraShakeEnable( true, true, 0 );
    --Attack3:AddPushCondition( 75, 2000, -5000 );
	--Attack2:AddBlowCondition( 2600, 2000 );	    
    attackState:AddAttack( Attack3 );
    
    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_1, 1400, 5, 0 );
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,0), MAKEVECTOR3(0,0,-1), 400*1, 400*0.75, 400*1.5 ), 1, 1, false  );
    --Attack3:SetCameraShakeEnable( true, true, 0 );    
	Attack4:AddPushCondition( 75, 2000, -5000 );
	--Attack1:AddBlowCondition( 2600, 2000 );	
    attackState:AddAttack( Attack4 );
	
	Attack5 = CreateCAttack();
    Attack5:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_2, 1800, 5, 0 );
    Attack5:InitAttack2( MAKEBOX( MAKEVECTOR3(0,360,0), MAKEVECTOR3(0,0,-1), 400*1, 400*0.75, 400*1.5), 1, 1, false  );
    --Attack4:SetCameraShakeEnable( true, true, 0 );    
	--Attack4:AddPushCondition( 400, 3000, -5000 );
	--Attack4:AddBlowCondition( 2000, 2000 );	
    attackState:AddAttack( Attack5 );
	
	Attack6 = CreateCAttack();
    Attack6:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_1, 2000, 10, 0 );
    Attack6:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,0), MAKEVECTOR3(0,0,-1), 400*1.5, 400*0.75, 400*2.0 ), 1, 1, false  );
    --Attack4:SetCameraShakeEnable( true, true, 0 );    
	--Attack4:AddPushCondition( 400, 3000, -5000 );
	Attack6:AddBlowCondition( 2000, 2000 );	
    attackState:AddAttack( Attack6 );

	-- add state
		
	monster:AddState( MONINPUT_ATTACK_0, attackState );

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

function MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, moveSpeedMultiplier )
	
	monster:SetMoveType( MONMOVE_WAYPOINT );
			
	if monster:FindPath( vNewPos, vEndPos ) then
	--{
		monster:SetWaitTime( INTERVAL_UPDATE_TIME );			
		-- monster:UpdateHost( timeDelta );
		AI_CONTROLLER:RegisterReservedCommand( CreateMoveToCommand( GAMETIME+ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), moveSpeedMultiplier ) );
	--}	
	else
	--{
		monster:SetWaitTime( 2600 );
	--}
	end
	
end

function Update( timeDelta, monster )	

	-- monster:UpdateWaitTime( timeDelta );
	
	-- if false == monster:IsWaitTimeValid() then
	
		baseFindDistance = 100;		-- 베이스지역 찾는 거리
		userFindDistance = 10000;		-- 유저 찾는 거리
		
		-- 공격 가능 거리 		
		attackMaxDistance = 2000;		-- 공격 최대거리( 이 거리보다 멀면 공격하지 않고 유저에게 다가간다.)
		
		distBySafeArea = 1000000; -- UTIL:GetDistBySafeArea( monster, "beta_safezone_00" );		
		-- vEndPos = MAKEVECTOR3( 834, 837, -11339 );
		vEndPos = UTIL:GetSafeAreaPos( "beta_safezone_00" );
		vNewPos = MAKEVECTOR3( 0,0,0 );
		
		-- 베이스 거리 체크
		if baseFindDistance > distBySafeArea then
		
			MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, 1.0 )
			
		else
		
			-- nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, true, false );
			nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, false, false );
			
			if nearActor then
			--{	
				monster:SetMoveType( MONMOVE_ACTOR );
				monster:SetTargetActorID( nearActor:GetID() );
				distanceMonsterToActor = UTIL:GetDist( monster, nearActor );
				
				if attackMaxDistance > distanceMonsterToActor then
				--{
					monster:SetWaitTime( 2500 );
					AI_CONTROLLER:RegisterReservedCommand( CreateAttackCommand( GAMETIME+ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1(nearActor, monster) ) );
					
					-- 랜덤공격   UTIL:GetDirection2To1Rand( 유저, 몬스터,  width, height, 랜덤률( 높을 수록 유저에게 방향선택 ) )
					-- AI_CONTROLLER:RegisterReservedCommand( CreateAttackCommand( GAMETIME+ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1Rand(nearActor, monster, 400, 50, 2) ) );
				--}
				else
				--{
					monster:SetWaitTime( 300 );		
					-- monster:UpdateHost( timeDelta );
					AI_CONTROLLER:RegisterReservedCommand( CreateMoveToCommand( GAMETIME+ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), monster:GetRakeMoveSpeedRate() ) );
				--}
				end			
			--}
			else
			--{
				MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, 1.0 );
			--}
			end
		
		end	
		
	-- end

end
