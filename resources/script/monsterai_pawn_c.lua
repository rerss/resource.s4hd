require "Resources/Script/MonsterAI_Constants.lua"

-- AI_CONTROLLER

deathTime = 0;

function Create( monster )

	--[[ 슈퍼아머 부분
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
	CreateTimerBomb( monster ); 	-- 시한폭탄	
	
	SetAnimation( monster );
	
end

function CreateAttack1( monster )
end

function CreateAttack2( monster )
end

function CreateAttack3( monster )
end

function CreateTimerBomb( monster )
	monster:CreateTimerBomb( "Resources/Effects/set_num3.seq", "" );

	Attack = CreateCExplosionAttack();	
	Attack:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_EARTH_BOMBER , deathTime, 50, 0 ); -- 현재 어스 봄버의 공격 타입 속성을 사용, deathTime 3초를 사용, 공격력은 50으로 설정
	--Attack:InitAttack1( WEAPONTYPE_MELEE_, 공격 타입 속성 , 선 딜레이 시간, 공격력, 0 );
	Attack:InitAttack2( MAKESPHERE( MAKEVECTOR3( 0, 0, 0 ), 800 ), 1, 1 );
	--Attack:InitAttack2( MAKESPHERE( MAKEVECTOR3( 0, 0, 0 ), 공격 범위 ), 1, 1 ); 
	Attack:SetCollisionRangeAdjust( false, false );
		
	Attack:AddPushCondition( 300, 2000, -5000 );	
	
	
	--자신 및 아군 데미지 추가 적용식. 최종 데미지 합에서 아래 입력받은 수치를 곱해서 자신과 아군에게 데미지를 적용한다.
	--수치는 0에서 1까지의 정수로 입력한다.
	--EXPLOSIONATTACK:SetFriendlyDamage(자신 데미지 비율, 자신 외 아군 데미지 비율);
	
	Attack:SetFriendlyDamage(0.5, 0.2);
	
	-- 0: 데미지 일괄적용, 1: 거리별데미지 적용, 2: 거리별데미지(폭발점과의 거리를 가지고 체크. )
	Attack:SetDamageApplyType( 2 );
		
	-- range 대비 2번째 범위 데미지 비율, 3번째 범위 데미지 비율, 4번째 범위 데미지 비율
	Attack:SetDamageRates( 0.75, 0.5, 0.25 );
	
	-- range 대비 2번째 범위 비율, 3번째 범위 비율, 4번째 범위 비율
	--2번째 범위 비율 이전값인 첫번째 범위 비율에는 SetDamageRates에서 세팅을 하지 않아도 1의 데미지 비율을 계산한다. (크리티컬 데미지)
		
	Attack:SetExplosionRanges( 0.4, 0.6, 0.8 );	
	
	monster:AddTimerBombAttack( Attack );

end

function ChangeDeathState( monster )
	deathBombState = CreateDeathBombState( monster, MONINPUT_DEATH, 2000 );
	--[[
	Attack = CreateCExplosionAttack();	
	Attack:InitAttack1( WEAPONTYPE_MELEE_, ATTACKATTRIB_EARTH_BOMBER , 0, 10, 0 );	
	Attack:InitAttack2( MAKESPHERE( MAKEVECTOR3( 0, 0, 0 ), 800 ), 1, 1 );
	Attack:SetCollisionRangeAdjust( false, false );
		
	Attack:AddPushCondition( 300, 2000, -5000 );	
	
	
	--자신 및 아군 데미지 추가 적용식. 최종 데미지 합에서 아래 입력받은 수치를 곱해서 자신과 아군에게 데미지를 적용한다.
	--수치는 0에서 1까지의 정수로 입력한다.
	--EXPLOSIONATTACK:SetFriendlyDamage(자신 데미지 비율, 자신 외 아군 데미지 비율);
	
	Attack:SetFriendlyDamage(0.5, 0.2);
	
	-- 0: 데미지 일괄적용, 1: 거리별데미지 적용, 2: 거리별데미지(폭발점과의 거리를 가지고 체크. )
	Attack:SetDamageApplyType( 2 );
		
	-- range 대비 2번째 범위 데미지 비율, 3번째 범위 데미지 비율, 4번째 범위 데미지 비율
	Attack:SetDamageRates( 0.75, 0.5, 0.25 );
	
	-- range 대비 2번째 범위 비율, 3번째 범위 비율, 4번째 범위 비율
	--2번째 범위 비율 이전값인 첫번째 범위 비율에는 SetDamageRates에서 세팅을 하지 않아도 1의 데미지 비율을 계산한다. (크리티컬 데미지)
		
	Attack:SetExplosionRanges( 0.4, 0.6, 0.8 );	
	
	deathBombState:AddAttack( Attack );
	--]]
	monster:AddState( MONINPUT_DEATH, deathBombState );
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


function Update( timeDelta, monster )	

	-- monster:UpdateWaitTime( timeDelta );
	
	-- if false == monster:IsWaitTimeValid() then
		
		-- vEndPos = MAKEVECTOR3( 834, 837, -11339 );
		vEndPos = UTIL:GetSafeAreaPos( "beta_safezone_00" );
		vNewPos = MAKEVECTOR3( 0,0,0 );
		
		local	findUserDistance = 1000;
		local	selfBombDistance = 100;
		
		lastTargetActor = monster:GetTargetActor();
		if lastTargetActor ~= nil then
			findUserDistance = 50000;
		end
		
		nearActor = UTIL:GetActorByMinDist(true, monster, 0, findUserDistance, true, false );
		
		if nearActor then
			monster:SetMoveType( MONMOVE_ACTOR );
			monster:SetTargetActorID( nearActor:GetID() );
			distanceMonsterToActor = UTIL:GetDist( monster, nearActor );
			if distanceMonsterToActor < selfBombDistance then
				AI_CONTROLLER:RegisterReservedCommand( CreateSelfBombCommand( GAMETIME+ADDTIME, monster:GetID(), deathTime ) );
			else
				monster:SetWaitTime( INTERVAL_UPDATE_TIME );
				-- monster:UpdateHost( timeDelta );
				AI_CONTROLLER:RegisterReservedCommand( CreateMoveToCommand( GAMETIME+ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), monster:GetRakeMoveSpeedRate() ) );
			end			
		else
			if monster:FindPath( vNewPos, vEndPos ) then
			--{
				monster:SetWaitTime( INTERVAL_UPDATE_TIME );
				-- monster:UpdateHost( timeDelta );
				AI_CONTROLLER:RegisterReservedCommand( CreateMoveToCommand( GAMETIME+ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), 1.0 ) );
			--}	
			else
			--{
				monster:SetWaitTime( 2000 );
			--}
			end
		end		
		
	-- end

end
