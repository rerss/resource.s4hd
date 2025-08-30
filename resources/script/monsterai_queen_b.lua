require "Resources/Script/MonsterAI_Constants.lua"

-- AI_CONTROLLER

function Create( monster )
	
	monster:CreateStealth();
	CreateAttack1( monster );	-- 근접
	CreateAttack2( monster );	-- 원거리
	
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
	
	
	
	
	SetAnimation( monster );
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
	Attack1:AddStunCondition( 500, 1000, 0, 1000 );
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
	end
	
	state = monster:GetMonsterState( MONSTATE_BLOW );
	if nil ~= state then
		state:SetAnimtionBlend( "00004", true, 100, 100, true, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
	end
	
	state = monster:GetMonsterState( MONSTATE_DEATH );
	if nil ~= state then
		state:SetDurationTime( 3000 );
		state:SetAnimtionBlend( "00001", false, 100, 100, false, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
	end
		
	state = monster:GetMonsterState( MONSTATE_ATTACK_0 );
	if nil ~= state then
		state:SetAnimtionBlend( "00003", false, 100, 100, false, true ); -- anim, 블렌드여부, 블렌딩타임, 리커버리타임, 루프가능여부, 리셋여부
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
		monster:SetWaitTime( 2000 );
	--}
	end
	
	StealthCommand( GAMETIME+ADDTIME, monster, false );
	-- monster:SetLastAttackStateID( MONINPUT_TOTAL );
	
end

function StealthCommand( gametime, monster, isOn )

	if monster:IsStealthOn() ~= isOn then
		AI_CONTROLLER:RegisterReservedCommand( CreateStealthCommand( gametime, monster:GetID(), isOn ) );	
	end

end

function Update( timeDelta, monster )	

	-- monster:UpdateWaitTime( timeDelta );
	
	-- if false == monster:IsWaitTimeValid() then
	
		baseFindDistance = 2000;		-- 베이스지역 찾는 거리800
		userFindDistance = 2000;		-- 유저 찾는 거리3000
		
		-- 공격 가능 거리
		attack_0_Distance 	= 1750;		-- 공격 1
		attack_1_Distance 	= 2000;		-- 공격 2
		attack_1_Min_Distance	= 1500;		-- 공격 2의 최소거리
		
		distBySafeArea = UTIL:GetDistBySafeArea( monster, "beta_safezone_00" );		
		-- vEndPos = MAKEVECTOR3( 834, 837, -11339 );
		vEndPos = UTIL:GetSafeAreaPos( "beta_safezone_00" );
		vNewPos = MAKEVECTOR3( 0,0,0 );
		
		-- 베이스 거리 체크
		if baseFindDistance > distBySafeArea then
			MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, 1.0 );						
		else
		
			nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, true, false );
			
			if nearActor then
			
				monster:SetMoveType( MONMOVE_ACTOR );
				monster:SetTargetActorID( nearActor:GetID() );
				distanceMonsterToActor = UTIL:GetDist( monster, nearActor );				
				
				attackType 		= monster:GetLastAttackStateID();
				isAttackProbChoice	= false;
				
				-- 공격타입을 체크해야 하는가?
				if MONINPUT_TOTAL == attackType then					
					atkProb = monster:GetRandom( 100000 );
					if 50000 > atkProb then
						attackType = MONINPUT_ATTACK_0;
					else
						attackType = MONINPUT_ATTACK_1;
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
				
				elseif MONINPUT_ATTACK_1 == attackType then	-- 원거
					StealthCommand( GAMETIME+ADDTIME, monster, false );
					if attack_1_Min_Distance > distanceMonsterToActor then
						MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, monster:GetEscapeMoveSpeedRate() );
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
			
			else
				monster:SetLastAttackStateID( MONINPUT_TOTAL );
				MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, 1.0 );				
			end
		
		end	
		
	-- end

end
