require "Resources/Script/ActorStates_Constants.lua"

--------------------------------------
--[[
    �⺻���� ��ų� ù��° ����
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
    �⺻���� ��ų� ù��° ���ݿ� �̾� �ι�° ����
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
    ������ ���� ����
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
    �÷�ġ�⸦ ���� ���� ����
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
    ���� ������ ���� ��
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
	
	-- ��ų����� ���Ǵ� ���� ��... �����Ǿ��� ��� ���� ���·� ����Ǳ����... ������ �ְ� ���� �� ���� ��...
	STATE:SetDelayCngStateTA( 250 );
	
	-- ���� ���� �� ���߿� �ӹ��� �ִ� �ð��� üũ�մϴ�.
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
    �� ������ �õ��մϴ�.
]]--
--------------------------------------
function SpecialAttackByDeathScythe( OneShotTime, Power, Accuracy, AdditionalPower )

    STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveStopWhenDamage( false );
	STATE:SetUseMoveBox( true );
	
	STATE:InitLua( 400, 550, 40, true );
	
	-- ��ų����� ���Ӱ� �߰��� �ʱ�ȭ ��...
	STATE:InitDelayTA( 500, 500 );
	-- ù��° ���� : ù ���� �� �ι�° ���� ������ �������� �ʾ��� ��... ����Ǵ� Delay ����� ���� �ð� ��
	-- �ι�° ���� : �ι�° ���ݱ��� �ߵ� ��, Delay ����� ���� �ð� ��...
	
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
-- ��ų������� ���Ǵ� Ư���� �Լ��Դϴ�. --
----------------------------------------------
function SpecialAttackByDeathScythe_SECOND_IMPACT()

    -- ���⿡���� STATE�� ���� ���� �� �� �����ϴ�.
	-- STATE:SetHitStop( 450, 650 ); ( x ) - �̰� �� ��

    local range = WEAPON:GetRange();
    
    -------------------------------------------------------------
    -- ���� �ٿ��ֱ� ����... Attack1 �Դϴ�.
    AttackStun = CreateCAttack();
    AttackStun:InitAttack1( WEAPONTYPE_DEATH_SCYTHE, ATTACKATTRIB_DEATH_SCYTHE_SP_RIGHT_ATTACK, 350, 1, 1 );
    --                      ���ݹ��� Ÿ��            ���� �Ӽ�                                  �ߵ�����, ������, �߰�������
    AttackStun:InitAttack2( MAKEBOX( MAKEVECTOR3( 0, 140, 100 ), MAKEVECTOR3( 0, 0, -1 ), range * 0.7, range * 0.25, range * 0.85 ), 1, 1, false );
	AttackStun:AddStunCondition( 2000, 3500, 0, 1000 );
    
    -- ���ݿ� ���� �ʱ�ȭ �۾� �� �־�� �ϴ� ��...
    AttackStun:EnterState( ACTOR );
    
    -- ���ݿ� ���� ������ STATE�� �����մϴ�.
    AddAttack( ATTACKS, AttackStun );
    -------------------------------------------------------------
    
    -- ���� �ٿ��ֱ� ����... Attack �̰� Attack1 �ƴ�...
    Attack = CreateCAttack();
    Attack:InitAttack1( WEAPONTYPE_DEATH_SCYTHE, ATTACKATTRIB_DEATH_SCYTHE_SP_RIGHT_ATTACK, 450, 72, 10 );
    --                  ���ݹ��� Ÿ��            ���� �Ӽ�                                  �ߵ�����, ������, �߰�������
    Attack:InitAttack2( MAKEFAN( MAKEVECTOR3( 0, 140, -50 ), MAKEVECTOR2( 0, -1 ), range * 0.7, range * 0.25, range * 0.85, 120 ), 1, 1, false );
    Attack:SetCameraShakeEnable( true, true, 0 );
    Attack:SetCameraShakeSetFactor1( 410, 70, 40 );
    Attack:SetCameraShakeSetFactor2( 260, 100, 2000.0, 3000.0 ); 
    Attack:SetCameraShakeRandomDir( true );
	Attack:SetCameraShakeWhenSuccess( true );
    
    -- ���ݿ� ���� �ʱ�ȭ �۾� �� �־�� �ϴ� ��...
    Attack:EnterState( ACTOR );
    
    -- ���ݿ� ���� ������ STATE�� �����մϴ�.
    AddAttack( ATTACKS, Attack );

end