require "Resources/Script/MonsterAI_Constants.lua"


-- ��� �Ϲ���

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
		
	CreateAttack1( monster );	
	
    -- super armor
	--[[
	state = monster:GetMonsterState( MONINPUT_ATTACK_0 );
	if nil ~= state then
		state:SetSuperArmor( true );	
	end
	]]--
		
	SetAnimation( monster );
	
	-- 20������ ���۸� �߰� �� �� ����
	Arg = monster:GetArg();	
	
	Arg:PushLStr( "TargetBase", "beta_safezone_00" );	--���̽��� ����� �� �ֵ��� ���۸� ����.
	Arg:PushLU32( "Pattern", PATTERN_IDLE );	-- ���� ������ ����� �� �ֵ��� ���۸� �����, ���� ���� �� ���� ������ ��� ���·� ����
	Arg:PushLFloat( "AreaDistance", 2000 );		-- ������ ��ġ���� �Ÿ��� ���۸� �����, ������ ��ġ���� �Ÿ��� 2000���� ����
	
end

function CreateAttack1( monster )	--�Ϲ� ����

	-- create state
	attackState = CreateAttackState( monster, MONINPUT_ATTACK_0, 1600 ); -- ����, ���ݻ����ε���, �������ӽð�	
	attackState:SetUpdatePosDir( true );
	attackState:AddSequence( 0, "Bishop_Fire_Dummy", "Resources/Effects/pve_mon_bishop_attack.seq" ); -- starttime, node, sequence
	attackState:SetAnimationSpeed( 1.5 );
	
	-- create attacks
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_MISSILE_, ATTACKATTRIB_PVE_BISHOP, 800, 20, 0 );
    Attack1:InitAttack2( MAKETHICKRAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), 50, RayDistanceLimit ), 1, 1, false  );
	-- Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,0,0), MAKEVECTOR3(0,0,-1), RayDistanceLimit ), 1, 1, false  );
    Attack1:SetCollisionRangeAdjust( false, false );   
    Attack1:AddBlowCondition( 1000, 2000 );	
    attackState:AddAttack( Attack1 );
	
	-- add state
	monster:AddState( MONINPUT_ATTACK_0, attackState );

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
	end
	
	state = monster:GetMonsterState( MONSTATE_BLOW );
	if nil ~= state then
		state:SetAnimtionBlend( "00004", true, 100, 100, true, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
	end
	
	state = monster:GetMonsterState( MONSTATE_DEATH );
	if nil ~= state then
		state:SetAnimtionBlend( "00001", false, 100, 100, false, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
	end
		
	state = monster:GetMonsterState( MONSTATE_ATTACK_0 );
	if nil ~= state then
		state:SetAnimtionBlend( "00003", false, 100, 100, false, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
	end
	
	state = monster:GetMonsterState( MONSTATE_ATTACK_1 );
	if nil ~= state then
		state:SetAnimtionBlend( "00003", false, 100, 100, false, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
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

-- ���� �˻��Լ�
function ActorCheck( timeDelta, monster )
	Arg = monster:GetArg();
	--nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, true, false );
	
	--distBySafeArea = UTIL:GetDistBySafeArea( monster, "beta_safezone_00" );		
	--vEndPos = UTIL:GetSafeAreaPos( "beta_safezone_00" );
	--vNewPos = MAKEVECTOR3( 0,0,0 );
		
	if nearActor then	--������ �ν� �Ÿ��� ���� ���
	--{	
		monster:SetMoveType( MONMOVE_ACTOR );	--�̵� ����� ���� �̵� ���
		monster:SetTargetActorID( nearActor:GetID() );
		distanceMonsterToActor = UTIL:GetDist( monster, nearActor );	--���Ϳ� ���� ����� �÷��̾��� �Ÿ��� ����.
		if attackMinDistance > distanceMonsterToActor then
			if UTIL:IsSafeZoneEnable( "beta_safezone_00" ) then	--���̽��� �ִ��� üũ �� ������
				local strTargetBase = Arg:GetLStr( "TargetBase" );
				vEndPos 	= UTIL:GetSafeAreaPos( strTargetBase );	--���̽��� ��ġ ������ ����.
				vNewPos = MAKEVECTOR3( 0,0,0 );
				local distBySafeArea = UTIL:GetDistBySafeArea( monster, strTargetBase );	--���Ϳ� ���̽����� �Ÿ��� ����.
				--vEndPos = UTIL:GetSafeAreaPos( "beta_safezone_00" );
				MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, monster:GetEscapeMoveSpeedRate() );	--���̽� ��ġ�� �̵�
			end
		elseif attackMaxDistance > distanceMonsterToActor then
		--{
			-- ���� ���� �Ÿ��ȿ� ���� ���, ���� ����
			monster:SetWaitTime( monster:GetRateOfFire( MONINPUT_ATTACK_0 ) ); -- �ش� �Լ� ���� �� ���� �ӵ� ��ŭ ���
			--AI_CONTROLLER:RegisterReservedCommand( CreateAttackCommand( GAMETIME+ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1(nearActor, monster) ) );		
			
			-- ��������   UTIL:GetDirection2To1Rand( ����, ����,  width, height, ������( ���� ���� �������� ���⼱�� ) )
			AI_CONTROLLER:RegisterReservedCommand( CreateAttackCommand( GAMETIME+ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1Rand(nearActor, monster, 400, 200, 2) ) );
		--}
		else
		--{
			-- ���� ���� �Ÿ��ȿ� ������ ���� ���, ���� ������� �̵�
			monster:SetWaitTime( 100 );	--�ش� �Լ� ���� �� 100 ���� ���						
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
	mainPattern 	= Arg:GetLU32( "MainPattern" );	-- ��� ���п� ���Ǵ� AI ���� ���� �ҷ�����
	
	baseFindDistance = 100;		-- ���̽����� ã�� �Ÿ�
	
	if mainPattern == MONPATTERN_MISSION_ATTACK then
		userFindDistance = 20000;		-- ���� ã�� �Ÿ�
	else
		userFindDistance = 20000;		-- ���� ã�� �Ÿ�
	end
	
		
	-- ���� ���� �Ÿ� ( attackMinDistance ~ attackMaxDistance )
	attackMinDistance = 0;		-- ���� �ּҰŸ�( �� �Ÿ����� ª���� ��������Ʈ ������ �̵��Ѵ�. )
	attackMaxDistance = 20000;		-- ���� �ִ�Ÿ�( �� �Ÿ����� �ָ� �������� �ʰ� �������� �ٰ�����.)
	
	nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, false, false ); -- 5��° �Ķ���� �þ߰Ÿ��� ������ �ʾƵ� ������� �ϴ� ���(false) 
	
	if PATTERN_IDLE == currPattern then			--���� ������ ��� ������ ��� ����
		FuncIdle( timeDelta, monster );
	elseif PATTERN_PURSUIT == currPattern then	--���� ������ �߰� ������ ��� ����
		FuncPursuit( timeDelta, monster );
	elseif PATTERN_RETURN == currPattern then	--���� ������ ���� ������ ��� ����
		FuncReturn( timeDelta, monster );
	end


end
