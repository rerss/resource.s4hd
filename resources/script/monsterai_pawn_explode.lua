require "Resources/Script/MonsterAI_Constants.lua"


-- �� ������

-- AI_CONTROLLER

deathTime = 3000;

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

	--[[ ���۾Ƹ� �κ�
	-- super armor
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
	
	state = monster:GetMonsterState( MONSTATE_DEATH );
	if nil ~= state then
		state:SetSuperArmor( true );	
	end
	]]--
	
	ChangeDeathState( monster );
	CreateTimerBomb( monster ); 	-- ������ź	
	
	SetAnimation( monster );
	
	-- 20������ ���۸� �߰� �� �� ����
	Arg = monster:GetArg();	
	
	Arg:PushLStr( "TargetBase", "beta_safezone_00" );	--���̽��� ����� �� �ֵ��� ���۸� ����.
	Arg:PushLU32( "Pattern", PATTERN_IDLE );	-- ���� ������ ����� �� �ֵ��� ���۸� �����, ���� ���� �� ���� ������ ��� ���·� ����
	Arg:PushLFloat( "AreaDistance", 2000 );		-- ������ ��ġ���� �Ÿ��� ���۸� �����, ������ ��ġ���� �Ÿ��� 2000���� ����
	
end

function CreateAttack1( monster )
end

function CreateAttack2( monster )
end

function CreateAttack3( monster )
end

function CreateTimerBomb( monster )
	monster:CreateTimerBomb( "Resources/Effects/set_num3.seq", "",  1500, "Resources/Sound/challenge_arcade/unique_pawn_countdown.ogg" );		-- �ѹ� ����Ʈ, ����Ʈ ���� ���, ���� �÷���Ÿ��, ���� ����

	Attack = CreateCExplosionAttack();	
	Attack:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_EARTH_BOMBER , deathTime, 30, 0 ); -- ���� � ������ ���� Ÿ�� �Ӽ��� ���, deathTime 3�ʸ� ���, ���ݷ��� 50���� ����
	--Attack:InitAttack1( WEAPONTYPE_MELEE_, ���� Ÿ�� �Ӽ� , �� ������ �ð�, ���ݷ�, 0 );
	Attack:InitAttack2( MAKESPHERE( MAKEVECTOR3( 0, 0, 0 ), 800 ), 1, 1 );
	--Attack:InitAttack2( MAKESPHERE( MAKEVECTOR3( 0, 0, 0 ), ���� ���� ), 1, 1 ); 
	Attack:SetCollisionRangeAdjust( false, false );
		
	Attack:AddPushCondition( 300, 2000, -5000 );	
	
	
	--�ڽ� �� �Ʊ� ������ �߰� �����. ���� ������ �տ��� �Ʒ� �Է¹��� ��ġ�� ���ؼ� �ڽŰ� �Ʊ����� �������� �����Ѵ�.
	--��ġ�� 0���� 1������ ������ �Է��Ѵ�.
	--EXPLOSIONATTACK:SetFriendlyDamage(�ڽ� ������ ����, �ڽ� �� �Ʊ� ������ ����);
	
	Attack:SetFriendlyDamage(0.5, 0.2);
	
	-- 0: ������ �ϰ�����, 1: �Ÿ��������� ����, 2: �Ÿ���������(���������� �Ÿ��� ������ üũ. )
	Attack:SetDamageApplyType( 2 );
		
	-- range ��� 2��° ���� ������ ����, 3��° ���� ������ ����, 4��° ���� ������ ����
	Attack:SetDamageRates( 0.75, 0.5, 0.25 );
	
	-- range ��� 2��° ���� ����, 3��° ���� ����, 4��° ���� ����
	--2��° ���� ���� �������� ù��° ���� �������� SetDamageRates���� ������ ���� �ʾƵ� 1�� ������ ������ ����Ѵ�. (ũ��Ƽ�� ������)
		
	Attack:SetExplosionRanges( 0.4, 0.6, 0.8 );	
	
	monster:AddTimerBombAttack( Attack );

end

function ChangeDeathState( monster )
	deathBombState = CreateDeathBombState( monster, MONINPUT_DEATH, 2000 );
	
	--�����鼭 ������ ��� ���
	--[[
	Attack = CreateCExplosionAttack();	
	Attack:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_EARTH_BOMBER , 0, 10, 0 );	
	Attack:InitAttack2( MAKESPHERE( MAKEVECTOR3( 0, 0, 0 ), 800 ), 1, 1 );
	Attack:SetCollisionRangeAdjust( false, false );
		
	Attack:AddPushCondition( 300, 2000, -5000 );	
	
	
	--�ڽ� �� �Ʊ� ������ �߰� �����. ���� ������ �տ��� �Ʒ� �Է¹��� ��ġ�� ���ؼ� �ڽŰ� �Ʊ����� �������� �����Ѵ�.
	--��ġ�� 0���� 1������ ������ �Է��Ѵ�.
	--EXPLOSIONATTACK:SetFriendlyDamage(�ڽ� ������ ����, �ڽ� �� �Ʊ� ������ ����);
	
	Attack:SetFriendlyDamage(0.5, 0.2);
	
	-- 0: ������ �ϰ�����, 1: �Ÿ��������� ����, 2: �Ÿ���������(���������� �Ÿ��� ������ üũ. )
	Attack:SetDamageApplyType( 2 );
		
	-- range ��� 2��° ���� ������ ����, 3��° ���� ������ ����, 4��° ���� ������ ����
	Attack:SetDamageRates( 0.75, 0.5, 0.25 );
	
	-- range ��� 2��° ���� ����, 3��° ���� ����, 4��° ���� ����
	--2��° ���� ���� �������� ù��° ���� �������� SetDamageRates���� ������ ���� �ʾƵ� 1�� ������ ������ ����Ѵ�. (ũ��Ƽ�� ������)
		
	Attack:SetExplosionRanges( 0.4, 0.6, 0.8 );	
	
	deathBombState:AddAttack( Attack );
	--]]
	monster:AddState( MONINPUT_DEATH, deathBombState );
end

function SetAnimation( monster )
	state = monster:GetMonsterState( MONSTATE_NORMAL );
	if nil ~= state then
		state:SetAnimtionBlend( "BASE", true, 100, 100, true, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
		--state:AddSound( 200, "Resources/Sound/challenge_arcade/unique_pawn_move.ogg" );
	end
	
	state = monster:GetMonsterState( MONSTATE_RUN );
	if nil ~= state then
		if true ==  monster:IsUniqueUnit() then
			state:SetAnimtionBlend( "00000", true, 100, 100, true, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
			--state:AddSound( 200, "Resources/Sound/challenge_arcade/unique_pawn_move.ogg", true );
		else
			state:SetAnimtionBlend( "BASE", true, 100, 100, true, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
			--state:AddSound( 200, "Resources/Sound/challenge_arcade/unique_pawn_move.ogg", true );
		end
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
		state:SetAnimtionBlend( "00001", false, 100, 100, false, true ); -- anim, ���忩��, ����Ÿ��, ��Ŀ����Ÿ��, �������ɿ���, ���¿���
		state:AddSound( 200, "Resources/Sound/challenge_arcade/destroy.ogg" );	
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
		
		if attackMaxDistance > distanceMonsterToActor then
		--{
			-- ���� ���� �Ÿ��ȿ� ���� ���, ���� ����
			monster:SetWaitTime( 670 );	-- �ش� �Լ� ���� �� 670 ���� ���
			--AI_CONTROLLER:RegisterReservedCommand( CreateAttackCommand( GAMETIME+ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1(nearActor, monster) ) );
			AI_CONTROLLER:RegisterReservedCommand( CreateSelfBombCommand( GAMETIME+ADDTIME, monster:GetID(), deathTime ) );	--���� ����
			
			-- ��������   UTIL:GetDirection2To1Rand( ����, ����,  width, height, ������( ���� ���� �������� ���⼱�� ) )
			-- AI_CONTROLLER:RegisterReservedCommand( CreateAttackCommand( GAMETIME+ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1Rand(nearActor, monster, 400, 50, 2) ) );
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
	
	baseFindDistance = 3000;		-- ���̽����� ã�� �Ÿ�

	lastTargetActor = monster:GetTargetActor();	--������ Ÿ�� ����
	if lastTargetActor ~= nil then
			findUserDistance = 50000;
	end
		
	if mainPattern == MONPATTERN_MISSION_ATTACK then
		userFindDistance = 10000;		-- ���� ã�� �Ÿ�
	else
		userFindDistance = 3000;		-- ���� ã�� �Ÿ�
	end
	
		
	-- ���� ���� �Ÿ� 		
	attackMaxDistance = 100;		-- ���� �ִ�Ÿ�( �� �Ÿ����� �ָ� �������� �ʰ� �������� �ٰ�����.)
	
	nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, false, false ); -- 5��° �Ķ���� �þ߰Ÿ��� ������ �ʾƵ� ������� �ϴ� ���(false) 
	
	if PATTERN_IDLE == currPattern then			--���� ������ ��� ������ ��� ����
		FuncIdle( timeDelta, monster );
	elseif PATTERN_PURSUIT == currPattern then	--���� ������ �߰� ������ ��� ����
		FuncPursuit( timeDelta, monster );
	elseif PATTERN_RETURN == currPattern then	--���� ������ ���� ������ ��� ����
		FuncReturn( timeDelta, monster );
	end
end
