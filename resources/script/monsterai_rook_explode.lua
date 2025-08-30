require "Resources/Script/MonsterAI_Constants.lua"

-- AI_CONTROLLER

function Create( monster )
			
	CreateAttack1( monster );
	-- defense aura	
	--monster:CreateDefenseAura( 200, 1000, 1, "Resources/Effects/pve_mon_buf_eff01.seq" );	-- üũ�ð�, ����, ȿ��( 0.8�̸� 80%��ŭ �������� �� ���� ), ȿ��������
	-- + ��ġ�� ���� �߰� ���ݿ��� ������ ���� �ʽ��ϴ�. �⺻ ���������� ������ �ݴϴ�.
	--monster:SetCanSufferDefenseAura( false );	-- ���潺 ������ ������ ���� ���ΰ�? ( true�� �ް�, false�� �� �޴´� )
	
	SetAnimation( monster );
end

function CreateAttack1( monster )

	-- create state
	attackState = CreateAttackState( monster, MONINPUT_ATTACK_0, 1000); -- ����, ���ݻ����ε���, �������ӽð� 3000
	--attackState:SetMoveBoxMultiplier( 1 );
	--attackState:SetAnimationSpeed( 1.1 );
	
	Attack1 = CreateCAttack();
	Attack1:InitAttack1( WEAPONTYPE_SENTRYBOMB_BUILDER, ATTACKATTRIB_SENTRYBOMB_BUILDER, 400 , 30, 0 ); 
	--Attack:InitAttack1( WEAPONTYPE_MELEE_, ���� Ÿ�� �Ӽ� , �� ������ �ð�, ���ݷ�, 0 );
	Attack1:InitAttack2( MAKESPHERE( MAKEVECTOR3( 0, 0, 0 ), 800 ), 1, 1, false );
	Attack1:AddBlowCondition( 2000, 2000 );
	--Attack:InitAttack2( MAKESPHERE( MAKEVECTOR3( 0, 0, 0 ), ���� ���� ), 1, 1, false ); 
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

function Update( timeDelta, monster )	

	-- monster:UpdateWaitTime( timeDelta );
	
	-- if false == monster:IsWaitTimeValid() then
	
		baseFindDistance = 3000;		-- ���̽����� ã�� �Ÿ�
		userFindDistance = 1000;		-- ���� ã�� �Ÿ�
		
		-- ���� ���� �Ÿ� 		
		attackMaxDistance = 800;		-- ���� �ִ�Ÿ�( �� �Ÿ����� �ָ� �������� �ʰ� �������� �ٰ�����.)
		
		distBySafeArea = UTIL:GetDistBySafeArea( monster, "beta_safezone_00" );		
		-- vEndPos = MAKEVECTOR3( 834, 837, -11339 );
		vEndPos = UTIL:GetSafeAreaPos( "beta_safezone_00" );
		vNewPos = MAKEVECTOR3( 0,0,0 );
		
		-- ���̽� �Ÿ� üũ
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
				
				-- ��������   UTIL:GetDirection2To1Rand( ����, ����,  width, height, ������( ���� ���� �������� ���⼱�� ) )
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
