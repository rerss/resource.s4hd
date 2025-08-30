require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	�⺻ SigmaBladeJumpDash ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--���� ���� range = 500
function StandardSigmaBladeJumpDash(  OneShotTime, Power, Accuracy, AdditionalPower )   
	
	STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveSpeedRate( 0.5 )
	STATE:SetHPAbsorptionPer( 0 );	-- HP �����

	STATE:InitLua( 550, 0, 0, false );    --Ű�Է� �ð��� �ΰ� ���ļ� 651~700�����ؾ� �߳���
	
	local range = WEAPON:GetRange();	
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_JUMPDASH, 200, Power*0.6, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,0,-100), MAKEVECTOR3(0,0,-1), range*1.2, range*0.7, range*0.7 ), 1, 1, false  );  
    Attack1:SetCameraShakeEnable( true, true, 0 );  --ī�޶� ����ŷ( ��Ŀ��������, �����ΰ�, �غ�ð� );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 5 ); --ī�޶���ŷ ( ����ð�, ȸ���ð�, Ȯ�� );
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 ); --( ���ν��ǵ�, ���ν��ǵ�, �ּҰŸ�, �ִ�Ÿ� );
    Attack1:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack1 );    

end



	
-------------------------------------------------------------------------------
--[[
	�⺻ SigmaBladeAfterDash1 ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--ù��Ÿ����(������/������) 
function StandardSigmaBladeAfterDash1(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.5 );	-- ������ 1Ÿ ����ڽ� ��  1.0
	STATE:SetMoveBoxMultiplierInTrans( 1.3 );	-- ������ 1Ÿ ����ڽ� ��
	
	
	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	
		
	STATE:InitLua( 420, 300, 40, true ); -- ������ 300
	STATE:InitLuaInTrans( 750, 300, 40, true );  --������ 
	
	STATE:ResetMoveBoxAtSubStateChange( true ); -- ���°� �ٲ� �� ����ڽ���ġ�� �ʱ�ȭ�Ѵ�.
	
	local range = WEAPON:GetRange();
    

    --������ 1Ÿ ����(����: Ǫ��, ����) Power = 25, range = 500
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 180, Power*0.2, AddtionalPower );  -- 0.4  0.2���ø�
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );    -- range*0.7, range*0.6, range*0.65 
	AddAttack( ATTACKS, Attack1 );
    
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 250, Power*0.4, AddtionalPower ); --0.5, 310
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );      -- MAKEVECTOR3(0,310,-50)  0.5
    Attack2:AddPushCondition( 100, 800, -5000 );  -- �ð�, �Ÿ� , ����ġ
	AddAttack( ATTACKS, Attack2 );
	
	
	--���� �� 1Ÿ ����(����: ��ο�) Power = 25, range = 500
	
	Attack3 = CreateCAttack();    
	Attack3:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL, 100, Power*0.8, AddtionalPower );  --180
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,0), MAKEVECTOR3(0,0,-1), range*0.6, range*0.5, range*0.6 ), 1, 1, false  );  --range*0.8, range*0.7, range*0.7
	Attack3:SetOnlyUseInWeaponChage( true );			
	Attack3:AddBlowCondition( 1300, 0 );  --(�����γ��ư��°Ÿ�,�ϴ÷γ��ư��°Ÿ�)
	AddAttack( ATTACKS, Attack3 ); 
	
	
	
	Attack4 = CreateCAttack();   	
	Attack4:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL, 440, Power*1.5, AddtionalPower );  --450 --����1.4
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,-100), MAKEVECTOR3(0,0,-1), range*1.1, range*0.5, range*1.0 ), 1, 1, false  );    --range*1.1, range*0.8, range*1.2
	Attack4:SetOnlyUseInWeaponChage( true );	
	Attack4:AddPushCondition( 100, 2000, -5000 );  -- �ð�, �Ÿ� , ����ġ
	Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack4:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
   	Attack4:AddBlowCondition( 800, 1500 );  --(�����γ��ư��°Ÿ�,�ϴ÷γ��ư��°Ÿ�1300, 2500 ) ,1000,1500
	AddAttack( ATTACKS, Attack4 ); 	
	
	
		
end



	

-------------------------------------------------------------------------------
--[[
	�⺻ SigmaBladeAfterDash2 ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--�ι�° ��Ÿ����(������/������)
function StandardSigmaBladeAfterDash2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.2 );	-- ������ 2Ÿ ����ڽ� ��
	STATE:SetMoveBoxMultiplierInTrans( 1.0 ); --������ 2Ÿ ����ڽ� ��

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	
		
	STATE:InitLua( 300, 300, 40, true );
	STATE:InitLuaInTrans( 800, 300, 40, true ); --800

	STATE:ResetMoveBoxAtSubStateChange( true ); -- ���°� �ٲ� �� ����ڽ���ġ�� �ʱ�ȭ�Ѵ�.
	
	local range = WEAPON:GetRange();
   

   	--������ 2Ÿ ���� (����: ��ο� , ���� ũ��Ƽ��) Power = 25, range = 500
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK2, 210, Power, AddtionalPower  );  --0.7
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.95, range*0.3, range*0.7 ), 1, 1, false  );
	Attack1:AddBlowCondition( 3000, 2500 );  
	Attack1:SetCameraShakeEnable( true, true, 0 ); 
    Attack1:SetCameraShakeSetFactor1( 200, 50, 20 ); 
    Attack1:SetCameraShakeSetFactor2( 200, 25, 2000, 3000 );  
	Attack1:SetCritical( 1.5, 10 ); --����ũ��Ƽ��(����, Ȯ��);
    Attack1:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack1 );   


	
	
	--������ 2Ÿ ���� (����: ��ο�  ) Power = 25, range = 500
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL, 470, Power*1.3, AddtionalPower );  -- 410
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,-90), MAKEVECTOR3(0,0,-1), range*0.5, range*0.5, range*1.2 ), 1, 1, false  );  --0.8 ,0.7,1.2        
    Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack2:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
	Attack2:SetCameraShakeWhenSuccess( true )
	Attack2:AddBlowCondition( 500, 2000 );  
	AddAttack( ATTACKS, Attack2 );

end




-------------------------------------------------------------------------------
--[[
	�⺻ SigmaBladeAfterDash3 ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--����° ��Ÿ����(������)
function StandardSigmaBladeAfterDash3(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.6 );	
	STATE:SetMoveBoxMultiplierInTrans( 0.5 );

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );


	
	STATE:InitLua( 650, 0, 40, true );  
	STATE:InitLuaInTrans( 1000, 300, 40, true );  

	STATE:ResetMoveBoxAtSubStateChange( true ); 
	
	local range = WEAPON:GetRange();
    
	
	-- ������ 3Ÿ �⺻ ������ 2Ÿ�� ���� �ϸ鼭 �� ���� ���� ����
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK3, 300, Power, AddtionalPower );  -- 0.7
    Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 250.0, 0.0), 100, range*0.6, range*0.6 , range*1.0 ), 1, 1, false  );   --����,����,�밢�� range*1.4, range*0.5, range*1.7, 120
	Attack1:AddPushCondition( 100, 2000, -5000 );  -- �ð�, �Ÿ� , ����ġ
	Attack1:AddBlowCondition( 1400, 2800 );  --(�����γ��ư��°Ÿ�,�ϴ÷γ��ư��°Ÿ�)
	AddAttack( ATTACKS, Attack1 );   
	
	
	
	
	-- ������ 3Ÿ (����: ��ο�, ����ũ��Ƽ��) Power = 25, range = 500
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL , 500 , Power*1.7, AddtionalPower ); --1.35,1.1 ,1.2, ���� ,1.5
    Attack2:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 100, 0.0), 200, range*0.7 ), 1, 1, false  ); 
    Attack2:SetOnlyUseInWeaponChage( true );		
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack2:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
    Attack2:SetCameraShakeWhenSuccess( true );
	Attack2:AddPushCondition( 100, 2000, -5000 );
	Attack2:AddBlowCondition( 2600, 2000 );
	-- Attack2:SetCritical( 1.5, 10 ); --���� ũ��Ƽ��(����, Ȯ��);	
	AddAttack( ATTACKS, Attack2 ); 
	
	
	



end




-------------------------------------------------------------------------------
--[[
	�⺻ SigmaBladeAfterDash4 ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--������ �� ��Ÿ (����: ��ο�) Power = 25, range = 500
function StandardSigmaBladeAfterDash4(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 2.0 );	
	STATE:SetMoveBoxMultiplierInTrans( 0.8 ); 

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	STATE:SetOnlyUseInWeaponChange( true );		
	
	

	STATE:InitLua( 800, 100, 40, true );
	STATE:InitLuaInTrans( 1000, 250, 40, true ); 
	
	local range = WEAPON:GetRange();
    

	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL, 200, Power*0.2, AddtionalPower );  --1.0
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,70), MAKEVECTOR3(0,0,-1), range*0.5, range*0.8, range*1.0 ), 1, 1, false  );            
    Attack1:SetOnlyUseInWeaponChage( true );
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack1:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	AddAttack( ATTACKS, Attack1 )
	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL, 430, Power*1.2, AddtionalPower );  --1.7
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,70), MAKEVECTOR3(0,0,-1), range*0.5, range*0.8, range*1.0 ), 1, 1, false  );            
    Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	Attack2:AddBlowCondition( 2000, 3500 );  
	AddAttack( ATTACKS, Attack2 )
	
	
	
	
	
end




-------------------------------------------------------------------------------
--[[
	�⺻ SigmaBladeCounterAttack ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
-- ������ ������(����: ����ũ��Ƽ��,������ Ÿ�� �ڽ� ��ο�) Power = 25  range = 500
function StandardSigmaBladeCounterAttack(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.5 );	-- ������ 1Ÿ ����ڽ� ��  1.0
	STATE:SetMoveBoxMultiplierInTrans( 1.85 ); 
	

	STATE:SetStateMinSp( 5 );		-- SP�� 5�� ������ �������� ������ �ʴ´�
	STATE:SetSpendSp( 0 );			-- sp �Ҹ�

	STATE:ResetMoveBoxAtSubStateChange( true ); -- ���°� �ٲ� �� ����ڽ���ġ�� �ʱ�ȭ�Ѵ�.

	STATE:SetStealthCancel( true );

	STATE:InitLua( 420, 300, 40, true ); -- ������ 300
	STATE:InitLuaInTrans( 700, 800, 40, true );  
	
	STATE:SetHPAbsorptionPer( 0);
	--STATE:SetOnlyUseInWeaponChange( true );		
	
	local range = WEAPON:GetRange();
	
	
	
	--Power = 25, range = 500	
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_ATTACK, 200, Power*1.2 , AddtionalPower );   
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.7 ), 1, 1, false  );
	Attack1:SetOnlyUseInWeaponChage( true );
	Attack1:SetPlaySound( false )
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 10 );  
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 ); 
	Attack1:SetCritical( 1.5, 10 ); --����ũ��Ƽ��(����, Ȯ��);
	AddAttack( ATTACKS, Attack1 );
	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_ATTACK, 400, Power*0.8 , AddtionalPower );   
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.5 ), 1, 1, false  );
	Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 );
    Attack2:SetPlaySound( false )
	Attack2:SetCritical( 1.5, 10 ); --����ũ��Ƽ��(����, Ȯ��);
	AddAttack( ATTACKS, Attack2 );
	

	Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_ATTACK, 620, Power*1.2, AddtionalPower );  
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.5 ), 1, 1, false  ); 
	Attack3:SetOnlyUseInWeaponChage( true );
	Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack3:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	Attack3:AddBlowCondition( 500, 2000 );  
	Attack3:SetCritical( 1.5, 10 ); --����ũ��Ƽ��(����, Ȯ��);
	AddAttack( ATTACKS, Attack3 );
	
	

    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 180, Power*0.2, AddtionalPower );  -- 0.4  0.2���ø�
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );    -- range*0.7, range*0.6, range*0.65 
	AddAttack( ATTACKS, Attack4 );
    
	
	Attack5 = CreateCAttack();
    Attack5:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 250, Power*0.4, AddtionalPower ); --0.5, 310
    Attack5:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );      -- MAKEVECTOR3(0,310,-50)  0.5
    Attack5:AddPushCondition( 100, 800, -5000 );  -- �ð�, �Ÿ� , ����ġ
	AddAttack( ATTACKS, Attack5 );	
	
end

-------------------------------------------------------------------------------
--[[
	�⺻ StandardSigmaBladeWeaponChange ����
	InitLua����
	bool bOnlyVStateNormal		/// �������� ����� �������� ����
]]--
-------------------------------------------------------------------------------
--�˺�ȭ(����: ��ο�) Power = 25, range = 500
function StandardSigmaBladeWeaponChange(  OneShotTime, Power, Accuracy, AdditionalPower )
	

	
	STATE:SetHPAbsorptionPer( 0 );	
	STATE:SetHPAbsorptionAfterStunMin( 0 );		-- ���� �� SP�� �� ��� �� �� �ڽ��� �ɸ��� ���� ���� (������� ����)
	STATE:SetHPAbsorptionAfterStunMax( 0 );		-- ���� �� SP�� �� ��� �� �� �ڽ��� �ɸ��� ���� ������(������� ����)

	STATE:SetStateMinSp( 20 );		-- ���·� ���� ���� �ּ����� �ʿ� sp
	STATE:SetSpendSp( 0 );			-- sp �Ҹ�
	
	STATE:InitLua( 500, 0, false );		-- ������/������ ���� ������
	STATE:InitLuaInTrans( 500, 0, false );  -- ������/������ ���� ������
	
	STATE:SetCoolTime( 1500 );				-- ����� �ٽ� ���� ���Խ� ���� �ɸ��� �ð� ( ��Ÿ�� ) 
	
	local range = WEAPON:GetRange();
	
	
	
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK4,90, Power*0.5, AddtionalPower );
    Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 200.0, 0.0), 340, range*1.2 ), 1, 1, false  ); -- 150,400, 1.2     
	Attack1:AddBlowCondition( 1450, 2800 ); 
	AddAttack( ATTACKS, Attack1 );
   
	-- STATE:SetDrop( 500, MAKEVECTOR3( 0, -10000, 0 ) );
	--setdrop : ���� ���� �� �����ִ� ü���ð�
	--MAKEVECTOR3 : �����ϸ鼭 �������� �Ÿ�(x,y,z)	
		
end





--[[  ������� �ʾ����� ������ ��ũ��Ʈ
	_STATE:SetHitStopInTrans( 400, 670 ); 400~670���� �ణ �����̰� ���� �� �ִϸ��̼��� ��� �ȴ�
	_Attack1:SetCameraShakeEnable( true, true, 0 ); --ī�޶���ŷ( ��Ŀ��������, �����ΰ�, �غ�ð� );
    _Attack1:SetCameraShakeSetFactor1( 200, 50, 20 ); --ī�޶���ŷ ( ����ð�, ȸ���ð�, Ȯ�� );
    _Attack1:SetCameraShakeSetFactor2( 200, 25, 2000, 3000 );  -- ( ���ν��ǵ�, ���ν��ǵ�, �ּҰŸ�, �ִ�Ÿ� );  
	_Attack1:SetCritical( 1.5, 10 ); ���� ũ��Ƽ�� --(����, Ȯ��);
	]]--
	
--------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-- cogwheel_sigma
-- ȿ���� ���� ���� ����
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------
	
-------------------------------------------------------------------------------
--[[
	�⺻ CogWheelSigmaBladeJumpDash ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--���� ���� range = 500
function StandardCogWheelSigmaBladeJumpDash(  OneShotTime, Power, Accuracy, AdditionalPower )   
	
	STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveSpeedRate( 0.5 )
	STATE:SetHPAbsorptionPer( 0 );	-- HP �����

	STATE:InitLua( 550, 0, 0, false );    --Ű�Է� �ð��� �ΰ� ���ļ� 651~700�����ؾ� �߳���
	
	local range = WEAPON:GetRange();	
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_JUMPDASH, 200, Power*0.6, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,0,-100), MAKEVECTOR3(0,0,-1), range*1.2, range*0.7, range*0.7 ), 1, 1, false  );  
    Attack1:SetCameraShakeEnable( true, true, 0 );  --ī�޶� ����ŷ( ��Ŀ��������, �����ΰ�, �غ�ð� );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 5 ); --ī�޶���ŷ ( ����ð�, ȸ���ð�, Ȯ�� );
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 ); --( ���ν��ǵ�, ���ν��ǵ�, �ּҰŸ�, �ִ�Ÿ� );
    Attack1:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack1 );    

end



	
-------------------------------------------------------------------------------
--[[
	�⺻ CogWheelSigmaBladeAfterDash1 ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--ù��Ÿ����(������/������) 
function StandardCogWheelSigmaBladeAfterDash1(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.5 );	-- ������ 1Ÿ ����ڽ� ��  1.0
	STATE:SetMoveBoxMultiplierInTrans( 1.3 );	-- ������ 1Ÿ ����ڽ� ��
	
	
	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	
		
	STATE:InitLua( 420, 300, 40, true ); -- ������ 300
	STATE:InitLuaInTrans( 750, 300, 40, true );  --������ 
	
	STATE:ResetMoveBoxAtSubStateChange( true ); -- ���°� �ٲ� �� ����ڽ���ġ�� �ʱ�ȭ�Ѵ�.
	
	local range = WEAPON:GetRange();
    

    --������ 1Ÿ ����(����: Ǫ��, ����) Power = 25, range = 500
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK1, 180, Power*0.2, AddtionalPower );  -- 0.4  0.2���ø�
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );    -- range*0.7, range*0.6, range*0.65 
	AddAttack( ATTACKS, Attack1 );
    
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK1, 250, Power*0.4, AddtionalPower ); --0.5, 310
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );      -- MAKEVECTOR3(0,310,-50)  0.5
    Attack2:AddPushCondition( 100, 800, -5000 );  -- �ð�, �Ÿ� , ����ġ
	AddAttack( ATTACKS, Attack2 );
	
	
	--���� �� 1Ÿ ����(����: ��ο�) Power = 25, range = 500
	
	Attack3 = CreateCAttack();    
	Attack3:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL, 100, Power*0.8, AddtionalPower );  --180
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,0), MAKEVECTOR3(0,0,-1), range*0.6, range*0.5, range*0.6 ), 1, 1, false  );  --range*0.8, range*0.7, range*0.7
	Attack3:SetOnlyUseInWeaponChage( true );			
	Attack3:AddBlowCondition( 1300, 0 );  --(�����γ��ư��°Ÿ�,�ϴ÷γ��ư��°Ÿ�)
	AddAttack( ATTACKS, Attack3 ); 
	
	
	
	Attack4 = CreateCAttack();   	
	Attack4:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL, 440, Power*1.5, AddtionalPower );  --450 --����1.4
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,-100), MAKEVECTOR3(0,0,-1), range*1.1, range*0.5, range*1.0 ), 1, 1, false  );    --range*1.1, range*0.8, range*1.2
	Attack4:SetOnlyUseInWeaponChage( true );	
	Attack4:AddPushCondition( 100, 2000, -5000 );  -- �ð�, �Ÿ� , ����ġ
	Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack4:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
   	Attack4:AddBlowCondition( 800, 1500 );  --(�����γ��ư��°Ÿ�,�ϴ÷γ��ư��°Ÿ�1300, 2500 ) ,1000,1500
	AddAttack( ATTACKS, Attack4 ); 	
	
	
		
end



	

-------------------------------------------------------------------------------
--[[
	�⺻ CogWheelSigmaBladeAfterDash2 ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--�ι�° ��Ÿ����(������/������)
function StandardCogWheelSigmaBladeAfterDash2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.2 );	-- ������ 2Ÿ ����ڽ� ��
	STATE:SetMoveBoxMultiplierInTrans( 1.0 ); --������ 2Ÿ ����ڽ� ��

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	
		
	STATE:InitLua( 300, 300, 40, true );
	STATE:InitLuaInTrans( 800, 300, 40, true ); --800

	STATE:ResetMoveBoxAtSubStateChange( true ); -- ���°� �ٲ� �� ����ڽ���ġ�� �ʱ�ȭ�Ѵ�.
	
	local range = WEAPON:GetRange();
   

   	--������ 2Ÿ ���� (����: ��ο� , ���� ũ��Ƽ��) Power = 25, range = 500
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK2, 210, Power, AddtionalPower  );  --0.7
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.95, range*0.3, range*0.7 ), 1, 1, false  );
	Attack1:AddBlowCondition( 3000, 2500 );  
	Attack1:SetCameraShakeEnable( true, true, 0 ); 
    Attack1:SetCameraShakeSetFactor1( 200, 50, 20 ); 
    Attack1:SetCameraShakeSetFactor2( 200, 25, 2000, 3000 );  
	Attack1:SetCritical( 1.5, 10 ); --����ũ��Ƽ��(����, Ȯ��);
    Attack1:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack1 );   


	
	
	--������ 2Ÿ ���� (����: ��ο�  ) Power = 25, range = 500
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL, 470, Power*1.3, AddtionalPower );  -- 410
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,-90), MAKEVECTOR3(0,0,-1), range*0.5, range*0.5, range*1.2 ), 1, 1, false  );  --0.8 ,0.7,1.2        
    Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack2:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
	Attack2:SetCameraShakeWhenSuccess( true )
	Attack2:AddBlowCondition( 500, 2000 );  
	AddAttack( ATTACKS, Attack2 );

end




-------------------------------------------------------------------------------
--[[
	�⺻ CogWheelSigmaBladeAfterDash3 ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--����° ��Ÿ����(������)
function StandardCogWheelSigmaBladeAfterDash3(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.6 );	
	STATE:SetMoveBoxMultiplierInTrans( 0.5 );

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );


	
	STATE:InitLua( 650, 0, 40, true );  
	STATE:InitLuaInTrans( 1000, 300, 40, true );  

	STATE:ResetMoveBoxAtSubStateChange( true ); 
	
	local range = WEAPON:GetRange();
    
	
	-- ������ 3Ÿ �⺻ ������ 2Ÿ�� ���� �ϸ鼭 �� ���� ���� ����
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK3, 300, Power, AddtionalPower );  -- 0.7
    Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 250.0, 0.0), 100, range*0.6, range*0.6 , range*1.0 ), 1, 1, false  );   --����,����,�밢�� range*1.4, range*0.5, range*1.7, 120
	Attack1:AddPushCondition( 100, 2000, -5000 );  -- �ð�, �Ÿ� , ����ġ
	Attack1:AddBlowCondition( 1400, 2800 );  --(�����γ��ư��°Ÿ�,�ϴ÷γ��ư��°Ÿ�)
	AddAttack( ATTACKS, Attack1 );   
	
	
	
	
	-- ������ 3Ÿ (����: ��ο�, ����ũ��Ƽ��) Power = 25, range = 500
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL , 500 , Power*1.7, AddtionalPower ); --1.35,1.1 ,1.2, ���� ,1.5
    Attack2:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 100, 0.0), 200, range*0.7 ), 1, 1, false  ); 
    Attack2:SetOnlyUseInWeaponChage( true );		
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack2:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
    Attack2:SetCameraShakeWhenSuccess( true );
	Attack2:AddPushCondition( 100, 2000, -5000 );
	Attack2:AddBlowCondition( 2600, 2000 );
	-- Attack2:SetCritical( 1.5, 10 ); --���� ũ��Ƽ��(����, Ȯ��);	
	AddAttack( ATTACKS, Attack2 ); 
	
	
	



end




-------------------------------------------------------------------------------
--[[
	�⺻ CogWheelSigmaBladeAfterDash4 ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--������ �� ��Ÿ (����: ��ο�) Power = 25, range = 500
function StandardCogWheelSigmaBladeAfterDash4(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 2.0 );	
	STATE:SetMoveBoxMultiplierInTrans( 0.8 ); 

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	STATE:SetOnlyUseInWeaponChange( true );		
	
	

	STATE:InitLua( 800, 100, 40, true );
	STATE:InitLuaInTrans( 1000, 250, 40, true ); 
	
	local range = WEAPON:GetRange();
    

	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL, 200, Power*0.2, AddtionalPower );  --1.0
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,70), MAKEVECTOR3(0,0,-1), range*0.5, range*0.8, range*1.0 ), 1, 1, false  );            
    Attack1:SetOnlyUseInWeaponChage( true );
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack1:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	AddAttack( ATTACKS, Attack1 )
	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL, 430, Power*1.2, AddtionalPower );  --1.7
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,70), MAKEVECTOR3(0,0,-1), range*0.5, range*0.8, range*1.0 ), 1, 1, false  );            
    Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	Attack2:AddBlowCondition( 2000, 3500 );  
	AddAttack( ATTACKS, Attack2 )
	
	
	
	
	
end




-------------------------------------------------------------------------------
--[[
	�⺻ CogWheelSigmaBladeCounterAttack ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
-- ������ ������(����: ����ũ��Ƽ��,������ Ÿ�� �ڽ� ��ο�) Power = 25  range = 500
function StandardCogWheelSigmaBladeCounterAttack(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.5 );	-- ������ 1Ÿ ����ڽ� ��  1.0
	STATE:SetMoveBoxMultiplierInTrans( 1.85 ); 
	

	STATE:SetStateMinSp( 5 );		-- SP�� 5�� ������ �������� ������ �ʴ´�
	STATE:SetSpendSp( 0 );			-- sp �Ҹ�

	STATE:ResetMoveBoxAtSubStateChange( true ); -- ���°� �ٲ� �� ����ڽ���ġ�� �ʱ�ȭ�Ѵ�.

	STATE:SetStealthCancel( true );

	STATE:InitLua( 420, 300, 40, true ); -- ������ 300
	STATE:InitLuaInTrans( 700, 800, 40, true );  
	
	STATE:SetHPAbsorptionPer( 0);
	--STATE:SetOnlyUseInWeaponChange( true );		
	
	local range = WEAPON:GetRange();
	
	
	
	--Power = 25, range = 500	
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_ATTACK, 200, Power*1.2 , AddtionalPower );   
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.7 ), 1, 1, false  );
	Attack1:SetOnlyUseInWeaponChage( true );
	Attack1:SetPlaySound( false )
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 10 );  
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 ); 
	Attack1:SetCritical( 1.5, 10 ); --����ũ��Ƽ��(����, Ȯ��);
	AddAttack( ATTACKS, Attack1 );
	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_ATTACK, 400, Power*0.8 , AddtionalPower );   
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.5 ), 1, 1, false  );
	Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 );
    Attack2:SetPlaySound( false )
	Attack2:SetCritical( 1.5, 10 ); --����ũ��Ƽ��(����, Ȯ��);
	AddAttack( ATTACKS, Attack2 );
	

	Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_ATTACK, 620, Power*1.2, AddtionalPower );  
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.5 ), 1, 1, false  ); 
	Attack3:SetOnlyUseInWeaponChage( true );
	Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack3:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	Attack3:AddBlowCondition( 500, 2000 );  
	Attack3:SetCritical( 1.5, 10 ); --����ũ��Ƽ��(����, Ȯ��);
	AddAttack( ATTACKS, Attack3 );
	
	
    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 180, Power*0.2, AddtionalPower );  -- 0.4  0.2���ø�
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );    -- range*0.7, range*0.6, range*0.65 
	AddAttack( ATTACKS, Attack4 );
    
	
	Attack5 = CreateCAttack();
    Attack5:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 250, Power*0.4, AddtionalPower ); --0.5, 310
    Attack5:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );      -- MAKEVECTOR3(0,310,-50)  0.5
    Attack5:AddPushCondition( 100, 800, -5000 );  -- �ð�, �Ÿ� , ����ġ
	AddAttack( ATTACKS, Attack5 );	
	
	
end

-------------------------------------------------------------------------------
--[[
	�⺻ StandardCogWheelSigmaBladeWeaponChange ����
	InitLua����
	bool bOnlyVStateNormal		/// �������� ����� �������� ����
]]--
-------------------------------------------------------------------------------
--�˺�ȭ(����: ��ο�) Power = 25, range = 500
function StandardCogWheelSigmaBladeWeaponChange(  OneShotTime, Power, Accuracy, AdditionalPower )
	

	
	STATE:SetHPAbsorptionPer( 0 );	
	STATE:SetHPAbsorptionAfterStunMin( 0 );		-- ���� �� SP�� �� ��� �� �� �ڽ��� �ɸ��� ���� ���� (������� ����)
	STATE:SetHPAbsorptionAfterStunMax( 0 );		-- ���� �� SP�� �� ��� �� �� �ڽ��� �ɸ��� ���� ������(������� ����)

	STATE:SetStateMinSp( 20 );		-- ���·� ���� ���� �ּ����� �ʿ� sp
	STATE:SetSpendSp( 0 );			-- sp �Ҹ�
	
	STATE:InitLua( 500, 0, false );		-- ������/������ ���� ������
	STATE:InitLuaInTrans( 500, 0, false );  -- ������/������ ���� ������
	
	STATE:SetCoolTime( 1500 );				-- ����� �ٽ� ���� ���Խ� ���� �ɸ��� �ð� ( ��Ÿ�� ) 
	
	local range = WEAPON:GetRange();
	
	
	
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK4,90, Power*0.5, AddtionalPower );
    Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 200.0, 0.0), 340, range*1.2 ), 1, 1, false  ); -- 150,400, 1.2     
	Attack1:AddBlowCondition( 1450, 2800 ); 
	AddAttack( ATTACKS, Attack1 );
   
	-- STATE:SetDrop( 500, MAKEVECTOR3( 0, -10000, 0 ) );
	--setdrop : ���� ���� �� �����ִ� ü���ð�
	--MAKEVECTOR3 : �����ϸ鼭 �������� �Ÿ�(x,y,z)	
		
end


-------------------------------------------------------------------------------
--[[
-- �۸�ġ ���� �ñ׸� ���̵�
]]--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--[[
	�۸�ġ ���� GlitchJoySigmaBladeJumpDash ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--���� ���� range = 500
function GlitchJoySigmaBladeJumpDash(  OneShotTime, Power, Accuracy, AdditionalPower )   
	
	STATE:SetMoveBoxMultiplier( 2.0 );
	STATE:SetStealthCancel( true );
	STATE:SetMoveSpeedRate( 0.5 )
	STATE:SetHPAbsorptionPer( 0 );	-- HP �����

	STATE:InitLua( 550, 0, 0, false );    --Ű�Է� �ð��� �ΰ� ���ļ� 651~700�����ؾ� �߳���
	
	local range = WEAPON:GetRange();	
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_JUMPDASH, 200, Power*0.6, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,0,-100), MAKEVECTOR3(0,0,-1), range*1.2, range*0.7, range*0.7 ), 1, 1, false  );  
    Attack1:SetCameraShakeEnable( true, true, 0 );  --ī�޶� ����ŷ( ��Ŀ��������, �����ΰ�, �غ�ð� );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 5 ); --ī�޶���ŷ ( ����ð�, ȸ���ð�, Ȯ�� );
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 ); --( ���ν��ǵ�, ���ν��ǵ�, �ּҰŸ�, �ִ�Ÿ� );
    Attack1:SetCameraShakeWhenSuccess( true );   
    AddAttack( ATTACKS, Attack1 );    

end



	
-------------------------------------------------------------------------------
--[[
	�۸�ġ ���� GlitchJoySigmaBladeAfterDash1 ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--ù��Ÿ����(������/������) 
function GlitchJoySigmaBladeAfterDash1(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.5 );	-- ������ 1Ÿ ����ڽ� ��  1.0
	STATE:SetMoveBoxMultiplierInTrans( 1.3 );	-- ������ 1Ÿ ����ڽ� ��
	
	
	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	
		
	STATE:InitLua( 420, 300, 40, true ); -- ������ 300
	STATE:InitLuaInTrans( 750, 300, 40, true );  --������ 
	
	STATE:ResetMoveBoxAtSubStateChange( true ); -- ���°� �ٲ� �� ����ڽ���ġ�� �ʱ�ȭ�Ѵ�.
	
	local range = WEAPON:GetRange();
    

    --������ 1Ÿ ����(����: Ǫ��, ����) Power = 25, range = 500
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK1, 180, Power*0.2, AddtionalPower );  -- 0.4  0.2���ø�
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );    -- range*0.7, range*0.6, range*0.65 
	AddAttack( ATTACKS, Attack1 );
    
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK1, 250, Power*0.4, AddtionalPower ); --0.5, 310
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );      -- MAKEVECTOR3(0,310,-50)  0.5
    Attack2:AddPushCondition( 100, 800, -5000 );  -- �ð�, �Ÿ� , ����ġ
	AddAttack( ATTACKS, Attack2 );
	
	
	--���� �� 1Ÿ ����(����: ��ο�) Power = 25, range = 500
	
	Attack3 = CreateCAttack();    
	Attack3:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL, 100, Power*0.8, AddtionalPower );  --180
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,0), MAKEVECTOR3(0,0,-1), range*0.6, range*0.5, range*0.6 ), 1, 1, false  );  --range*0.8, range*0.7, range*0.7
	Attack3:SetOnlyUseInWeaponChage( true );			
	Attack3:AddBlowCondition( 1300, 0 );  --(�����γ��ư��°Ÿ�,�ϴ÷γ��ư��°Ÿ�)
	AddAttack( ATTACKS, Attack3 ); 
	
	
	
	Attack4 = CreateCAttack();   	
	Attack4:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL, 440, Power*1.5, AddtionalPower );  --450 --����1.4
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,-100), MAKEVECTOR3(0,0,-1), range*1.1, range*0.5, range*1.0 ), 1, 1, false  );    --range*1.1, range*0.8, range*1.2
	Attack4:SetOnlyUseInWeaponChage( true );	
	Attack4:AddPushCondition( 100, 2000, -5000 );  -- �ð�, �Ÿ� , ����ġ
	Attack4:SetCameraShakeEnable( true, true, 0 );
    Attack4:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack4:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
   	Attack4:AddBlowCondition( 800, 1500 );  --(�����γ��ư��°Ÿ�,�ϴ÷γ��ư��°Ÿ�1300, 2500 ) ,1000,1500
	AddAttack( ATTACKS, Attack4 ); 	
	
	
		
end



	

-------------------------------------------------------------------------------
--[[
	�۸�ġ ���� GlitchJoySigmaBladeAfterDash2 ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--�ι�° ��Ÿ����(������/������)
function GlitchJoySigmaBladeAfterDash2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.2 );	-- ������ 2Ÿ ����ڽ� ��
	STATE:SetMoveBoxMultiplierInTrans( 1.0 ); --������ 2Ÿ ����ڽ� ��

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	
		
	STATE:InitLua( 300, 300, 40, true );
	STATE:InitLuaInTrans( 800, 300, 40, true ); --800

	STATE:ResetMoveBoxAtSubStateChange( true ); -- ���°� �ٲ� �� ����ڽ���ġ�� �ʱ�ȭ�Ѵ�.
	
	local range = WEAPON:GetRange();
   

   	--������ 2Ÿ ���� (����: ��ο� , ���� ũ��Ƽ��) Power = 25, range = 500
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK2, 210, Power, AddtionalPower  );  --0.7
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.95, range*0.3, range*0.7 ), 1, 1, false  );
	Attack1:AddBlowCondition( 3000, 2500 );  
	Attack1:SetCameraShakeEnable( true, true, 0 ); 
    Attack1:SetCameraShakeSetFactor1( 200, 50, 20 ); 
    Attack1:SetCameraShakeSetFactor2( 200, 25, 2000, 3000 );  
	Attack1:SetCritical( 1.5, 10 ); --����ũ��Ƽ��(����, Ȯ��);
    Attack1:SetCameraShakeWhenSuccess( true );
    AddAttack( ATTACKS, Attack1 );   


	
	
	--������ 2Ÿ ���� (����: ��ο�  ) Power = 25, range = 500
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK2, 470, Power*1.3, AddtionalPower );  -- 410
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,-90), MAKEVECTOR3(0,0,-1), range*0.5, range*0.5, range*1.2 ), 1, 1, false  );  --0.8 ,0.7,1.2        
    Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack2:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
	Attack2:SetCameraShakeWhenSuccess( true )
	Attack2:AddBlowCondition( 500, 2000 );  
	AddAttack( ATTACKS, Attack2 );

end




-------------------------------------------------------------------------------
--[[
	�⺻ SigmaBladeAfterDash3 ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--����° ��Ÿ����(������)
function GlitchJoySigmaBladeAfterDash3(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.6 );	
	STATE:SetMoveBoxMultiplierInTrans( 0.5 );

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );


	
	STATE:InitLua( 650, 0, 40, true );  
	STATE:InitLuaInTrans( 1000, 300, 40, true );  

	STATE:ResetMoveBoxAtSubStateChange( true ); 
	
	local range = WEAPON:GetRange();
    
	
	-- ������ 3Ÿ �⺻ ������ 2Ÿ�� ���� �ϸ鼭 �� ���� ���� ����
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK3, 300, Power, AddtionalPower );  -- 0.7
    Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 250.0, 0.0), 100, range*0.6, range*0.6 , range*1.0 ), 1, 1, false  );   --����,����,�밢�� range*1.4, range*0.5, range*1.7, 120
	Attack1:AddPushCondition( 100, 2000, -5000 );  -- �ð�, �Ÿ� , ����ġ
	Attack1:AddBlowCondition( 1400, 2800 );  --(�����γ��ư��°Ÿ�,�ϴ÷γ��ư��°Ÿ�)
	AddAttack( ATTACKS, Attack1 );   
	
	
	
	
	-- ������ 3Ÿ (����: ��ο�, ����ũ��Ƽ��) Power = 25, range = 500
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL , 500 , Power*1.7, AddtionalPower ); --1.35,1.1 ,1.2, ���� ,1.5
    Attack2:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 100, 0.0), 200, range*0.7 ), 1, 1, false  ); 
    Attack2:SetOnlyUseInWeaponChage( true );		
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 5 );
    Attack2:SetCameraShakeSetFactor2( 200, 100, 2000.0, 3000.0 );
    Attack2:SetCameraShakeWhenSuccess( true );
	Attack2:AddPushCondition( 100, 2000, -5000 );
	Attack2:AddBlowCondition( 2600, 2000 );
	-- Attack2:SetCritical( 1.5, 10 ); --���� ũ��Ƽ��(����, Ȯ��);	
	AddAttack( ATTACKS, Attack2 ); 
	
	
	



end




-------------------------------------------------------------------------------
--[[
	�⺻ SigmaBladeAfterDash4 ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
--������ �� ��Ÿ (����: ��ο�) Power = 25, range = 500
function GlitchJoySigmaBladeAfterDash4(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 2.0 );	
	STATE:SetMoveBoxMultiplierInTrans( 0.8 ); 

	STATE:SetStealthCancel( true );	
	STATE:SetHPAbsorptionPer( 0 );	
	STATE:SetOnlyUseInWeaponChange( true );		
	
	

	STATE:InitLua( 800, 100, 40, true );
	STATE:InitLuaInTrans( 1000, 250, 40, true ); 
	
	local range = WEAPON:GetRange();
    

	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL, 200, Power*0.2, AddtionalPower );  --1.0
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,70), MAKEVECTOR3(0,0,-1), range*0.5, range*0.8, range*1.0 ), 1, 1, false  );            
    Attack1:SetOnlyUseInWeaponChage( true );
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack1:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	AddAttack( ATTACKS, Attack1 )
	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL, 430, Power*1.2, AddtionalPower );  --1.7
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,70), MAKEVECTOR3(0,0,-1), range*0.5, range*0.8, range*1.0 ), 1, 1, false  );            
    Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	Attack2:AddBlowCondition( 2000, 3500 );  
	AddAttack( ATTACKS, Attack2 )
	
	
	
	
	
end




-------------------------------------------------------------------------------
--[[
	�⺻ SigmaBladeCounterAttack ����
	InitLua����
	u32 uiNormalTime
	u32 uiDelayTime
	u32 uiMinimumSceneUpdateTime
	bool bOnlyVStateNormal
]]--
-------------------------------------------------------------------------------
-- ������ ������(����: ����ũ��Ƽ��,������ Ÿ�� �ڽ� ��ο�) Power = 25  range = 500
function GlitchJoySigmaBladeCounterAttack(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 0.5 );	-- ������ 1Ÿ ����ڽ� ��  1.0
	STATE:SetMoveBoxMultiplierInTrans( 1.85 ); 
	

	STATE:SetStateMinSp( 5 );		-- SP�� 5�� ������ �������� ������ �ʴ´�
	STATE:SetSpendSp( 0 );			-- sp �Ҹ�

	STATE:ResetMoveBoxAtSubStateChange( true ); -- ���°� �ٲ� �� ����ڽ���ġ�� �ʱ�ȭ�Ѵ�.

	STATE:SetStealthCancel( true );

	STATE:InitLua( 420, 300, 40, true ); -- ������ 300
	STATE:InitLuaInTrans( 700, 800, 40, true );  
	
	STATE:SetHPAbsorptionPer( 0);
	--STATE:SetOnlyUseInWeaponChange( true );		
	
	local range = WEAPON:GetRange();
	
	
	
	--Power = 25, range = 500	
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_ATTACK, 200, Power*1.2 , AddtionalPower );   
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.7 ), 1, 1, false  );
	Attack1:SetOnlyUseInWeaponChage( true );
	Attack1:SetPlaySound( false )
	Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 200, 50, 10 );  
    Attack1:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 ); 
	Attack1:SetCritical( 1.5, 10 ); --����ũ��Ƽ��(����, Ȯ��);
	AddAttack( ATTACKS, Attack1 );
	
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_ATTACK, 400, Power*0.8 , AddtionalPower );   
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.5 ), 1, 1, false  );
	Attack2:SetOnlyUseInWeaponChage( true );
	Attack2:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack2:SetCameraShakeSetFactor2( 0, 20, 2000.0, 3000.0 );
    Attack2:SetPlaySound( false )
	Attack2:SetCritical( 1.5, 10 ); --����ũ��Ƽ��(����, Ȯ��);
	AddAttack( ATTACKS, Attack2 );
	

	Attack3 = CreateCAttack();
    Attack3:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_ATTACK, 620, Power*1.2, AddtionalPower );  
    Attack3:InitAttack2( MAKEBOX( MAKEVECTOR3(0,180,100), MAKEVECTOR3(0,0,-1), range*0.4, range*0.7, range*1.5 ), 1, 1, false  ); 
	Attack3:SetOnlyUseInWeaponChage( true );
	Attack3:SetCameraShakeEnable( true, true, 0 );
    Attack3:SetCameraShakeSetFactor1( 200, 50, 50 );
    Attack3:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
	Attack3:AddBlowCondition( 500, 2000 );  
	Attack3:SetCritical( 1.5, 10 ); --����ũ��Ƽ��(����, Ȯ��);
	AddAttack( ATTACKS, Attack3 );
	
	

    Attack4 = CreateCAttack();
    Attack4:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK1, 180, Power*0.2, AddtionalPower );  -- 0.4  0.2���ø�
    Attack4:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );    -- range*0.7, range*0.6, range*0.65 
	AddAttack( ATTACKS, Attack4 );
    
	
	Attack5 = CreateCAttack();
    Attack5:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK1, 250, Power*0.4, AddtionalPower ); --0.5, 310
    Attack5:InitAttack2( MAKEBOX( MAKEVECTOR3(0,210,80), MAKEVECTOR3(0,0,-1), range*0.7, range*0.3, range*0.65 ), 1, 1, false  );      -- MAKEVECTOR3(0,310,-50)  0.5
    Attack5:AddPushCondition( 100, 800, -5000 );  -- �ð�, �Ÿ� , ����ġ
	AddAttack( ATTACKS, Attack5 );	
	
end

-------------------------------------------------------------------------------
--[[
	�⺻ StandardSigmaBladeWeaponChange ����
	InitLua����
	bool bOnlyVStateNormal		/// �������� ����� �������� ����
]]--
-------------------------------------------------------------------------------
--�˺�ȭ(����: ��ο�) Power = 25, range = 500
function GlitchJoySigmaBladeWeaponChange(  OneShotTime, Power, Accuracy, AdditionalPower )
	

	
	STATE:SetHPAbsorptionPer( 0 );	
	STATE:SetHPAbsorptionAfterStunMin( 0 );		-- ���� �� SP�� �� ��� �� �� �ڽ��� �ɸ��� ���� ���� (������� ����)
	STATE:SetHPAbsorptionAfterStunMax( 0 );		-- ���� �� SP�� �� ��� �� �� �ڽ��� �ɸ��� ���� ������(������� ����)

	STATE:SetStateMinSp( 20 );		-- ���·� ���� ���� �ּ����� �ʿ� sp
	STATE:SetSpendSp( 0 );			-- sp �Ҹ�
	
	STATE:InitLua( 500, 0, false );		-- ������/������ ���� ������
	STATE:InitLuaInTrans( 500, 0, false );  -- ������/������ ���� ������
	
	STATE:SetCoolTime( 1500 );				-- ����� �ٽ� ���� ���Խ� ���� �ɸ��� �ð� ( ��Ÿ�� ) 
	
	local range = WEAPON:GetRange();
	
	
	
	Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK4,90, Power*0.5, AddtionalPower );
    Attack1:InitAttack2( MAKECYLINDER( MAKEVECTOR3(0.0, 200.0, 0.0), 340, range*1.2 ), 1, 1, false  ); -- 150,400, 1.2     
	Attack1:AddBlowCondition( 1450, 2800 ); 
	AddAttack( ATTACKS, Attack1 );
   
	-- STATE:SetDrop( 500, MAKEVECTOR3( 0, -10000, 0 ) );
	--setdrop : ���� ���� �� �����ִ� ü���ð�
	--MAKEVECTOR3 : �����ϸ鼭 �������� �Ÿ�(x,y,z)	
		
end





--[[  ������� �ʾ����� ������ ��ũ��Ʈ
	_STATE:SetHitStopInTrans( 400, 670 ); 400~670���� �ణ �����̰� ���� �� �ִϸ��̼��� ��� �ȴ�
	_Attack1:SetCameraShakeEnable( true, true, 0 ); --ī�޶���ŷ( ��Ŀ��������, �����ΰ�, �غ�ð� );
    _Attack1:SetCameraShakeSetFactor1( 200, 50, 20 ); --ī�޶���ŷ ( ����ð�, ȸ���ð�, Ȯ�� );
    _Attack1:SetCameraShakeSetFactor2( 200, 25, 2000, 3000 );  -- ( ���ν��ǵ�, ���ν��ǵ�, �ּҰŸ�, �ִ�Ÿ� );  
	_Attack1:SetCritical( 1.5, 10 ); ���� ũ��Ƽ�� --(����, Ȯ��);
	]]--
	