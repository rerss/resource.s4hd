require "Resources/Script/MonsterAI_Constants.lua"


-- �� �Ϲ���

-- AI_CONTROLLER

-- �갳������ ����ϴ� AI ���� ����
PATTERN_IDLE 		= 0;	-- ��� ����
PATTERN_PURSUIT		= 1;	-- �߰� ����
PATTERN_RETURN		= 2;	-- ���̽��� ���� ����
--[[
-- ��� �� ��� AI ���� ������
�ش� ������ ��� ���� 
Resources/Script/MonsterAI_Constants.lua ����

]]--

-- ���� ���� ���� ��
function Create( monster )
	
	monster:CreateStealth();
	CreateAttack1( monster );	-- ���� ����
	CreateAttack2( monster );	-- ���Ÿ� ����
	
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
	
	-- 20������ ���۸� �߰� �� �� ����
	Arg = monster:GetArg();	
	
	Arg:PushLStr( "TargetBase", "beta_safezone_00" );	--���̽��� ����� �� �ֵ��� ���۸� ����.
	Arg:PushLU32( "Pattern", PATTERN_IDLE );	-- ���� ������ ����� �� �ֵ��� ���۸� �����, ���� ���� �� ���� ������ ��� ���·� ����
	Arg:PushLFloat( "AreaDistance", 2000 );		-- ������ ��ġ���� �Ÿ��� ���۸� �����, ������ ��ġ���� �Ÿ��� 2000���� ����
	

end

function CreateAttack1( monster )

	-- create state
	attackState = CreateAttackState( monster, MONINPUT_ATTACK_0, 2000 ); -- ����, ���ݻ����ε���, �������ӽð� 3000
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

	attackTime = 750;  -- ���⼭ �ð��� �����ϼ���.

	-- create state
	attackState = CreateAttackState( monster, MONINPUT_ATTACK_1, 1500 ); -- ����, ���ݻ����ε���, �������ӽð� 3000
	attackState:AddSequence( 0, "L_beam_Dummy", "Resources/Effects/pve_mon_queen_attack01.seq" ); -- starttime, node, sequence
	attackState:AddSequence( 0, "R_beam_Dummy", "Resources/Effects/pve_mon_queen_attack01.seq" ); -- starttime, node, sequence
	attackState:AddSequence( attackTime, "M_beam_Dummy", "Resources/Effects/pve_mon_queen_attack02.seq" ); -- starttime, node, sequence
	
	-- create attacks
	Attack1 = CreateCAttack();
	Attack1:InitAttack1( WEAPONTYPE_MISSILE_, ATTACKATTRIB_PVE_QUEEN_0, attackTime, 30, 0 );
	Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 400, RayDistanceLimit ), 1, 1, false  );
	--Attack1:AddPushCondition( 25, 2000, -5000 );
	Attack1:AddStunCondition( 1000, 2000, 0, 1000 );
	--Attack1:AddBlowCondition( 1000, 2000 );	
	attackState:AddAttack( Attack1 );
	
	-- add state
	monster:AddState( MONINPUT_ATTACK_1, attackState );
	
end

function SetAnimation( monster )
	state = monster:GetMonsterState( MONSTATE_NORMAL );
	if nil ~= state then
		state:SetAnimtionBlend( "BASE", true, 100, 100, true, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
	end
	
	state = monster:GetMonsterState( MONSTATE_RUN );
	if nil ~= state then
		state:SetAnimtionBlend( "BASE", true, 100, 100, true, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
	end
	
	state = monster:GetMonsterState( MONSTATE_DAMAGE );
	if nil ~= state then
		state:SetAnimtionBlend( "00002", false, 100, 100, false, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
		state:AddSound( 200, "Resources/Sound/challenge_arcade/AI_damage.ogg" );
	end
	
	state = monster:GetMonsterState( MONSTATE_BLOW );
	if nil ~= state then
		state:SetAnimtionBlend( "00004", true, 100, 100, true, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
	end
	
	state = monster:GetMonsterState( MONSTATE_DEATH );
	if nil ~= state then
		state:SetDurationTime( 3000 );
		state:SetAnimtionBlend( "00001", false, 100, 100, false, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
		state:AddSound( 200, "Resources/Sound/challenge_arcade/queen_destroy.ogg" );
	end
		
	state = monster:GetMonsterState( MONSTATE_ATTACK_0 );
	if nil ~= state then
		state:SetAnimtionBlend( "00003", false, 100, 100, false, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
		state:AddSound( 200, "Resources/Sound/challenge_arcade/queen_melee_attack.ogg" );		
	end
	
	state = monster:GetMonsterState( MONSTATE_ATTACK_1 );
	if nil ~= state then
		state:SetAnimtionBlend( "00003_1", false, 100, 100, false, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
		state:AddSound( 200, "Resources/Sound/challenge_arcade/queen_fire_attack.ogg" );	
	end
	
	state = monster:GetMonsterState( MONSTATE_ATTACK_2 );
	if nil ~= state then
		state:SetAnimtionBlend( "00003", false, 100, 100, false, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
	end
	
	state = monster:GetMonsterState( MONSTATE_PRE_FASTRUN );
	if nil ~= state then
		state:SetAnimtionBlend( "00005", true, 100, 100, true, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
	end
	
	state = monster:GetMonsterState( MONSTATE_FASTRUN ); -- 00006, 00006_1 �� �������� ����ȴ�.
	if nil ~= state then
		state:SetAnimtionBlend( "00006", true, 100, 100, true, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
	end
end

function FirstUpdate( monster )
end

function MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, moveSpeedMultiplier )	--�̵��� ����ϴ� �Լ�
	
	monster:SetMoveType( MONMOVE_WAYPOINT );	--MONMOVE_WAYPOINT ��������Ʈ �̵� ��� ���
			
	if monster:FindPath( vNewPos, vEndPos ) then
	--{
		monster:SetWaitTime( INTERVAL_UPDATE_TIME );	--�ش� �Լ� ���� �� INTERVAL_UPDATE_TIME ��ŭ ���
		-- monster:UpdateHost( timeDelta );
		AI_CONTROLLER:RegisterReservedCommand( CreateMoveToCommand( GAMETIME+ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), moveSpeedMultiplier ) );
	--}	
	else
	--{
		monster:SetWaitTime( 500 );	-- ������ ���� ã�� ���� ��� 500 ��ŭ ��ٸ�
	--}
	end
	
	StealthCommand( GAMETIME+ADDTIME, monster, false );
	-- monster:SetLastAttackStateID( MONINPUT_TOTAL );
	
end


-- �������� �� ���Ǵ� �Լ�
function FuncIdle( timeDelta, monster )
	
	Arg = monster:GetArg();
	
	if mainPattern ~= MONPATTERN_MISSION_PUPPET then	-- �̼�_����ƺ� ���� ��� ���� �ν��� ���� ����.
		if nil ~= nearActor then	--������ �ν� ������ ���� ���
			Arg:SetLU32( "Pattern", PATTERN_PURSUIT );		-- �߰� �������� ��ȯ
		else						--������ �ν� ������ ���� ���
			if mainPattern ~= MONPATTERN_MISSION_RETURN then	--�̼�_�������� �ƴ� ���
				Arg:SetLU32( "Pattern", PATTERN_RETURN );	-- ���� �������� ��ȯ
			end
		end
	end
end

-- �߰ݻ����� �� ���Ǵ� �Լ�
function FuncPursuit( timeDelta, monster )
	
	Arg = monster:GetArg();
	
	
	if nil ~= nearActor then	--������ �ν� ������ ���� ���
		ActorCheck( timeDelta, monster );
	else						--������ �ν� ������ ���� ���
		Arg:SetLU32( "Pattern", PATTERN_RETURN );	-- ���� �������� ��ȯ
	end
	
	if mainPattern == MONPATTERN_MISSION_RETURN then	--�̼�_�������� ���
		AreaDistanceCheck( timeDelta, monster );		--������ �Ÿ� üũ �Լ� ����
	end
	
	
end

-- ���ͻ����� �� ���Ǵ� �Լ�
function FuncReturn( timeDelta, monster )

	Arg = monster:GetArg();
	monster:SetLastAttackStateID( MONINPUT_TOTAL );
	
	if mainPattern == MONPATTERN_MISSION_RETURN then	--�̼�_�������� ���
	
		if false == IsReturn( timeDelta, monster ) then	--����������Ʈ���� �Ÿ��� ������
			--ActorCheck( timeDelta, monster );	
			if nil ~= nearActor then					--������ �ν� ������ ���� ���
				Arg:SetLU32( "Pattern", PATTERN_PURSUIT );	--���� �������� ��ȯ
			end
		end
		
		local strSpawnBase = Arg:GetLStr( "SpawnBase" );	--�ش� ������ ������ ��ġ ����Ʈ�� �̸��� �޾ƿ�.
		local vAreaPos 	= UTIL:GetAreaPos( strSpawnBase );	--������ ��ġ ����Ʈ�� ��ġ ������ �޾ƿ�.
		local vNewPos 	= MAKEVECTOR3( 0,0,0 );	
		MoveToWayPoint( monster, 0, vAreaPos, vNewPos, 4.0 );	--������ ��ġ�� �̵�
	elseif mainPattern ~= MONPATTERN_MISSION_RETURN then	--�̼�_�������� �ƴ� ���
		--ActorCheck( timeDelta, monster );	
		if nil ~= nearActor then						--������ �ν� ������ ���� ���
			Arg:SetLU32( "Pattern", PATTERN_PURSUIT );	--���� �������� ��ȯ
		end
	
		local vNewPos 	= MAKEVECTOR3( 0,0,0 );
		
		if UTIL:IsSafeZoneEnable( "beta_safezone_00" ) then	--���̽��� �ִ��� üũ �� ������
			local strTargetBase = Arg:GetLStr( "TargetBase" );
			vEndPos 	= UTIL:GetSafeAreaPos( strTargetBase );	--���̽��� ��ġ ������ ����.
			local distBySafeArea = UTIL:GetDistBySafeArea( monster, strTargetBase );	--���Ϳ� ���̽����� �Ÿ��� ����.
			--vEndPos = UTIL:GetSafeAreaPos( "beta_safezone_00" );
			MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, 1.0 );	--���̽� ��ġ�� �̵�
		end
	end
	
end

--������ ��ġ�κ����� �Ÿ��� ���� true, false�� ��ȯ�ϴ� �Լ�
function IsReturn( timeDelta, monster )

	Arg = monster:GetArg();
	areaDistance 	= Arg:GetLFloat( "AreaDistance" );
	
	local strSpawnBase = Arg:GetLStr( "SpawnBase" );
	distanceByArea	= UTIL:GetDistByArea( monster, strSpawnBase );
	
	return distanceByArea > areaDistance;
	
end

-- ���Ϳ� ������ ��ġ���� �Ÿ�üũ �Լ�
function AreaDistanceCheck( timeDelta, monster )
	
	Arg = monster:GetArg();
	if true == IsReturn( timeDelta, monster ) then	--������ ��ġ�� ������ �Ÿ��� ���� �ּ� �Ÿ� �̻��̸�
		Arg:SetLU32( "Pattern", PATTERN_RETURN );	-- ���� �������� ��ȯ
	end

end

function StealthCommand( gametime, monster, isOn )

	if monster:IsStealthOn() ~= isOn then
		AI_CONTROLLER:RegisterReservedCommand( CreateStealthCommand( gametime, monster:GetID(), isOn ) );	
	end

end

-- ���� �˻��Լ�
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
		
		-- ����Ÿ���� üũ�ؾ� �ϴ°�?
		if MONINPUT_TOTAL == attackType then					
			atkProb = monster:GetRandom( 100000 );
			if 50000 > atkProb then
				attackType = MONINPUT_ATTACK_1;
			else
				attackType = MONINPUT_ATTACK_1;
			end
			monster:ResetRateOfFire( attackType );
			monster:SetLastAttackStateID( attackType );
		end
			
		isAttack 			= false;
			--[[
		if MONINPUT_ATTACK_0 == attackType then		-- ����
		
			if attack_0_Distance > distanceMonsterToActor then
				-- monster:SetWaitTime( monster:GetRateOfFire( MONINPUT_ATTACK_0 ) );
				monster:SetWaitTime( 2000 );						
				isAttack = true;						
				StealthCommand( GAMETIME+ADDTIME, monster, false );						
				AI_CONTROLLER:RegisterReservedCommand( CreateAttackCommand( GAMETIME+ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1(nearActor, monster) ) );
			else
				StealthCommand( GAMETIME+ADDTIME, monster, true );
			end			
		]]--
		if MONINPUT_ATTACK_1 == attackType then	-- ���Ÿ�
			StealthCommand( GAMETIME+ADDTIME, monster, false );
			if attack_1_Min_Distance > distanceMonsterToActor then
				if UTIL:IsSafeZoneEnable( "beta_safezone_00" ) then	--���̽��� �ִ��� üũ �� ������
					local strTargetBase = Arg:GetLStr( "TargetBase" );
					vEndPos 	= UTIL:GetSafeAreaPos( strTargetBase );	--���̽��� ��ġ ������ ����.
					vNewPos = MAKEVECTOR3( 0,0,0 );
					local distBySafeArea = UTIL:GetDistBySafeArea( monster, strTargetBase );	--���Ϳ� ���̽����� �Ÿ��� ����.
					--vEndPos = UTIL:GetSafeAreaPos( "beta_safezone_00" );
					MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, monster:GetEscapeMoveSpeedRate() );	--���̽� ��ġ�� �̵�
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
	mainPattern 	= Arg:GetLU32( "MainPattern" );	-- ��� ���п� ���Ǵ� AI ���� ���� �ҷ�����
	
	baseFindDistance = 2000;		-- ���̽����� ã�� �Ÿ�
	
	if mainPattern == MONPATTERN_MISSION_ATTACK then
		userFindDistance = 10000;		-- ���� ã�� �Ÿ�
	else
		userFindDistance = 5000;		-- ���� ã�� �Ÿ�
	end
	
		
	-- ���� ���� �Ÿ�
		attack_0_Distance 	= 1750;		-- ���� 1
		attack_1_Distance 	= 2000;		-- ���� 2
		attack_1_Min_Distance	= 1500;		-- ���� 2�� �ּҰŸ�
	
	nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, false, false ); -- 5��° �Ķ���� �þ߰Ÿ��� ������ �ʾƵ� ������� �ϴ� ���(false) 
	
	if PATTERN_IDLE == currPattern then			--���� ������ ��� ������ ��� ����
		FuncIdle( timeDelta, monster );
	elseif PATTERN_PURSUIT == currPattern then	--���� ������ �߰� ������ ��� ����
		FuncPursuit( timeDelta, monster );
	elseif PATTERN_RETURN == currPattern then	--���� ������ ���� ������ ��� ����
		FuncReturn( timeDelta, monster );
	end


end
