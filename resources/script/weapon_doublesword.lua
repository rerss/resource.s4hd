require "Resources/Script/ActorStates_Constants.lua"

-------------------------------------------------------------------------------
--[[
	�⺻ DoubleSwordJumpDash ����
	InitLua����
	std::string& EffectFile					::	���°� ���ɶ� ���� ����Ʈ �̸�( ���� ������� ���� )
	std::string& SoundFile					::	���°� ���ɶ� ���� ���� �̸�( ���� ������� ���� )
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	u32 uiMinimumSceneUpdateTime		::	���� ���� update�ϴ� �ð�(frame) �ַ� 40�� �����ϰ� ����
	bool bOnlyVStateNormal				::	���� ���°� �����ÿ��� ��밡�������� ���θ� ������ ( true = �����ÿ� ������ �����ϰų� ���尡 ���� , false = ������ ��� �Ұ� )
]]--
-------------------------------------------------------------------------------
--���� ����
function StandardDoubleSwordJumpDash(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetDrop( 500, MAKEVECTOR3( 0, -10000, 0 ) );
	STATE:SetStealthCancel( true );
	STATE:SetMoveBoxMultiplier( 1.0 );
	STATE:SetHitStop( 210, 310 ) ;
	STATE:SetCheckChargeAttack( false ) ;
	STATE:InitLua( "", "", 600, 600, 40, false, 0 );
	
	local range = WEAPON:GetRange();
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_JUMPDASH, 210, Power+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,0,-100), MAKEVECTOR3(0,0,-1), range*1.5, range*1.5, range*1.5 ), 1, 1, false  ); --MAKEVECTOR3(0,-45,-100)       
    Attack1:AddBlowCondition( 1500, 2000 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 150, 50, 60 );
    Attack1:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
    Attack1:SetCameraShakeWhenSuccess( true );    
    AddAttack( ATTACKS, Attack1 );

end





-------------------------------------------------------------------------------
--[[
	�⺻ DoubleSwordAfterDash1 ����
	InitLua����
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	u32 uiMinimumSceneUpdateTime		::	���� ���� update�ϴ� �ð�(frame) �ַ� 40�� �����ϰ� ����
	bool bOnlyVStateNormal				::	���� ���°� �����ÿ��� ��밡�������� ���θ� ������ ( true = �����ÿ� ������ �����ϰų� ���尡 ���� , false = ������ ��� �Ұ� )
]]--
-------------------------------------------------------------------------------
--ù ��Ÿ ���� 2Ÿ ����
function StandardDoubleSwordAfterDash1(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 1.7 );
	STATE:SetMoveStopWhenDamage( true );
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 300, 500 );	
	--	STATE:SetHitStop( 580, 680 ) ;
	STATE:InitLua( 800, 150, 40, true );
	
	local range = WEAPON:GetRange();
	
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK1, 100, (Power*0.5)+AdditionalPower, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.8, range*0.5, range*0.7 ), 1, 1, false  );     
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack1:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
    Attack1:SetCameraShakeWhenSuccess( true );    
    AddAttack( ATTACKS, Attack1 );
    
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK1, 350, Power+AdditionalPower, AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.8, range*0.5, range*1.4 ), 1, 1, false  );       
    Attack2:AddPushCondition( 150, 2000, -5000 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
    Attack2:SetCameraShakeWhenSuccess( true );    
    AddAttack( ATTACKS, Attack2 );


end





-------------------------------------------------------------------------------
--[[
	�⺻ DoubleSwordAfterDash3 ����
	InitLua����
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	u32 uiMinimumSceneUpdateTime		::	���� ���� update�ϴ� �ð�(frame) �ַ� 40�� �����ϰ� ����
	bool bOnlyVStateNormal				::	���� ���°� �����ÿ��� ��밡�������� ���θ� ������ ( true = �����ÿ� ������ �����ϰų� ���尡 ���� , false = ������ ��� �Ұ� )
]]--
-------------------------------------------------------------------------------
--3 ��Ÿ
function StandardDoubleSwordAfterDash3(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveBoxMultiplier( 1.0 );	
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 510, 610 ) ;
	--STATE:EnableCameraShake( true, false, 610 );
	STATE:EnableCameraShake( true, false, 260 );
	STATE:SetCameraShakeFactor1( 250, 50, 50 );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );
	
	STATE:InitLua( 800, 300, 40, true );
	
	local range = WEAPON:GetRange();
    
    Attack1 = CreateCAttack();
    Attack1:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK3, 50, (Power*0.4), AddtionalPower );
	--Attack1:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK3, 270, Power, AddtionalPower );
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.8, range*0.5, range*1.0 ), 1, 1, false  ); 
	Attack1:SetCritical( 2, 20 );
	Attack1:AddPushCondition( 150, 2000, -5000 );
	--Attack2:AddBlowCondition( 3000, 2000 );
    Attack1:SetCameraShakeEnable( true, true, 0 );
    Attack1:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack1:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
    Attack1:SetCameraShakeWhenSuccess( true );    
    AddAttack( ATTACKS, Attack1 );  
	
	Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK3, 400, (Power*0.4), AddtionalPower );
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,200), MAKEVECTOR3(0,0,-1), range*0.8, range*0.5, range*1.0 ), 1, 1, false  );       
    Attack2:AddPushCondition( 150, 2000, -5000 );
	Attack2:SetCritical( 2, 20 );
    Attack2:SetCameraShakeEnable( true, true, 0 );
    Attack2:SetCameraShakeSetFactor1( 100, 50, 20 );
    Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
    Attack2:SetCameraShakeWhenSuccess( true );    
    AddAttack( ATTACKS, Attack2 );

end





-------------------------------------------------------------------------------
--[[
	�⺻ DoubleSwordGatherGuage ����
	InitLua����
	u32 uiMinimumSceneUpdateTime		::	���� ���� update�ϴ� �ð�(frame) �ַ� 40�� �����ϰ� ����
	u32 uiLowerPartBeginTime				::	��ü �ִϸ��̼� �ð�( ����ü�� �ϳ���� �����ص� �ǹ̾��� )
	u32 uiAttackDelay						::	������ ������ �����Ͻ� ������ �����̸� �ִ� �κ�
	bool bOnlyVStateNormal				::	���� ���°� �����ÿ��� ��밡�������� ���θ� ������ ( true = �����ÿ� ������ �����ϰų� ���尡 ���� , false = ������ ��� �Ұ� )
	bool bEnableInputJump				::	���� ���¿��� ������ ���������� ���� ����( true = ���� ����, false = ���� �Ұ��� )
	u32 uiWaitInput
	
	InitLuaNoInputSecond����
	u32 uiWaitTime						::	���� ���¿����� max charge time
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	
	InitLuaInputSecond����
	u32 uiWaitTime						::	���� ���¿����� max charge time
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	string& strFirstBone					::	�ְ˿� ���� ����Ʈ�� ��ġ(bone) => �ְ��� ���� �ΰ��� ����Ʈ�� �پ�����
	string& strSecondBone				::	�ְ˿� ���� ����Ʈ�� ��ġ(bone) => �ְ��� ���� �ΰ��� ����Ʈ�� �پ�����
]]--
-------------------------------------------------------------------------------
--���� ���� ����
function StandardDoubleSwordGatherGuage(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveSpeedRate( 0.7 );	
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 150, 300 ) ;
	STATE:SetMoveBoxMultiplier( 2.0 );	

	--[[ ���� ���·� ���� �ִ� �ּ� sp ���� ]]--
	STATE:SetStateMinSp( 0 );
	
	STATE:SetChargeTimer( false );
	
	-- ������ ���ڰ� 3 & initlua 3��° ���ڰ��� InitLuaInputSecond ����° ���ڰ� �����ֱ�. - �ٷγ���.
	STATE:InitLua( 40, 0, 0, false, true, 3 );
	STATE:InitLuaInputSecond( 0, 0, 0, "R_Hand_Dummy", "L_Hand_Dummy" );

end







-------------------------------------------------------------------------------
--[[
	�⺻ DoubleSwordAfterDash4 ����
	InitLua����
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	u32 uiMinimumSceneUpdateTime		::	���� ���� update�ϴ� �ð�(frame) �ַ� 40�� �����ϰ� ����
	bool bOnlyVStateNormal				::	���� ���°� �����ÿ��� ��밡�������� ���θ� ������ ( true = �����ÿ� ������ �����ϰų� ���尡 ���� , false = ������ ��� �Ұ� )
]]--
-------------------------------------------------------------------------------
--���� ����
function StandardDoubleSwordAfterDash4(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetDrop( 400, MAKEVECTOR3( 0, -10000, 0 ) );
	STATE:SetMoveBoxMultiplier( 1.0 );	
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 600, 700 ) ;
	STATE:SetCheckChargeAttack( true ) ;
	STATE:SetSettingChargeTime( true ) ;
	STATE:EnableCameraShake( true, false, 560 );
	STATE:SetCameraShakeFactor1( 300, 50, 60 );
	STATE:SetCameraShakeFactor2( 60, 0, 2000, 3000 );
		
	--[[ ���� �ְ˿��� ����� �Ҹ� sp ���� ]]--
	STATE:SetSpendSp( 30 );							
	
	STATE:InitLua( "", "", 800, 1000, 40, false , 2000 );
	
	local range = WEAPON:GetRange();
	
    Attack1 = CreateCAttack();
	
    Attack1:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK4, 600, Power+AdditionalPower, AddtionalPower ); --power �� ���� �ȵ�
    Attack1:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*1.2, range*1.1, range*1.6 ), 1, 1, false  );        
    --Attack1:AddPushCondition( 100, 2000, -5000 ); 
	Attack1:AddBlowCondition( 1500, 900 );
	Attack1:SetFullCharge( false );
    AddAttack( ATTACKS, Attack1 );  
	
    Attack2 = CreateCAttack();
    Attack2:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK4, 600, Power+AdditionalPower, AddtionalPower ); --power �� ���� �ȵ�
    Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,300,-100), MAKEVECTOR3(0,0,-1), range*1.6, range*1.4, range*1.8 ), 1, 1, false  );         
	Attack2:AddBlowCondition( 3000, 1800 );
	Attack2:SetFullCharge( true );
    AddAttack( ATTACKS, Attack2 );  
	
	-- STATE:SetMaxChargeDelayTime(20000); //�ش� �Լ��� �������� �ʾұ� ������ ������ ���� ���� �� ���� �߻� �̿� �ּ� ó�� ���� (2017/02/18)
	end


-------------------------------------------------------------------------------
--[[
	�⺻ DoubleSwordAfterDash5 ����
	InitLua����
	u32 uiMinimumSceneUpdateTime		::	���� ���� update�ϴ� �ð�(frame) �ַ� 40�� �����ϰ� ����
	u32 uiLowerPartBeginTime				::	��ü �ִϸ��̼� �ð�( ����ü�� �ϳ���� �����ص� �ǹ̾��� )
	u32 uiAttackDelay						::	������ ������ �����Ͻ� ������ �����̸� �ִ� �κ�
	bool bOnlyVStateNormal				::	���� ���°� �����ÿ��� ��밡�������� ���θ� ������ ( true = �����ÿ� ������ �����ϰų� ���尡 ���� , false = ������ ��� �Ұ� )
	bool bEnableInputJump				::	���� ���¿��� ������ ���������� ���� ����( true = ���� ����, false = ���� �Ұ��� )
	u32 uiWaitInput						::	���� ���ο��� ����ϴ� Ư����( ���� !! �����Ǿ��� ���� �����ϸ� �ʵ˴ϴ�. )
	
	InitLuaNoInputSecond����
	u32 uiWaitTime						::	���� ���¿����� max charge time
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	
	InitLuaInputSecond����
	u32 uiWaitTime						::	���� ���¿����� max charge time
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	string& strFirstBone					::	�ְ˿� ���� ����Ʈ�� ��ġ(bone) => �ְ��� ���� �ΰ��� ����Ʈ�� �پ�����
	string& strSecondBone				::	�ְ˿� ���� ����Ʈ�� ��ġ(bone) => �ְ��� ���� �ΰ��� ����Ʈ�� �پ�����
]]--
-------------------------------------------------------------------------------
--���� "����" ���� ����
function StandardDoubleSwordAfterDash5(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	STATE:SetMoveSpeedRate( 0.7 );	
	STATE:SetStealthCancel( true );
	STATE:SetHitStop( 150, 300 ) ;
	STATE:SetMoveBoxMultiplier( 2.0 );	
	
	--[[ ���� ���·� ���� �ִ� �ּ� sp ���� ]]--
	STATE:SetStateMinSp( 30 );
	STATE:SetChargeTimer( true );
	--���� �������� ���� (2017 5�� ��ġ)
	STATE:InitLua( 40, 0, 2000, false, true, 0	);
	STATE:InitLuaInputSecond( 2000, 0, 0, "R_Hand_Dummy", "L_Hand_Dummy" );
	
	-- Ǯ���� �� �����ð� ���� (����: 20170208 / ���� 2�ʿ��� 20�ʷ� ���� �뷱�� ����)
	--���� �������� ���� (2017 5�� ��ġ)
	-- STATE:SetFullChargeWaitDelay( 20000 );
end






















-------------------------------------------------------------------------------
--[[
	�⺻ DoubleSwordAfterDash2 ����
	InitLua����
	u32 uiNormalTime						::	���� ������ �ֹ̳��̼� �÷��� �ð�
	u32 uiDelayTime						::	NormalTime�� ������ �������� ������ ���� �ð�
	u32 uiMinimumSceneUpdateTime		::	���� ���� update�ϴ� �ð�(frame) �ַ� 40�� �����ϰ� ����
	bool bOnlyVStateNormal				::	���� ���°� �����ÿ��� ��밡�������� ���θ� ������ ( true = �����ÿ� ������ �����ϰų� ���尡 ���� , false = ������ ��� �Ұ� )
]]--
-------------------------------------------------------------------------------
--2 ��Ÿ
function StandardDoubleSwordAfterDash2(  OneShotTime, Power, Accuracy, AdditionalPower )
	
	-- STATE:SetMoveBoxMultiplier( 1.0 );	
	-- STATE:SetStealthCancel( true );
	-- STATE:SetHitStop( 410, 510 ) ;
	-- STATE:InitLua( 1000, 400, 40, true );
	
	-- local range = WEAPON:GetRange();
	
	-- Attack1 = CreateCAttack();
    -- Attack1:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_CRITICAL, 410, Power+AdditionalPower, AddtionalPower );
    -- Attack1:InitAttack2( MAKERAY( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range - 100 ), 1, 1, false  );
    -- Attack1:SetAlwaysCritical( true );
    -- AddAttack( ATTACKS, Attack1 );
    
    -- Attack2 = CreateCAttack();
    -- Attack2:InitAttack1( WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK2, 410, Power+AdditionalPower, AddtionalPower );
    -- Attack2:InitAttack2( MAKEBOX( MAKEVECTOR3(0,250,-100), MAKEVECTOR3(0,0,-1), range*0.8, range*0.5, range*1.2 ), 1, 1, false  );        
	-- --Attack2:InitAttack2( MAKEFAN( MAKEVECTOR3(0,140,-50), MAKEVECTOR2(0,-1), range*0.7, range*0.25, range*0.8, 120 ), 1, 1, false  );
    -- Attack2:AddPushCondition( 100, 2000, -3000 );
    -- Attack2:SetCameraShakeEnable( true, true, 0 );
    -- Attack2:SetCameraShakeSetFactor1( 100, 50, 20 );
    -- Attack2:SetCameraShakeSetFactor2( 60.0, 0.0, 2000.0, 3000.0 );
    -- Attack2:SetCameraShakeWhenSuccess( true );    
    -- AddAttack( ATTACKS, Attack2 );  

end


