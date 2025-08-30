require "Resources/Script/ActorStates_Constants.lua"

--------------------------------------
--[[
    기본적인 사신낫 첫번째 공격
]]--
--------------------------------------
function BasicAttackByDeathScythe_1( OneShotTime, Power, Accuracy, AdditionalPower )

    STATE:SetMoveBoxMultiplier( 1.7 );
	STATE:SetMoveStopWhenDamage( true );
	STATE:SetStealthCancel( true );	
	STATE:SetHitStop( 300, 400 );	
	
	STATE:InitLua( 310, 200, 40, true );
	
	local range = WEAPON:GetRange();
      
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DEATH_SCYTHE, ATTACKATTRIB_DEATH_SCYTHE_ATTACK_1, 300, (Power*0.6), AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,50), MAKEVECTOR3(0,0,-1), range*1.2, range*0.6, range*1.1 ), 1, 1, false  );        
    Attack2:AddPushCondition( 100, 2000, -5000 );
    AddAttack( ATTACKS, Attack2 );

end


--------------------------------------
--[[
    기본적인 사신낫 첫번째 공격에 이어 두번째 공격
]]--
--------------------------------------
function BasicAttackByDeathScythe_2( OneShotTime, Power, Accuracy, AdditionalPower )

    STATE:SetMoveBoxMultiplier( 1.0 );	
	STATE:SetStealthCancel( true );	
	STATE:SetHitStop( 200, 350 );	
	STATE:SetMoveBoxMultiplier( 1.0 );
	
	STATE:InitLua( 400, 210, 40, true );
	
	local range = WEAPON:GetRange();
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DEATH_SCYTHE, ATTACKATTRIB_DEATH_SCYTHE_ATTACK_2, 200, (Power*0.4), AddtionalPower );
    Attack2:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0,50,-100), MAKEVECTOR2(0,-1), range*0.7, range*0.8 ), 1, 1, false  );        
    Attack2:AddPushCondition( 100, 2000, -5000 );
    AddAttack( ATTACKS, Attack2 );

	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DEATH_SCYTHE, ATTACKATTRIB_DEATH_SCYTHE_ATTACK_2, 300, (Power*0.4), AddtionalPower );
    Attack2:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0,50,-100), MAKEVECTOR2(0,-1), range*0.7, range*0.6 ), 1, 1, false  );        
    Attack2:AddPushCondition( 100, 2000, -5000 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 180, 40, 20 ); 
    Attack2:SetCameraShakeSetFactor2( 200, 50, 2000, 3000 );  
    Attack2:SetCameraShakeWhenSuccess( true );
	AddAttack( ATTACKS, Attack2 );
	
end


--------------------------------------
--[[
    마지막 연속 공격
]]--
--------------------------------------
function BasicAttackByDeathScythe_3( OneShotTime, Power, Accuracy, AdditionalPower )
    
    STATE:SetStealthCancel( true );	
	STATE:SetHitStop( 250, 350 );	
	
	STATE:InitLua(700, 200, 40, false );	
	STATE:SetMoveBoxMultiplier( 2.5 );
	
	local range = WEAPON:GetRange();
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DEATH_SCYTHE, ATTACKATTRIB_DEATH_SCYTHE_ATTACK_3, 250, (Power*0.6), AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.8, range*0.8, range*1.2 ), 1, 1, false  );  
    Attack2:AddBlowCondition( 0, 2500 );
    --Attack2:AddUpperCutCondition( 0, 1500 );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 230, 70, 20 );
    Attack2:SetCameraShakeSetFactor2( 0, 70, 2000, 3000 );    
    Attack2:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack2 );
    
end


--------------------------------------
--[[
    올려치기를 위한 공격 수행
]]--
--------------------------------------
function UpperCutByDeathScythe( OneShotTime, Power, Accuracy, AdditionalPower )
    
    STATE:SetStealthCancel( true );	
	STATE:SetHitStop( 350, 550 );	
	
	STATE:SetSpendSp( 20 );
	STATE:InitLua( 400, 500, 40, true );	
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_DEATH_SCYTHE, ATTACKATTRIB_DEATH_SCYTHE_COUNTER_CRITICAL, 420, (Power*0.3), AddtionalPower );
	Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DEATH_SCYTHE, ATTACKATTRIB_DEATH_SCYTHE_COUNTER_ATTACK, 320, (Power*1.4), AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.8, range*1.2, range*1.0 ), 1, 1, false  );            
    Attack2:AddBlowCondition( 0, 3500 );
    Attack2:AddUpperCutCondition( 0, 3500 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 320, 40, 40 );
    Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
    Attack2:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack2 );
    
end

--------------------------------------
--[[
    점프 공격을 위한 것
]]--
--------------------------------------
function JumpAttackByDeathScythe( OneShotTime, Power, Accuracy, AdditionalPower )

    STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveStopWhenDamage( false );
	STATE:SetMoveSpeedRate( 0.5 );
	STATE:SetHitStop( 250, 420 );
	
	STATE:SetSpendSp( 10 );
	STATE:InitLua( 1000, 0, 0, false );
	
	-- 사신낫에서 사용되는 점프 후... 착지되었을 경우 다음 상태로 변경되기까지... 딜레이 주고 싶을 때 쓰는 것...
	STATE:SetDelayCngStateTA( 250 );
	
	-- 점프 공격 후 공중에 머물러 있는 시간을 체크합니다.
	STATE:SetTimeToStaySky( 500 );
	
	local range = WEAPON:GetRange();	
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_DEATH_SCYTHE, ATTACKATTRIB_DEATH_SCYTHE_JUMP_ATTACK, 250, (Power*1.2), AddtionalPower );
    Attack1:InitAttack2( MAKEFAN( MAKEVECTOR3(0,150,-50), MAKEVECTOR2(0,-1), range*0.8, range*1.2, range*1.0, 120 ), 1, 1, false  );
    Attack1:AddBlowCondition( 0, 0 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 230, 40, 30 );
    Attack1:SetCameraShakeSetFactor2( 10.0, 60.0, 2000.0, 3000.0 );
    Attack1:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack1 );

end

--------------------------------------
--[[
    강 공격을 시도합니다.
]]--
--------------------------------------
function SpecialAttackByDeathScythe( OneShotTime, Power, Accuracy, AdditionalPower )

    STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveStopWhenDamage( false );
	STATE:SetUseMoveBox( true );
	
	STATE:InitLua( 400, 550, 40, true );
	
	-- 사신낫에서 새롭게 추가된 초기화 값...
	STATE:InitDelayTA( 500, 500 );
	-- 첫번째 인자 : 첫 공격 후 두번째 공격 조건을 충족하지 않았을 때... 수행되는 Delay 모션을 위한 시간 값
	-- 두번째 인자 : 두번째 공격까지 발동 후, Delay 모션을 위한 시간 값...
	
	local range = WEAPON:GetRange();	
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_DEATH_SCYTHE, ATTACKATTRIB_DEATH_SCYTHE_SP_RIGHT_ATTACK, 330, (Power*1.4)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.6, range*0.6, range*1.1 ), 1, 1, false );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 300, 60, 10 ); 
    Attack1:SetCameraShakeSetFactor2( 260, 25, 2000, 3000 );  
    Attack1:SetCameraShakeWhenSuccess( true );   
	--Attack1:AddStunCondition( 2000, 3500, 0, 1000 );
    AddAttack( ATTACKS, Attack1 );

end

----------------------------------------------
-- 사신낫에서만 사용되는 특수한 함수입니다. --
----------------------------------------------
function SpecialAttackByDeathScythe_SECOND_IMPACT()

    -- 여기에서는 STATE와 같은 것을 쓸 수 없습니다.
	-- STATE:SetHitStop( 450, 650 ); ( x ) - 이거 못 씀

    local range = WEAPON:GetRange();
    
    -------------------------------------------------------------
    -- 복사 붙여넣기 조심... Attack1 입니다.
    AttackStun = CreateCAttack();
    AttackStun:InitAttack1( WEAPONTYPE_DEATH_SCYTHE, ATTACKATTRIB_DEATH_SCYTHE_SP_RIGHT_ATTACK, 350, 1, 1 );
    --                      공격무기 타입            공격 속성                                  발동시점, 데미지, 추가데미지
    AttackStun:InitAttack2( MAKEBOX( MAKEVECTOR3( 0, 140, 100 ), MAKEVECTOR3( 0, 0, -1 ), range * 0.7, range * 0.25, range * 0.85 ), 1, 1, false );
	AttackStun:AddStunCondition( 2000, 3500, 0, 1000 );
    
    -- 공격에 대한 초기화 작업 꼭 있어야 하는 것...
    AttackStun:EnterState( ACTOR );
    
    -- 공격에 대한 정보를 STATE에 저장합니다.
    AddAttack( ATTACKS, AttackStun );
    -------------------------------------------------------------
    
    -- 복사 붙여넣기 조심... Attack 이고 Attack1 아님...
    Attack = CreateCAttack();
    Attack:InitAttack1( WEAPONTYPE_DEATH_SCYTHE, ATTACKATTRIB_DEATH_SCYTHE_SP_RIGHT_ATTACK, 450, 72, 10 );
    --                  공격무기 타입            공격 속성                                  발동시점, 데미지, 추가데미지
    Attack:InitAttack2( MAKEFAN( MAKEVECTOR3( 0, 140, -50 ), MAKEVECTOR2( 0, -1 ), range * 0.7, range * 0.25, range * 0.85, 120 ), 1, 1, false );
    Attack:SetCameraShakeEnable( true, true, 0 );
    Attack:SetCameraShakeSetFactor1( 410, 70, 40 );
    Attack:SetCameraShakeSetFactor2( 260, 100, 2000.0, 3000.0 ); 
    Attack:SetCameraShakeRandomDir( true );
	Attack:SetCameraShakeWhenSuccess( true );
    
    -- 공격에 대한 초기화 작업 꼭 있어야 하는 것...
    Attack:EnterState( ACTOR );
    
    -- 공격에 대한 정보를 STATE에 저장합니다.
    AddAttack( ATTACKS, Attack );

end