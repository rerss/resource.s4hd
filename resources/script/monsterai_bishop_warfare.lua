require "Resources/Script/MonsterAI_Constants.lua"

-- 비숍 일반형(워페어 모드)

-- AI_CONTROLLER

PATTERN_IDLE_STATE = 0;
PATTERN_ATTACK_STATE = 1;

ATTACKABLE_DISNTANCE = 20000;

function Create( monster )

	CreateAttack( monster );
	
	state = monster:GetMonsterState( MONINPUT_ATTACK_0 );
	state:SetSuperArmor( true );
	state:SetMoveBoxMultiplier( 0.0 );
	
	SetAnimation( monster );
	
	Arg = monster:GetArg();	
	Arg:PushLU32( "Pattern", PATTERN_IDLE_STATE );
	
end

function CreateAttack( monster )

	attackState = CreateAttackState( monster, MONINPUT_ATTACK_0, 1600 ); -- 몬스터, 공격상태인덱스, 상태지속시간	
	attackState:SetUpdatePosDir( true );
	attackState:AddSequence( 0, "Bishop_Fire_Dummy", "Resources/Effects/pve_mon_bishop_attack.seq" ); -- starttime, node, sequence
	attackState:SetAnimationSpeed( 1.5 );
	
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_MISSILE_, ATTACKATTRIB_PVE_BISHOP, 800, 20, 0 );
    Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3( 0, 0, 0 ), MAKEVECTOR3( 0, 0, -1 ), 50, RayDistanceLimit ), 1, 1, false  );
    Attack1:SetCollisionRangeAdjust( false, false );   
    Attack1:AddBlowCondition( 1000, 2000 );	
    attackState:AddAttack( Attack1 );

	monster:AddState( MONINPUT_ATTACK_0, attackState );

end

function SetAnimation( monster )

	state = monster:GetMonsterState( MONSTATE_ATTACK_0 );
	if nil ~= state then
		state:SetAnimtionBlend( "00003", false, 100, 100, false, true );
	end

end

function Update( timeDelta, monster )

	Arg = monster:GetArg();
	local currentPattern = Arg:GetLU32( "Pattern" );
	
	if PATTERN_IDLE_STATE == currentPattern then
		UpdateIdleState( timeDelta, monster );
	elseif PATTERN_ATTACK_STATE == currentPattern then
		UpdateAttackState( timeDelta, monster );
	end
	
end

function UpdateIdleState( timeDelta, monster )

	attackableActor = UTIL:FindTargetActor( monster, 0, ATTACKABLE_DISNTANCE );
	if nil ~= attackableActor then
		TestAttackable( monster, attackableActor, MONINPUT_ATTACK_0 )
	end

end

function UpdateAttackState( timeDelta, monster )

	if false == monster:IsRateOfFire() then
		monster:SetLastAttackStateID( MONINPUT_TOTAL );
			
		args = monster:GetArg();
		args:SetLU32( "Pattern", PATTERN_IDLE_STATE );
	end
	
end

function TestAttackable( monster, targetActor, attackID )

	if MONINPUT_TOTAL == monster:GetLastAttackStateID() then
		monster:SetTargetActorID( targetActor:GetID() );
		monster:SetLastAttackStateID( attackID );
		monster:SetWaitTime( monster:GetRateOfFire( attackID ) );
		monster:ResetRateOfFire( attackID );
			
		direction = UTIL:GetDirectionToTarget( monster, targetActor );
		
		attackCommand = CreateAttackCommand( GAMETIME + ADDTIME, monster:GetID(), attackID, monster:GetPosition(), direction );
		AI_CONTROLLER:RegisterReservedCommand( attackCommand );
						
		args = monster:GetArg();
			args:SetLU32( "Pattern", PATTERN_ATTACK_STATE );
			
		return true;
	end
	
	return false;

end

