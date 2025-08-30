require "Resources/Script/ActorStates_Constants.lua"

-- �����̵� ����
function IRONBOOTS_Dash_Kick_Attack( OneShotTime, Power, Accuracy, AdditionalPower )
    STATE:SetMoveBoxMultiplier( 1.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveStopWhenDamage( false );
	STATE:SetUseMoveBox( true );
	STATE:SetSpendSp( 40 );
	
	STATE:InitLua( 800, 1000, 0, true );
	
	local range = WEAPON:GetRange();
	local crushDamage	= WEAPON:GetFloat( 1 );
	local baseDamage	= WEAPON:GetFloat( 2 );
	
	-- �⺻������ �� �ּ� ������ ũ�� ���̴�. ����... 10 + �̵� �ӵ��� ���� ���ݰ��� �����Ѵ�.
	-- Dash ������ �����ϸ� ����� ���ݷ��� ���� �� �ֵ��� �Ѵ�.
    STATE:SetBaseAttackDamage( 3.5 );
    STATE:SetMultiplier( 1.0 ); -- ��Ŭ�� ���� �޸��� �� ��� �߰��� ������ ex) 2��� �Է��ϸ� �� �ջ� �������� 2��...
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_DASH_KICK_ATTACK, 360, (Power*0.6), AddtionalPower ); -- ����������� ���� �������� �����մϴ�.
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,350,100), MAKEVECTOR3(0,0,-1), range*0.5, 250, range), 1, 1, false  ); -- 0 ���� ���� (���� ���� 250)
    Attack1:SetAttackSuccessCondition( CONDITION_ACTOR );
	Attack1:SetPlaySound( false );
	Attack1:AddBlowCondition( 2000, 1000 );
	AddAttack( ATTACKS, Attack1 );
	
	
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_DASH_KICK_ATTACK, 460, (Power*0.6), AddtionalPower ); -- ����������� ���� �������� �����մϴ�.
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,350,100), MAKEVECTOR3(0,0,-1), range*0.5, 250, range), 1, 1, false  );
    Attack2:SetAttackSuccessCondition( CONDITION_ACTOR );
    Attack2:AddBlowCondition( 2000, 1000 );
	AddAttack( ATTACKS, Attack2 );

	Attack = CreateCAttack();
    Attack:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_DASH_KICK_ATTACK, 580, (Power*0.8), AddtionalPower ); -- ����° Ÿ�ݹڽ��� Ray ũ��Ƽ���� �߰��մϴ�.
    Attack:InitAttack2( MAKERAY( MAKEVECTOR3(0.0, 250.0, 100.0), MAKEVECTOR3( 0.0, 0.0, -1.0), range), 1, 1, false  );    
    Attack:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack );    

    Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_DASH_KICK_ATTACK, 580, (Power*0.8), AddtionalPower ); -- ����������� ���� �������� �����մϴ�.
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,100), MAKEVECTOR3(0,0,-1), range*0.5, 250, range), 1, 1, false  );
    Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 200, 50, 40 );
    Attack3:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 );
    Attack3:SetCameraShakeWhenSuccess( true );  
	Attack3:SetPlaySound( false );
	Attack3:AddBlowCondition( 3000, 2000 );
    AddAttack( ATTACKS, Attack3 );
end

-- ù��° ����
function IRONBOOTS_First_Kick_Attack( OneShotTime, Power, Accuracy, AdditionalPower )
    STATE:SetMoveBoxMultiplier( 1.0 );
	STATE:SetMoveSpeedRate( 0.5 );
	STATE:SetMoveStopWhenDamage( true );
	STATE:SetStealthCancel( true );	
	--STATE:SetHitStop( 350, 550 );
	STATE:ResetMoveBoxAtSubStateChange( true ); 
	
	STATE:InitLua( 800, 500, 40, true );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_FIRST_KICK_ATTACK, 350,(Power*0), 0 );
	Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    Attack1:AddBlowCondition( 0, 0 );
	Attack1:AddPushCondition( 0, 0, 0 );
	Attack1:SetAlwaysCritical( false );
	
	AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_FIRST_KICK_ATTACK, 350,(Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEFAN( MAKEVECTOR3(0,140,-50), MAKEVECTOR2(0,-1), range*0.7, range*0.25, range*0.9, 120 ), 1, 1, false  );        
	Attack2:AddBlowCondition( 0, 0 );
	AddAttack( ATTACKS, Attack2 );
    
    --Attack2 = CreateCAttack();
    --Attack2:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_OBJECT_BLAST, 350,(Power*0.5)+AdditionalPower, AddtionalPower );
    --Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.6, range*0.7, range*0.7 ), 1, 1, false  );        
    --Attack2:AddBlowCondition( 0, 0 );
	--Attack2:AddPushCondition( 200, 2000, -5000 );
	--AddAttack( ATTACKS, Attack2 );
end

-- �÷����� ����
function IRONBOOTS_Upper_Kick_Attack( OneShotTime, Power, Accuracy, AdditionalPower )
    STATE:SetStealthCancel( true );	
	STATE:SetHitStop( 440, 550 );	
	STATE:SetMoveBoxMultiplier( 2.0 );	
	STATE:ResetMoveBoxAtSubStateChange( true ); 

	STATE:InitLua( 800, 500, 40, false );	
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_UPPER_KICK_ATTACK, 420, (Power*0.3), AddtionalPower );
	Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    AddAttack( ATTACKS, Attack1 );
	Attack1:AddBlowCondition( 1000, 2500 );
	Attack1:SetAlwaysCritical( true );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_UPPER_KICK_ATTACK, 320, (Power*1.4), AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.8, range*1.2, range*1.0 ), 1, 1, false  );            
    Attack2:AddBlowCondition( 0, 3500 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 320, 40, 40 );
    Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
    Attack2:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack2);
end

-- ���� ������� ���� �ִ�
function IRONBOOTS_Jump_Smash_Kick_Attack( OneShotTime, Power, Accuracy, AdditionalPower )
    STATE:SetDrop( 400, MAKEVECTOR3( 0, -4000, -6000 ) );
	STATE:SetStealthCancel( true );
	STATE:SetCoolTime( 1500 );
	STATE:SetMoveBoxMultiplier( 0 );
	--STATE:SetHitStop( 350, 550 );
	STATE:EnableCameraShake( true, false, 600 );
	STATE:SetCameraShakeFactor1( 100, 50, 30 );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );
	
	STATE:InitLua( 600, 600, 40, false );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_JUMP_SMASH_KICK_ATTACK, 600, (Power*1.5)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,0), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_JUMP_SMASH_KICK_ATTACK, 600, (Power*1.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0,0,0), 300, range ), 1, 1, false  );        
    Attack2:AddPushCondition( 100, 2000, -5000 );
    AddAttack( ATTACKS, Attack2 );
end

-- �ι�° ���� �ִ�
function IRONBOOTS_Second_Kick_Attack( OneShotTime, Power, Accuracy, AdditionalPower )
    STATE:SetMoveBoxMultiplier( 0.8 );	
	STATE:SetStealthCancel( true );	
	STATE:SetMoveSpeedRate( 0.5 );
	--STATE:SetHitStop( 350, 550 );
	STATE:ResetMoveBoxAtSubStateChange( true ); 	
	
	STATE:InitLua( 800, 450, 40, true );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_SECOND_KICK_ATTACK, 350,Power+AdditionalPower, AddtionalPower );
	Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_SECOND_KICK_ATTACK, 350,(Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.6, range*0.7, range*0.8 ), 1, 1, false  );        
    Attack2:AddPushCondition( 50, 2000, -5000 );
    AddAttack( ATTACKS, Attack2 );
end

-- ����° ���� �ִ�
function IRONBOOTS_Third_Kick_Attack( OneShotTime, Power, Accuracy, AdditionalPower )
    STATE:SetMoveBoxMultiplier( 0.9 );	
	STATE:SetStealthCancel( true );	
	--STATE:SetHitStop( 350, 550 );
	STATE:ResetMoveBoxAtSubStateChange( true ); 	
	
	STATE:InitLua( 800, 600, 40, true );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_THIRD_KICK_ATTACK, 300, 0, 0 );
	Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( false );
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_THIRD_KICK_ATTACK, 300, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEFAN( MAKEVECTOR3(0,140,-50), MAKEVECTOR2(0,-1), range*0.7, range*0.25, range*1.0, 120 ), 1, 1, false  );       
    Attack2:AddBlowCondition( 3000, 1200 );
    AddAttack( ATTACKS, Attack2 );
end

-- �׹�° ���� �ִ�
--function IRONBOOTS_Fourth_Kick_Attack( OneShotTime, Power, Accuracy, AdditionalPower )
--    STATE:SetMoveBoxMultiplier( 2.5 );	
--	STATE:SetStealthCancel( true );	
--	STATE:SetHitStop( 350, 550 );	
--	STATE:SetHitAndDelay(true);
		
--	STATE:InitLua( 1150, 1200, 40, true );
	
--	local range = WEAPON:GetRange();
    
--    Attack1 = CreateCAttack();
--    Attack1:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_FOURTH_KICK_ATTACK, 750, Power+AdditionalPower, AddtionalPower );
--	Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
--    Attack1:SetAlwaysCritical( true );
--    AddAttack( ATTACKS, Attack1 );
    
--    Attack2 = CreateCAttack();
--    Attack2:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_FOURTH_KICK_ATTACK, 400, Power+AdditionalPower, AddtionalPower );
--    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.6, range*0.7, range*1.0 ), 1, 1, false  );            
--    AddAttack( ATTACKS, Attack2 );
    
--    Attack3 = CreateCAttack();
--    Attack3:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_FOURTH_KICK_ATTACK, 750, Power+AdditionalPower, AddtionalPower );
--    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.6, range*0.7, range*1.0 ), 1, 1, false  );            
--    Attack3:AddBlowCondition( 3000, 2000 );
--    Attack3:SetCameraShakeEnable( true, true, 0 );
--    Attack3:SetCameraShakeSetFactor1( 50, 25, 20 );
--    Attack3:SetCameraShakeSetFactor2( 0, 25, 2000, 3000 );    
--    Attack3:SetCameraShakeWhenSuccess( true );
--    AddAttack( ATTACKS, Attack3 );
--end

-- �ν�Ʈ ���۽� ������ �ִ�
function IRONBOOTS_Boost_Dash_Attack( OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:SetMoveBoxMultiplier( 1.6 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveStopWhenDamage( true );
	STATE:SetUseMoveBox( true );
	STATE:SetWeaponInputWaitTime( 100 );    --�� ������ �����ϰ� ������ �߻��� �� �ֱ���� �Է� ��� �ð�...
	STATE:SetRunSpeedMultiplier( 2.0 );     --�޸��� �ӵ� (ex. ���� Actor�� �ִ� �ӵ� X ? )
	STATE:SetSpendMPValue( 50 );            --�� ������ �ߵ��ϸ� �ѹ��� �Ҹ�Ǵ� MP
	STATE:SetSpendMPSpeed( 5 );           --�� ���� ���϶�... ���������� MP�� �Ҹ�� �ӵ��� �����մϴ�.
	STATE:SetFastRunCoolTime( 10000 );		-- �ν�Ʈ ��Ÿ��.
	
	-- ù��° ���ڰ�... �޸��� �ӵ� ������ �ð�...
	STATE:InitLua( 800, 100, 40, true );

end

-------------------------------------------------------------------------------------
-- ��� ���� ����
-------------------------------------------------------------------------------------

-- �÷����� ����
function IRONBOOTS_Upper_Kick_Attack_Normal( OneShotTime, Power, Accuracy, AdditionalPower )
    STATE:SetStealthCancel( true );	
	STATE:SetHitStop( 550, 850 );	
	STATE:SetMoveBoxMultiplier( 2.0 );	
	STATE:ResetMoveBoxAtSubStateChange( true ); 

	STATE:InitLua( 800, 500, 40, false );	
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_UPPER_KICK_ATTACK, 420, (Power*0.3), AddtionalPower );
	Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    AddAttack( ATTACKS, Attack1 );
	Attack1:AddBlowCondition( 1000, 2500 );
	Attack1:SetAlwaysCritical( true );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_UPPER_KICK_ATTACK, 320, (Power*1.4), AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.8, range*1.2, range*1.0 ), 1, 1, false  );            
    Attack2:AddBlowCondition( 0, 3500 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 320, 40, 40 );
    Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
    Attack2:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack2);
end

-- �ι�° ���� �ִ�
function IRONBOOTS_Second_Kick_Attack_Normal( OneShotTime, Power, Accuracy, AdditionalPower )
    STATE:SetMoveBoxMultiplier( 0.8 );	
	STATE:SetMoveSpeedRate( 0.5 );
	STATE:SetStealthCancel( true );	
	--STATE:SetHitStop( 350, 550 );
	STATE:ResetMoveBoxAtSubStateChange( true ); 	
	
	STATE:InitLua( 800, 450, 40, true );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_SECOND_KICK_ATTACK, 250,Power+AdditionalPower, AddtionalPower );
	Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( true );
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_SECOND_KICK_ATTACK, 350,(Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.6, range*0.7, range*0.8 ), 1, 1, false  );        
    Attack2:AddPushCondition( 100, 2000, -5000 );
    AddAttack( ATTACKS, Attack2 );
end

-- ����° ���� �ִ�
function IRONBOOTS_Third_Kick_Attack_Normal( OneShotTime, Power, Accuracy, AdditionalPower )
    STATE:SetMoveBoxMultiplier( 0.9 );	
	STATE:SetStealthCancel( true );	
	--STATE:SetHitStop( 350, 550 );
	STATE:ResetMoveBoxAtSubStateChange( true ); 	
	
	STATE:InitLua( 800, 600, 40, true );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_THIRD_KICK_ATTACK, 300, 0, 0 );
	Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    Attack1:SetAlwaysCritical( false );
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_IRON_BOOTS, ATTACKATTRIB_IRON_BOOTS_THIRD_KICK_ATTACK, 300, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEFAN( MAKEVECTOR3(0,140,-50), MAKEVECTOR2(0,-1), range*0.7, range*0.25, range*1.0, 120 ), 1, 1, false  );       
    Attack2:AddBlowCondition( 3000, 1200 );
    AddAttack( ATTACKS, Attack2 );
end

-- �ν�Ʈ ���۽� ������ �ִ�
function IRONBOOTS_Boost_Dash_Attack_Normal( OneShotTime, Power, Accuracy, AdditionalPower )

	STATE:SetMoveBoxMultiplier( 1.6 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveStopWhenDamage( true );
	STATE:SetUseMoveBox( true );
	STATE:SetWeaponInputWaitTime( 100 );    --�� ������ �����ϰ� ������ �߻��� �� �ֱ���� �Է� ��� �ð�...
	STATE:SetRunSpeedMultiplier( 2.0 );     --�޸��� �ӵ� (ex. ���� Actor�� �ִ� �ӵ� X ? )
	STATE:SetSpendMPValue( 50 );            --�� ������ �ߵ��ϸ� �ѹ��� �Ҹ�Ǵ� MP
	STATE:SetSpendMPSpeed( 5 );           --�� ���� ���϶�... ���������� MP�� �Ҹ�� �ӵ��� �����մϴ�.
	STATE:SetFastRunCoolTime( 10000 );		-- �ν�Ʈ ��Ÿ��.
	
	-- ù��° ���ڰ�... �޸��� �ӵ� ������ �ð�...
	STATE:InitLua( 800, 100, 40, true );

end
-------------------------------------------------------------------------------------
