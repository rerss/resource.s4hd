require "Resources/Script/MonsterAI_Constants.lua"

-- AI_CONTROLLER

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
end

function CreateAttack1( monster )

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
    Attack1:AddPushCondition( 25, 2000, -5000 );
	--Attack1:AddBlowCondition( 1000, 2000 );	
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
	
end

function Update( timeDelta, monster )	

	-- monster:UpdateWaitTime( timeDelta );	
	
	-- if false == monster:IsWaitTimeValid() then		
		
		baseFindDistance = 100;		-- ���̽����� ã�� �Ÿ�
		userFindDistance = 20000;		-- ���� ã�� �Ÿ�
		
		-- ���� ���� �Ÿ� ( attackMinDistance ~ attackMaxDistance )
		attackMinDistance = 1000;		-- ���� �ּҰŸ�( �� �Ÿ����� ª���� ��������Ʈ ������ �̵��Ѵ�. )
		attackMaxDistance = 20000;		-- ���� �ִ�Ÿ�( �� �Ÿ����� �ָ� �������� �ʰ� �������� �ٰ�����.)
	
		distBySafeArea = UTIL:GetDistBySafeArea( monster, "beta_safezone_00" );		
		-- vEndPos = MAKEVECTOR3( 834, 837, -11339 );
		vEndPos = UTIL:GetSafeAreaPos( "beta_safezone_00" );
		vNewPos = MAKEVECTOR3( 0,0,0 );
		
		
		-- ���̽� �Ÿ� üũ
		if baseFindDistance > distBySafeArea then
			MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, 1.0 );
		else
			nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, false, false ); -- 5��° �Ķ���� �þ߰Ÿ��� ������ �ʾƵ� ������� �ϴ� ���(false) 
			
			if nearActor then
				monster:SetMoveType( MONMOVE_ACTOR );
				monster:SetTargetActorID( nearActor:GetID() );
				distanceMonsterToActor = UTIL:GetDist( monster, nearActor );
				
				if attackMinDistance > distanceMonsterToActor then
					MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, monster:GetEscapeMoveSpeedRate() );
				elseif attackMaxDistance > distanceMonsterToActor then
					monster:SetWaitTime( monster:GetRateOfFire( MONINPUT_ATTACK_0 ) );
					-- AI_CONTROLLER:RegisterReservedCommand( CreateAttackCommand( GAMETIME+ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1(nearActor, monster) ) );				
					
					-- ��������   UTIL:GetDirection2To1Rand( ����, ����,  width, height, ������( ���� ���� �������� ���⼱�� ) )
					AI_CONTROLLER:RegisterReservedCommand( CreateAttackCommand( GAMETIME+ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1Rand(nearActor, monster, 400, 200, 2) ) );					
				else
					monster:SetWaitTime( 300 );		
					-- monster:UpdateHost( timeDelta );
					AI_CONTROLLER:RegisterReservedCommand( CreateMoveToCommand( GAMETIME+ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), monster:GetRakeMoveSpeedRate() ) );
				end			
			else
				MoveToWayPoint( monster, distBySafeArea, vEndPos, vNewPos, 1.0 );		
			end
		
		end		
		
	-- end

end
