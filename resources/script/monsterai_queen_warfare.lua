require "Resources/Script/MonsterAI_Constants.lua"

-- 퀸 고정형(워페어 모드)

PATTERN_IDLE_STATE = 0;
PATTERN_ATTACK_STATE = 1;

MELEE_ATTACKABLE_DISTANCE = 1000;
RANGE_ATTACKABLE_DISTANCE = 5000;

function Create( monster )
	
	CreateMeleeAttack( monster );
	CreateRangeAttack( monster );
	
	state = monster:GetMonsterState( MONINPUT_ATTACK_0 );
	state:SetSuperArmor( true );
	state:SetMoveBoxMultiplier( 0.0 );
	
	state = monster:GetMonsterState( MONINPUT_ATTACK_1 );
	state:SetSuperArmor( true );
	
	SetAnimation( monster );
	
	Arg = monster:GetArg();	
	Arg:PushLU32( "Pattern", PATTERN_IDLE_STATE );
	
end

function CreateMeleeAttack( monster )

	attackState = CreateAttackState( monster, MONINPUT_ATTACK_0, 2000 );
	attackState:AddSequence( 0, "L_beam_Dummy", "Resources/Effects/pve_mon_queen_attack03.seq" );
	attackState:AddSequence( 0, "R_beam_Dummy", "Resources/Effects/pve_mon_queen_attack03.seq" );
	attackState:AddSequence( 1000, "M_beam_Dummy", "Resources/Effects/pve_mon_queen_attack04.seq" );
	attackState:AddSequence( 450, "queen_effect_Dummy", "Resources/Effects/pve_queen_attack05.seq" );
	attackState:AddSequence( 0, "M_beam_Dummy", "Resources/Effects/pve_queen_sonic.seq" );
	attackState:SetMoveBoxMultiplier( 1.0 );
	attackState:SetAnimationSpeed( 1.0 );
	
	Attack1 = CreateCAttack();
	Attack1:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_QUEEN_1, 500, 15, 0 );
	Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3( 0, 300, 100 ), MAKEVECTOR3( 0, 0, -1 ), 400 * 1.9, 400 * 1.5, 400 * 1.9 ), 1, 1, false );
	Attack1:SetCameraShakeEnable( true, true, 0 );
	Attack1:AddPushCondition( 50, 2000, -5000 );
	attackState:AddAttack( Attack1 );
	
	Attack2 = CreateCAttack();
	Attack2:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_QUEEN_1, 750, 15, 0 );
	Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3( 0, 300, 100 ), MAKEVECTOR3( 0, 0, -1 ), 400 * 1.9, 400 * 1.5, 400 * 1.9 ), 1, 1, false );
	Attack2:SetCameraShakeEnable( true, true, 0 );
	Attack2:AddPushCondition( 50, 2000, -5000 );
	attackState:AddAttack( Attack2 );
	
	Attack3 = CreateCAttack();
	Attack3:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_QUEEN_1, 1000, 30, 0 );
	Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3( 0, 300, 100 ), MAKEVECTOR3( 0, 0, -1 ), 400 * 2.2, 400 * 1.5, 400 * 2.2 ), 1, 1, false );
	Attack3:SetCameraShakeEnable( true, true, 0 );
	Attack3:AddBlowCondition( 2000, 2000 );
	attackState:AddAttack( Attack3 );
	
	monster:AddState( MONINPUT_ATTACK_0, attackState );
	
end

function CreateRangeAttack( monster )

	attackState = CreateAttackState( monster, MONINPUT_ATTACK_1, 1500 );
	attackState:AddSequence( 0, "L_beam_Dummy", "Resources/Effects/pve_mon_queen_attack01.seq" );
	attackState:AddSequence( 0, "R_beam_Dummy", "Resources/Effects/pve_mon_queen_attack01.seq" );
	attackState:AddSequence( attackTime, "M_beam_Dummy", "Resources/Effects/pve_mon_queen_attack02.seq" );
	attackState:SetUpdatePosDir( true );
	
	Attack1 = CreateCAttack();
	Attack1:InitAttack1( WEAPONTYPE_MISSILE_, ATTACKATTRIB_PVE_QUEEN_0, 750, 30, 0 );
	Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3( 0, 0, 0 ), MAKEVECTOR3( 0, 0, -1 ), 400, RayDistanceLimit ), 1, 1, false );
	Attack1:SetCollisionRangeAdjust( false, false );
	Attack1:AddStunCondition( 1000, 2000, 0, 1000 );
	attackState:AddAttack( Attack1 );
	
	monster:AddState( MONINPUT_ATTACK_1, attackState );
	
end

function SetAnimation( monster )

	state = monster:GetMonsterState( MONSTATE_ATTACK_0 );
	if nil ~= state then
		state:SetAnimtionBlend( "00003", false, 100, 100, false, true );
		state:AddSound( 200, "Resources/Sound/challenge_arcade/queen_melee_attack.ogg" );
	end
	
	state = monster:GetMonsterState( MONSTATE_ATTACK_1 );
	if nil ~= state then
		state:SetAnimtionBlend( "00003_1", false, 100, 100, false, true );
		state:AddSound( 200, "Resources/Sound/challenge_arcade/queen_fire_attack.ogg" );
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

	meleeAttackableActor = UTIL:FindTargetActor( monster, 0, MELEE_ATTACKABLE_DISTANCE );
	if nil ~= meleeAttackableActor then
		if TestAttackable( monster, meleeAttackableActor, MONINPUT_ATTACK_0 ) then
			return;
		end
	end
	
	rangeAttackableActor = UTIL:FindTargetActor( monster, MELEE_ATTACKABLE_DISTANCE, RANGE_ATTACKABLE_DISTANCE );
	if nil ~= rangeAttackableActor then
		TestAttackable( monster, rangeAttackableActor, MONINPUT_ATTACK_1 );
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